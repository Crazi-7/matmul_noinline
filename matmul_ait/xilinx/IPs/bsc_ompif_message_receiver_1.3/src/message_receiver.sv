/*********************************************************************************/
/*  (C) Copyright 2017-2026 Barcelona Supercomputing Center                      */
/*                          Centro Nacional de Supercomputacion                  */
/*                                                                               */
/*  This source describes Open Hardware and is licensed under the CERN-OHL-W v2  */
/*  You may redistribute and modify this documentation and make products         */
/*  using it under the terms of the CERN-OHL-W v2 (https://cern.ch/cern-ohl).    */
/*  This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED             */
/*  WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY                 */
/*  AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN-OHL-W v2           */
/*  for applicable conditions.                                                   */
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/message_receiver    */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on       */
/*  these sources, You must maintain the Source Location visible on the          */
/*  external case of the White Rabbit switch or other product you make using     */
/*  this documentation.                                                          */
/*                                                                               */
/*********************************************************************************/

module message_receiver #(
    parameter MAX_DEVICES = 63,
    parameter STORE_PTID = 1,
    parameter AXI_ADDR_WIDTH = 32,
    parameter AXI_DATA_WIDTH = 0,
    parameter MSG_DATA_SIZE = 1408,
    parameter MBUFFER_ADDR_WIDTH = 0,
    parameter [AXI_ADDR_WIDTH-MBUFFER_ADDR_WIDTH-1:0] MBUFFER_ADDR_PREFIX = 0,
    parameter MAX_OUTSTANDING_WRITES = 0,
    localparam CLUST_BITS = $clog2(MAX_DEVICES)
) (
    input clk,
    input rstn,
    input [CLUST_BITS-1:0] cluster_size,
    // Msg input AXI-stream
    input msg_in_tvalid,
    output msg_in_tready,
    input [AXI_DATA_WIDTH-1:0] msg_in_tdata,
    input [AXI_DATA_WIDTH/8-1:0] msg_in_tkeep,
    input msg_in_tlast,
    // ---- Memcpy AXI4 mater interface begin ----
    //AR
    output memcpy_arvalid,
    input memcpy_arready,
    output logic [AXI_ADDR_WIDTH-1:0] memcpy_araddr,
    output [7:0] memcpy_arlen,
    output [2:0] memcpy_arsize,
    output [1:0] memcpy_arburst,
    output [3:0] memcpy_arcache,
    //R
    input memcpy_rvalid,
    output memcpy_rready,
    input [AXI_DATA_WIDTH-1:0] memcpy_rdata,
    input memcpy_rlast,
    input [1:0] memcpy_rresp,
    //AW
    output memcpy_awvalid,
    input memcpy_awready,
    output logic [AXI_ADDR_WIDTH-1:0] memcpy_awaddr,
    output [7:0] memcpy_awlen,
    output [2:0] memcpy_awsize,
    output [1:0] memcpy_awburst,
    output [3:0] memcpy_awcache,
    //W
    output memcpy_wvalid,
    input memcpy_wready,
    output [AXI_DATA_WIDTH-1:0] memcpy_wdata,
    output [AXI_DATA_WIDTH/8-1:0] memcpy_wstrb,
    output memcpy_wlast,
    //B
    input memcpy_bvalid,
    output memcpy_bready,
    input [1:0] memcpy_bresp,
    // ---- Memcpy AXI4 mater interface end ----
    // ---- Buffer write AXI4 mater interface end ----
    //AW
    output bufwr_awvalid,
    input bufwr_awready,
    output logic [AXI_ADDR_WIDTH-1:0] bufwr_awaddr,
    output [7:0] bufwr_awlen,
    output [2:0] bufwr_awsize,
    output [1:0] bufwr_awburst,
    output [3:0] bufwr_awcache,
    //W
    output bufwr_wvalid,
    input bufwr_wready,
    output [AXI_DATA_WIDTH-1:0] bufwr_wdata,
    output [AXI_DATA_WIDTH/8-1:0] bufwr_wstrb,
    output bufwr_wlast,
    //B
    input bufwr_bvalid,
    output bufwr_bready,
    input [1:0] bufwr_bresp,
    // ---- Buffer write AXI4 mater interface end ----
    //Command AXI-stream slave interface
    input siCmd_tvalid,
    output logic siCmd_tready,
    input [63:0] siCmd_tdata,
    //Command AXI-stream master interface
    output logic soCmd_tvalid,
    input soCmd_tready,
    output logic [63:0] soCmd_tdata,
    output soCmd_tlast,
    // ---- AXI4 Lite slave interface begin ----
    //AW
    input cntrl_arvalid,
    output cntrl_arready,
    input [2:0] cntrl_arprot,
    input [13:0] cntrl_araddr,
    //R
    output cntrl_rvalid,
    input cntrl_rready,
    output [31:0] cntrl_rdata,
    output [1:0] cntrl_rresp
    // ---- AXI4 Lite slave interface end ----
);

    import OmpifPkg::*;
    import MsgRecvConstants::*;

    localparam CONST_64 = {{MBUFFER_ADDR_WIDTH-7{1'b0}}, 7'd64};
    localparam MSG_DATA_WIDTH = $clog2(MSG_DATA_SIZE+1);
    localparam MEM_SLOT_SIZE = MSG_DATA_SIZE + 64;
    localparam [MBUFFER_ADDR_WIDTH-1:0] LAST_SLOT = MEM_SLOT_SIZE*(2**MBUFFER_ADDR_WIDTH/MEM_SLOT_SIZE - 1);
    localparam OUTSTANDING_BITS = $clog2(MAX_OUTSTANDING_WRITES);

    typedef enum bit [4:0] {
        IDLE,
        READ_TID,
        READ_PTID,
        READ_COMMAND_FLAGS,
        READ_COMMAND,
        READ_SIZE_FLAGS,
        READ_SIZE,
        CHECK_COMMAND,
        WAIT_INCOMING_MESSAGE,
        WAIT_ADDR_CALC,
        WAIT_READ_FRONT_HEADER,
        WAIT_WRITE_FRONT_HEADER,
        WAIT_MEMCPY,
        CHECK_FINALIZATION,
        WRITE_FINISH,
        WRITE_TID,
        WRITE_PTID
    } State;

    (* fsm_encoding = "one_hot" *)
    State state;

    AXI4 #(.AXI_ADDR_WIDTH(AXI_ADDR_WIDTH), .AXI_DATA_WIDTH(AXI_DATA_WIDTH)) memcpy();

    reg [63:0] tid;
    reg [63:0] ptid;

    reg [MBUFFER_ADDR_WIDTH:0] bufrd_addr_cr; // Current buffer read pointer
    reg [MBUFFER_ADDR_WIDTH-1:0] bufrd_addr_lt; // Last buffer read pointer
    wire [MBUFFER_ADDR_WIDTH:0] next_bufrd_addr;
    wire [MBUFFER_ADDR_WIDTH-1:0] queue_front_data;
    reg found_msg_mismatch;
    wire msg_match;

    reg cmd_type;
    reg [AXI_ADDR_WIDTH-1:0] addr;
    reg [7:0] tag;
    reg [CLUST_BITS-1:0] src_rank;
    wire [CLUST_BITS-1:0] act_clust_size;
    reg [CLUST_BITS-1:0] clust_size_others;
    reg [31:0] size;
    reg [31:0] size_received;
    wire [31:0] total_size;

    reg start_mem_op;
    reg [AXI_ADDR_WIDTH-1:0] src_addr;
    reg [AXI_ADDR_WIDTH-1:0] dst_addr;
    reg [MSG_DATA_WIDTH-1:0] mem_msg_size;
    reg [15:0] mem_msg_seq;
    reg [CLUST_BITS-1:0] mem_msg_src_rank;
    wire mem_op_finished;
    wire [63:0] header;
    MemCmdType mem_cmd_type;

    reg start_addr_calc;
    reg address_calculated;
    wire [AXI_ADDR_WIDTH-1:0] result_addr;
    wire addr_valid;

    wire buffer_overflow_error;
    wire [MBUFFER_ADDR_WIDTH-1:0] bufwr_addr_cf;
    wire [MBUFFER_ADDR_WIDTH:0] bufwr_addr_cr;

    total_size_calc #(
        .CLUST_BITS(CLUST_BITS)
    ) total_size_calc_I (
        .*
    );

    memory_handler #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .MSG_DATA_SIZE(MSG_DATA_SIZE)
    ) memory_handler_I (
        .clk(clk),
        .rstn(rstn),
        .start(start_mem_op),
        .finished(mem_op_finished),
        .src_addr(src_addr),
        .dst_addr(dst_addr),
        .size(mem_msg_size),
        .header(header),
        .cmd(mem_cmd_type),
        .memcpy(memcpy)
    );

    offset_calculator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .CLUST_BITS(CLUST_BITS),
        .MSG_DATA_SIZE(MSG_DATA_SIZE)
    ) offset_calculator_I (
        .clk(clk),
        .start(start_addr_calc),
        .addr_valid(addr_valid),
        .result_addr(result_addr),
        .base_addr(addr),
        .src_rank(cmd_type == RECV ? {CLUST_BITS{1'b0}} : mem_msg_src_rank),
        .msg_seq(mem_msg_seq),
        .size(size)
    );

    msg_recv_bufwr #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .MSG_DATA_SIZE(MSG_DATA_SIZE),
        .CLUST_BITS(CLUST_BITS),
        .MBUFFER_ADDR_WIDTH(MBUFFER_ADDR_WIDTH),
        .MBUFFER_ADDR_PREFIX(MBUFFER_ADDR_PREFIX),
        .MAX_OUTSTANDING_WRITES(MAX_OUTSTANDING_WRITES)
    ) msg_recv_bufwr_I (
        .clk(clk),
        .rstn(rstn),
        .msg_in_tvalid(msg_in_tvalid),
        .msg_in_tready(msg_in_tready),
        .msg_in_tdata(msg_in_tdata),
        .msg_in_tkeep(msg_in_tkeep),
        .msg_in_tlast(msg_in_tlast),
        .bufwr_awvalid(bufwr_awvalid),
        .bufwr_awready(bufwr_awready),
        .bufwr_awaddr(bufwr_awaddr),
        .bufwr_awlen(bufwr_awlen),
        .bufwr_awsize(bufwr_awsize),
        .bufwr_awburst(bufwr_awburst),
        .bufwr_awcache(bufwr_awcache),
        .bufwr_wvalid(bufwr_wvalid),
        .bufwr_wready(bufwr_wready),
        .bufwr_wdata(bufwr_wdata),
        .bufwr_wstrb(bufwr_wstrb),
        .bufwr_wlast(bufwr_wlast),
        .bufwr_bvalid(bufwr_bvalid),
        .bufwr_bready(bufwr_bready),
        .bufwr_bresp(bufwr_bresp),
        .bufwr_addr_cf(bufwr_addr_cf),
        .bufwr_addr_cr(bufwr_addr_cr),
        .bufrd_addr_cr(bufrd_addr_cr),
        .buffer_overflow_error(buffer_overflow_error)
    );

    message_receiver_cntrl_intf #(
        .MBUFFER_ADDR_WIDTH(MBUFFER_ADDR_WIDTH),
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .CLUST_BITS(CLUST_BITS)
    ) cntr_intf_I (
        .clk(clk),
        .rstn(rstn),
        .bufrd_addr_cr(bufrd_addr_cr),
        .bufrd_addr_lt(bufrd_addr_lt),
        .bufwr_addr_cr(bufwr_addr_cr),
        .bufwr_addr_cf(bufwr_addr_cf),
        .found_msg_mismatch(found_msg_mismatch),
        .cmd_type(cmd_type),
        .tag(tag),
        .task_addr(addr),
        .src_rank(src_rank),
        .size(size),
        .size_received(size_received),
        .buffer_overflow_error(buffer_overflow_error),
        .cntrl_arvalid(cntrl_arvalid),
        .cntrl_arready(cntrl_arready),
        .cntrl_arprot(cntrl_arprot),
        .cntrl_araddr(cntrl_araddr),
        .cntrl_rvalid(cntrl_rvalid),
        .cntrl_rready(cntrl_rready),
        .cntrl_rdata(cntrl_rdata),
        .cntrl_rresp(cntrl_rresp)
    );

    assign next_bufrd_addr[MBUFFER_ADDR_WIDTH-1:0] = bufrd_addr_lt[MBUFFER_ADDR_WIDTH-1:0] == LAST_SLOT ? {MBUFFER_ADDR_WIDTH{1'b0}} : bufrd_addr_lt[MBUFFER_ADDR_WIDTH-1:0] + MEM_SLOT_SIZE;
    assign next_bufrd_addr[MBUFFER_ADDR_WIDTH] = bufrd_addr_lt[MBUFFER_ADDR_WIDTH-1:0] == LAST_SLOT ? !bufrd_addr_cr[MBUFFER_ADDR_WIDTH] : bufrd_addr_cr[MBUFFER_ADDR_WIDTH];

    assign act_clust_size = cluster_size[CLUST_BITS-1:0];

    assign memcpy_arvalid = memcpy.arvalid;
    assign memcpy.arready = memcpy_arready;
    assign memcpy_arlen = memcpy.arlen;
    assign memcpy_arburst = 2'b01; //INCR burst type
    assign memcpy_arcache = 4'b0010; //Transaction modifiable
    assign memcpy_arsize = $clog2(AXI_DATA_WIDTH/8);
    assign memcpy.rvalid = memcpy_rvalid;
    assign memcpy_rready = memcpy.rready;
    assign memcpy.rdata = memcpy_rdata;
    assign memcpy.rlast = memcpy_rlast;
    assign memcpy.rresp = memcpy_rresp;
    assign memcpy_awvalid = memcpy.awvalid;
    assign memcpy.awready = memcpy_awready;
    assign memcpy_awlen = memcpy.awlen;
    assign memcpy_awburst = 2'b01; //INCR burst type
    assign memcpy_awcache = 4'b0010; //Transaction modifiable
    assign memcpy_awsize = $clog2(AXI_DATA_WIDTH/8);
    assign memcpy_wvalid = memcpy.wvalid;
    assign memcpy.wready = memcpy_wready;
    assign memcpy_wdata = memcpy.wdata;
    assign memcpy_wstrb = memcpy.wstrb;
    assign memcpy_wlast = memcpy.wlast;
    assign memcpy.bvalid = memcpy_bvalid;
    assign memcpy_bready = memcpy.bready;
    assign memcpy.bresp = memcpy_bresp;

    assign msg_match = header[MEM_MSG_VALID_B] == MSG_VALID && (cmd_type == RECVALL || header[MSG_SRC_L +: CLUST_BITS] == src_rank) && header[MSG_TAG_H:MSG_TAG_L] == tag;

    assign soCmd_tlast = STORE_PTID ? state == WRITE_PTID : state == WRITE_TID;

    assign queue_front_data = bufrd_addr_lt + CONST_64;

    always_comb begin
        memcpy_araddr = {MBUFFER_ADDR_PREFIX, memcpy.araddr[MBUFFER_ADDR_WIDTH-1:0]};
        memcpy_awaddr = memcpy.awaddr;

        case (mem_cmd_type)

            WRITE_HEADER_CMD: begin
                memcpy_awaddr = {MBUFFER_ADDR_PREFIX, memcpy.awaddr[MBUFFER_ADDR_WIDTH-1:0]};
            end

            default: begin end

        endcase
    end

    always_comb begin

        siCmd_tready = 1'b0;
        soCmd_tvalid = 1'b0;
        soCmd_tdata = tid;

        case (state)

            IDLE: begin
                siCmd_tready = 1'b1;
            end

            READ_TID: begin
                siCmd_tready = 1'b1;
            end

            READ_PTID: begin
                siCmd_tready = 1'b1;
            end

            READ_COMMAND_FLAGS: begin
                siCmd_tready = 1'b1;
            end

            READ_COMMAND: begin
                siCmd_tready = 1'b1;
            end

            READ_SIZE_FLAGS: begin
                siCmd_tready = 1'b1;
            end

            READ_SIZE: begin
                siCmd_tready = 1'b1;
            end

            WRITE_FINISH: begin
                soCmd_tvalid = 1'b1;
                soCmd_tdata[7:0] = 8'h03;
            end

            WRITE_TID: begin
                soCmd_tvalid = 1'b1;
            end

            WRITE_PTID: begin
                soCmd_tvalid = 1'b1;
                soCmd_tdata = ptid;
            end

            default: begin
            end
        endcase

    end

    always_ff @(posedge clk) begin

        start_addr_calc <= 1'b0;
        start_mem_op <= 1'b0;
        clust_size_others <= act_clust_size-{{CLUST_BITS-1{1'b0}}, 1'b1};

        case (state)

            IDLE: begin
                size_received <= 32'd0;
                found_msg_mismatch <= 1'b0;
                if (siCmd_tvalid) begin
                    state <= READ_TID;
                end
            end

            READ_TID: begin
                tid <= siCmd_tdata;
                if (siCmd_tvalid) begin
                    state <= STORE_PTID ? READ_PTID : READ_COMMAND_FLAGS;
                end
            end

            READ_PTID: begin
                ptid <= siCmd_tdata;
                if (siCmd_tvalid) begin
                    state <= READ_COMMAND_FLAGS;
                end
            end

            READ_COMMAND_FLAGS: begin
                if (siCmd_tvalid) begin
                    state <= READ_COMMAND;
                end
            end

            READ_COMMAND: begin
                cmd_type <= siCmd_tdata[CMD_TYPE_L];
                tag <= siCmd_tdata[TAG_H:TAG_L];
                src_rank <= siCmd_tdata[SRC_RANK_L +: CLUST_BITS];
                addr <= siCmd_tdata[ADDR_L +: AXI_ADDR_WIDTH];
                if (siCmd_tvalid) begin
                    state <= READ_SIZE_FLAGS;
                end
            end

            READ_SIZE_FLAGS: begin
                if (siCmd_tvalid) begin
                    state <= READ_SIZE;
                end
            end

            READ_SIZE: begin
                size <= siCmd_tdata[SIZE_H:SIZE_L];
                if (siCmd_tvalid) begin
                    state <= CHECK_COMMAND;
                end
            end

            CHECK_COMMAND: begin
                if (act_clust_size == {{CLUST_BITS-1{1'b0}}, 1'b1}) begin
                    state <= WRITE_FINISH;
                end else begin
                    state <= WAIT_INCOMING_MESSAGE;
                end
            end

            WAIT_INCOMING_MESSAGE: begin
                src_addr <= {MBUFFER_ADDR_PREFIX, bufrd_addr_lt};
                mem_cmd_type <= READ_HEADER_CMD;
                if (bufrd_addr_lt != bufwr_addr_cf) begin
                    start_mem_op <= 1'b1;
                    state <= WAIT_READ_FRONT_HEADER;
                end
            end

            WAIT_READ_FRONT_HEADER: begin
                dst_addr <= {MBUFFER_ADDR_PREFIX, bufrd_addr_lt};
                mem_msg_size <= header[MSG_SIZE_L +: MSG_DATA_WIDTH];
                mem_msg_seq <= header[MSG_SEQ_H:MSG_SEQ_L];
                mem_msg_src_rank <= header[MSG_SRC_L +: CLUST_BITS];
                address_calculated <= 1'b0;
                if (mem_op_finished) begin
                    mem_cmd_type <= WRITE_HEADER_CMD;
                    src_addr <= {MBUFFER_ADDR_PREFIX, queue_front_data};
                    //hit
                    if (msg_match) begin
                        start_addr_calc <= 1'b1;
                        //Don't invalidate the header if a mismatch hasn't been found, in this case we will
                        //not check this slot again
                        if (found_msg_mismatch) begin
                            start_mem_op <= 1'b1;
                            state <= WAIT_WRITE_FRONT_HEADER;
                        end else begin
                            state <= WAIT_ADDR_CALC;
                        end
                    end
                    //miss but message is valid, store the first valid position to search again from here in the future
                    else if (header[MEM_MSG_VALID_B] == MSG_VALID && !found_msg_mismatch) begin
                        found_msg_mismatch <= 1'b1;
                    end
                    //miss, continue searching while there is still data in the queue
                    if (!msg_match) begin
                        bufrd_addr_lt <= next_bufrd_addr[MBUFFER_ADDR_WIDTH-1:0];
                        if (!found_msg_mismatch && header[MEM_MSG_VALID_B] == MSG_READ) begin
                            bufrd_addr_cr <= next_bufrd_addr;
                        end
                        state <= WAIT_INCOMING_MESSAGE;
                    end
                end
            end

            WAIT_WRITE_FRONT_HEADER: begin
                src_addr <= {MBUFFER_ADDR_PREFIX, queue_front_data};
                if (addr_valid) begin
                    dst_addr <= result_addr;
                    address_calculated <= 1'b1;
                end
                if (mem_op_finished) begin
                    mem_cmd_type <= MEMCPY_CMD;
                    if (!addr_valid && !address_calculated) begin
                        state <= WAIT_ADDR_CALC;
                    end else begin
                        start_mem_op <= 1'b1;
                        state <= WAIT_MEMCPY;
                    end
                end
            end

            WAIT_ADDR_CALC: begin
                src_addr <= {MBUFFER_ADDR_PREFIX, queue_front_data};
                dst_addr <= result_addr;
                mem_cmd_type <= MEMCPY_CMD;
                if (addr_valid) begin
                    start_mem_op <= 1'b1;
                    state <= WAIT_MEMCPY;
                end
            end

            WAIT_MEMCPY: begin
                if (mem_op_finished) begin
                    size_received <= size_received + {{32-MSG_DATA_WIDTH{1'b0}}, mem_msg_size};
                    bufrd_addr_lt <= next_bufrd_addr[MBUFFER_ADDR_WIDTH-1:0];
                    if (!found_msg_mismatch) begin
                        bufrd_addr_cr <= next_bufrd_addr;
                    end
                    state <= CHECK_FINALIZATION;
                end
            end

            CHECK_FINALIZATION: begin
                if ((cmd_type == RECVALL && size_received == total_size) ||
                (cmd_type == RECV && size_received == size)) begin
                    state <= WRITE_FINISH;
                end else begin
                    state <= WAIT_INCOMING_MESSAGE;
                end
            end

            WRITE_FINISH: begin
                if (found_msg_mismatch) begin
                    bufrd_addr_lt <= bufrd_addr_cr[MBUFFER_ADDR_WIDTH-1:0];
                end
                if (soCmd_tready) begin
                    state <= WRITE_TID;
                end
            end

            WRITE_TID: begin
                if (soCmd_tready) begin
                    state <= STORE_PTID ? WRITE_PTID : IDLE;
                end
            end

            WRITE_PTID: begin
                if (soCmd_tready) begin
                    state <= IDLE;
                end
            end

        endcase

        if (!rstn) begin
            bufrd_addr_cr <= {MBUFFER_ADDR_WIDTH+1{1'b0}};
            bufrd_addr_lt <= {MBUFFER_ADDR_WIDTH{1'b0}};
            state <= IDLE;
        end
    end

endmodule

//The single line in the always_ff block could go in the main module,
//but if I don't do this, vivado synthesis doesn't infer the FSM, don't ask me why
module total_size_calc #(
    parameter CLUST_BITS = 6
) (input clk, input [31:0] size, input [CLUST_BITS-1:0] clust_size_others, output reg [31:0] total_size);

    always_ff @(posedge clk) begin
        total_size <= size*clust_size_others;
    end

endmodule
