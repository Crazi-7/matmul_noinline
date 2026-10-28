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
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/message_sender      */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on       */
/*  these sources, You must maintain the Source Location visible on the          */
/*  external case of the White Rabbit switch or other product you make using     */
/*  this documentation.                                                          */
/*                                                                               */
/*********************************************************************************/

module message_sender #(
    parameter MAX_DEVICES = 63,
    parameter STORE_PTID = 1,
    parameter MAX_TIMEOUT = 0,
    parameter MAX_TIMEOUT_RAND_RANGE = 0,
    parameter DEF_TIMEOUT = 0,
    parameter DEF_TIMEOUT_RAND_SELECT = 0,
    parameter DEBUG = 0,
    parameter CONTROL_INTF = 0,
    parameter TOTAL_LAT_WIDTH = 64,
    parameter AXI_ADDR_WIDTH = 32,
    parameter AXI_DATA_WIDTH = 0,
    parameter MSG_DATA_SIZE = 1408,
    parameter MAX_RETRIES = 10
) (
    input clk,
    input rstn,
    input [7:0] cluster_size,
    input [7:0] cluster_rank,
    //Memory AXI4 master interface
    //AR
    output moMEM_arvalid,
    input moMEM_arready,
    output [AXI_ADDR_WIDTH-1:0] moMEM_araddr,
    output [7:0] moMEM_arlen,
    output [2:0] moMEM_arsize,
    output [1:0] moMEM_arburst,
    output [3:0] moMEM_arcache,
    //R
    input moMEM_rvalid,
    output moMEM_rready,
    input [AXI_DATA_WIDTH-1:0] moMEM_rdata,
    input moMEM_rlast,
    input [1:0] moMEM_rresp,
    //Command AXI-stream slave interface
    input siCmd_tvalid,
    output logic siCmd_tready,
    input [63:0] siCmd_tdata,
    //Ack AXI-stream slave interface
    input siAck_tvalid,
    output siAck_tready,
    input [AXI_DATA_WIDTH-1:0] siAck_tdata,
    //Command AXI-stream master interface
    output logic soCmd_tvalid,
    input soCmd_tready,
    output logic [63:0] soCmd_tdata,
    output soCmd_tlast,
    //Message AXI-stream master interface
    output soMsg_tvalid,
    input soMsg_tready,
    output [AXI_DATA_WIDTH-1:0] soMsg_tdata,
    output [AXI_DATA_WIDTH/8-1:0] soMsg_tkeep,
    output soMsg_tlast,
    output [7:0] soMsg_tdest,
    //AXI-Lite control interface
    input cntrl_arvalid,
    output cntrl_arready,
    input [2:0] cntrl_arprot,
    input [13:0] cntrl_araddr,
    output cntrl_rvalid,
    input cntrl_rready,
    output [31:0] cntrl_rdata,
    output [1:0] cntrl_rresp,
    input cntrl_awvalid,
    output cntrl_awready,
    input [2:0] cntrl_awprot,
    input [13:0] cntrl_awaddr,
    input cntrl_wvalid,
    output cntrl_wready,
    input [31:0] cntrl_wdata,
    input [3:0] cntrl_wstrb,
    output cntrl_bvalid,
    input cntrl_bready,
    output [1:0] cntrl_bresp
);

    localparam CLUST_BITS = $clog2(MAX_DEVICES+1);
    localparam CLUST_BITS_1 = {{CLUST_BITS-1{1'b0}}, 1'b1};

    AXIStreamAck #(
        .DATA_WIDTH(AXI_DATA_WIDTH)
    ) siAck();
    AXIStreamMsg #(
        .DATA_WIDTH(AXI_DATA_WIDTH)
    ) soMsg();
    AXI4Read #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH))
    moMEM();

    assign moMEM_arvalid = moMEM.arvalid;
    assign moMEM.arready = moMEM_arready;
    assign moMEM_araddr = moMEM.araddr;
    assign moMEM_arlen = moMEM.arlen;
    assign moMEM_arcache = 4'b0010; //transaction modifiable
    assign moMEM_arburst = 2'b01; //INCR burst type
    assign moMEM_arsize = $clog2(AXI_DATA_WIDTH/8);
    assign moMEM.rvalid = moMEM_rvalid;
    assign moMEM_rready = moMEM.rready;
    assign moMEM.rdata = moMEM_rdata;
    assign moMEM.rlast = moMEM_rlast;
    assign moMEM.rresp = moMEM_rresp;

    assign siAck.valid = siAck_tvalid;
    assign siAck_tready = siAck.ready;
    assign siAck.data = siAck_tdata;

    assign soMsg_tvalid = soMsg.valid;
    assign soMsg.ready = soMsg_tready;
    assign soMsg_tdata = soMsg.data;
    assign soMsg_tkeep = soMsg.keep;
    assign soMsg_tlast = soMsg.last;
    assign soMsg_tdest = soMsg.dest;

    import Constants::*;

    typedef enum bit [3:0] {
        IDLE,
        READ_TID,
        READ_PTID,
        READ_COMMAND_FLAGS,
        READ_COMMAND,
        READ_SIZE_FLAGS,
        READ_SIZE,
        CHECK_COMMAND,
        WAIT_SEND,
        WAIT_SENDALL,
        WRITE_FINISH,
        WRITE_TID,
        WRITE_PTID
    } State;

    State state;

    reg [AXI_ADDR_WIDTH-1:0] addr;
    reg [31:0] size;
    reg [CLUST_BITS-1:0] dst_rank;
    reg [0:0] cmd_type;
    reg [63:0] tid;
    reg [63:0] ptid;
    reg [7:0] tag;
    reg send_start;
    wire send_finish;
    wire [CLUST_BITS-1:0] act_clust_size;
    wire [CLUST_BITS-1:0] act_clust_rank;

    wire [31:0] timeout;
    wire [2:0] timeout_rand_select;
    wire [31:0] dbg_max_lat;
    wire [31:0] dbg_min_lat;
    wire [TOTAL_LAT_WIDTH-1:0] dbg_total_lat;
    wire [TOTAL_LAT_WIDTH-1:0] dbg_total_timeout_lat;
    wire [31:0] dbg_total_sends;
    wire [31:0] dbg_unexpected_acks;
    wire [31:0] dbg_total_timeouts;
    wire [31:0] dbg_min_send;
    wire [31:0] dbg_max_send;
    wire [TOTAL_LAT_WIDTH-1:0] dbg_total_issue_read;
    wire [TOTAL_LAT_WIDTH-1:0] dbg_total_wait_data;
    wire [TOTAL_LAT_WIDTH-1:0] dbg_total_send_data;
    wire err_max_retries;

    message_sender_cntrl_intf #(
        .DEF_TIMEOUT(DEF_TIMEOUT),
        .DEF_TIMEOUT_RAND_SELECT(DEF_TIMEOUT_RAND_SELECT),
        .CONTROL_INTF(CONTROL_INTF),
        .TOTAL_LAT_WIDTH(TOTAL_LAT_WIDTH)
    ) control_intf (
        .clk(clk),
        .rstn(rstn),
        .timeout(timeout),
        .timeout_rand_select(timeout_rand_select),
        .dbg_max_lat(dbg_max_lat),
        .dbg_min_lat(dbg_min_lat),
        .dbg_total_lat(dbg_total_lat),
        .dbg_total_timeout_lat(dbg_total_timeout_lat),
        .dbg_total_sends(dbg_total_sends),
        .dbg_unexpected_acks(dbg_unexpected_acks),
        .dbg_total_timeouts(dbg_total_timeouts),
        .dbg_min_send(dbg_min_send),
        .dbg_max_send(dbg_max_send),
        .dbg_total_issue_read(dbg_total_issue_read),
        .dbg_total_wait_data(dbg_total_wait_data),
        .dbg_total_send_data(dbg_total_send_data),
        .err_max_retries(err_max_retries),
        .cntrl_arvalid(cntrl_arvalid),
        .cntrl_arready(cntrl_arready),
        .cntrl_arprot(cntrl_arprot),
        .cntrl_araddr(cntrl_araddr),
        .cntrl_rvalid(cntrl_rvalid),
        .cntrl_rready(cntrl_rready),
        .cntrl_rdata(cntrl_rdata),
        .cntrl_rresp(cntrl_rresp),
        .cntrl_awvalid(cntrl_awvalid),
        .cntrl_awready(cntrl_awready),
        .cntrl_awprot(cntrl_awprot),
        .cntrl_awaddr(cntrl_awaddr),
        .cntrl_wvalid(cntrl_wvalid),
        .cntrl_wready(cntrl_wready),
        .cntrl_wdata(cntrl_wdata),
        .cntrl_wstrb(cntrl_wstrb),
        .cntrl_bvalid(cntrl_bvalid),
        .cntrl_bready(cntrl_bready),
        .cntrl_bresp(cntrl_bresp)
    );

    message_send #(
        .MAX_DEVICES(MAX_DEVICES),
        .MAX_TIMEOUT(MAX_TIMEOUT),
        .MAX_TIMEOUT_RAND_RANGE(MAX_TIMEOUT_RAND_RANGE),
        .DEBUG(DEBUG),
        .TOTAL_LAT_WIDTH(TOTAL_LAT_WIDTH),
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .MSG_DATA_SIZE(MSG_DATA_SIZE),
        .MAX_RETRIES(MAX_RETRIES)
    ) message_send_I (
        .clk(clk),
        .rstn(rstn),
        .start(send_start),
        .cluster_rank(act_clust_rank),
        .finish(send_finish),
        .start_addr(addr),
        .start_size(size),
        .dst_rank(dst_rank),
        .tag(tag),
        .timeout(timeout),
        .timeout_rand_select(timeout_rand_select),
        .dbg_min_send(dbg_min_send),
        .dbg_max_send(dbg_max_send),
        .dbg_total_issue_read(dbg_total_issue_read),
        .dbg_total_wait_data(dbg_total_wait_data),
        .dbg_total_send_data(dbg_total_send_data),
        .dbg_max_lat(dbg_max_lat),
        .dbg_min_lat(dbg_min_lat),
        .dbg_total_lat(dbg_total_lat),
        .dbg_total_timeout_lat(dbg_total_timeout_lat),
        .dbg_total_sends(dbg_total_sends),
        .dbg_unexpected_acks(dbg_unexpected_acks),
        .dbg_total_timeouts(dbg_total_timeouts),
        .err_max_retries(err_max_retries),
        .soMsg(soMsg),
        .siAck(siAck),
        .moMEM(moMEM)
    );

    assign act_clust_size = cluster_size[CLUST_BITS-1:0];
    assign act_clust_rank = cluster_rank[CLUST_BITS-1:0];

    assign soCmd_tlast = STORE_PTID ? state == WRITE_PTID : state == WRITE_TID;

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

        send_start <= 1'b0;

        case (state)

            IDLE: begin
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
                addr <= siCmd_tdata[ADDR_L +: AXI_ADDR_WIDTH];
                dst_rank <= siCmd_tdata[DST_RANK_L +: CLUST_BITS];
                tag <= siCmd_tdata[TAG_H:TAG_L];
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
                if (cmd_type == SEND) begin
                    send_start <= 1'b1;
                    state <= WAIT_SEND;
                end else begin
                    send_start <= act_clust_size != CLUST_BITS_1;
                    dst_rank <= act_clust_rank+CLUST_BITS_1 == act_clust_size ? {CLUST_BITS{1'b0}} : act_clust_rank+CLUST_BITS_1;
                    state <= act_clust_size == CLUST_BITS_1 ? WRITE_FINISH : WAIT_SENDALL;
                end
            end

            WAIT_SEND: begin
                if (send_finish) begin
                    state <= WRITE_FINISH;
                end
            end

            WAIT_SENDALL: begin
                if (send_finish) begin
                    dst_rank <= dst_rank+CLUST_BITS_1 == act_clust_size ? {CLUST_BITS{1'b0}} : dst_rank+CLUST_BITS_1;;
                    if (dst_rank+CLUST_BITS_1 == act_clust_rank || (dst_rank+CLUST_BITS_1 == act_clust_size && act_clust_rank == {CLUST_BITS{1'b0}})) begin
                        state <= WRITE_FINISH;
                    end else begin
                        send_start <= 1'b1;
                    end
                end
            end

            WRITE_FINISH: begin
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
            state <= IDLE;
        end
    end

endmodule
