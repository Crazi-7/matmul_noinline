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

module msg_recv_bufwr #(
    parameter AXI_ADDR_WIDTH = 0,
    parameter AXI_DATA_WIDTH = 0,
    parameter MSG_DATA_SIZE = 0,
    parameter CLUST_BITS = 0,
    parameter MBUFFER_ADDR_WIDTH = 0,
    parameter [AXI_ADDR_WIDTH-MBUFFER_ADDR_WIDTH-1:0] MBUFFER_ADDR_PREFIX = 0,
    parameter MAX_OUTSTANDING_WRITES = 0,
    localparam OUTSTANDING_BITS = $clog2(MAX_OUTSTANDING_WRITES)
) (
    input clk,
    input rstn,
    input msg_in_tvalid,
    output msg_in_tready,
    input [AXI_DATA_WIDTH-1:0] msg_in_tdata,
    input [AXI_DATA_WIDTH/8-1:0] msg_in_tkeep,
    input msg_in_tlast,
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
    output logic [AXI_DATA_WIDTH-1:0] bufwr_wdata,
    output logic [AXI_DATA_WIDTH/8-1:0] bufwr_wstrb,
    output bufwr_wlast,
    //B
    input bufwr_bvalid,
    output bufwr_bready,
    input [1:0] bufwr_bresp,
    //End
    output reg [MBUFFER_ADDR_WIDTH-1:0] bufwr_addr_cf, // Pointer to the last written slot in the queue
    output reg [MBUFFER_ADDR_WIDTH:0] bufwr_addr_cr, // Pointer to the current buffer write slot in the queue
    input [MBUFFER_ADDR_WIDTH:0] bufrd_addr_cr, // Pointer to the current buffer read slot in the queue
    output reg buffer_overflow_error
);

    import MsgRecvConstants::*;
    import OmpifPkg::*;

    localparam LOW_ALIGN_BITS = $clog2(AXI_DATA_WIDTH/8);
    localparam MSG_DATA_WIDTH = $clog2(MSG_DATA_SIZE+64+1); //Include the size of the header
    localparam MEM_SLOT_SIZE = MSG_DATA_SIZE + AXI_DATA_WIDTH/8;
    localparam OUTSTANDING_FIFO_WIDTH = 1;
    localparam [MBUFFER_ADDR_WIDTH-1:0] LAST_SLOT = MEM_SLOT_SIZE*(2**MBUFFER_ADDR_WIDTH/MEM_SLOT_SIZE - 1);

    typedef enum bit [2:0] {
        IDLE,
        WAIT_TG_W,
        FORWARD,
        WAIT_TG_AW
    } State_t;

    State_t state;

    reg [MSG_DATA_WIDTH-1:0] size;
    reg [AXI_ADDR_WIDTH-1:0] wr_addr;

    reg [7:0] w_len_buf;
    reg aw_tg_start;
    reg w_tg_start;
    wire [7:0] w_len;
    wire aw_req_valid;
    wire aw_req_ready;
    wire aw_req_last;
    wire addr_req_valid;
    wire addr_req_ready;
    reg aw_tg_operating;
    reg write_header;

    wire wfifo_full;
    wire wfifo_write;
    wire [OUTSTANDING_FIFO_WIDTH-1:0] wfifo_din;
    wire wfifo_read;
    wire [OUTSTANDING_FIFO_WIDTH-1:0] wfifo_dout;

    msg_recv_fifo #(
        .LEN(MAX_OUTSTANDING_WRITES),
        .WIDTH(OUTSTANDING_FIFO_WIDTH)
    ) wfifo_I (
        .clk(clk),
        .rstn(rstn),
        .full(wfifo_full),
        .write(wfifo_write),
        .din(wfifo_din),
        .empty(),
        .read(wfifo_read),
        .dout(wfifo_dout)
    );

    message_recv_transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(AXI_DATA_WIDTH),
        .BTT_WIDTH(MSG_DATA_WIDTH),
        .GEN_ADDR(1),
        .GEN_LAST(1)
    ) aw_tg_I (
        .clk(clk),
        .rstn(rstn),
        .start(aw_tg_start),
        .btt(size),
        .initial_addr(wr_addr),
        .addr_req_valid(aw_req_valid),
        .addr_req_ready(aw_req_ready),
        .addr_req_addr(bufwr_awaddr),
        .addr_req_len(bufwr_awlen),
        .addr_req_last(aw_req_last)
    );

    message_recv_transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(AXI_DATA_WIDTH),
        .BTT_WIDTH(MSG_DATA_WIDTH),
        .GEN_ADDR(0),
        .GEN_LAST(0)
    ) w_tg_I (
        .clk(clk),
        .rstn(rstn),
        .start(w_tg_start),
        .btt(size),
        .initial_addr(wr_addr),
        .addr_req_valid(addr_req_valid),
        .addr_req_ready(addr_req_ready),
        .addr_req_addr(),
        .addr_req_len(w_len),
        .addr_req_last()
    );

    assign msg_in_tready = state == FORWARD && bufwr_wready;

    assign addr_req_ready = state == WAIT_TG_W || (state == FORWARD && msg_in_tvalid && bufwr_wready && w_len_buf == 8'd0);

    assign bufwr_awvalid = aw_req_valid && !wfifo_full;
    assign aw_req_ready = bufwr_awready && !wfifo_full;
    assign wfifo_din[0] = aw_req_last;
    assign wfifo_write = !wfifo_full && aw_req_valid && bufwr_awready;
    assign wfifo_read = bufwr_bvalid;

    assign bufwr_wvalid = state == FORWARD && msg_in_tvalid;
    assign bufwr_wlast = w_len_buf == 8'd0;
    assign bufwr_bready = 1'b1;
    assign bufwr_awsize = $clog2(AXI_DATA_WIDTH/8);
    assign bufwr_awburst = 2'b01; //INCR burst type
    assign bufwr_awcache = 4'b0010;

    always_ff @(posedge clk) begin
        if (bufwr_bvalid && wfifo_dout[0]) begin
            if (bufwr_addr_cf == LAST_SLOT) begin
                bufwr_addr_cf <= {MBUFFER_ADDR_WIDTH{1'b0}};
            end else begin
                bufwr_addr_cf <= bufwr_addr_cf + MEM_SLOT_SIZE;
            end
        end

        if (!rstn) begin
            bufwr_addr_cf <= {MBUFFER_ADDR_WIDTH{1'b0}};
        end
    end

    always_comb begin
        bufwr_wdata = msg_in_tdata;
        bufwr_wstrb = msg_in_tkeep;
        if (write_header) begin
            bufwr_wdata[MEM_MSG_VALID_B] = MSG_VALID;
        end
    end

    always_ff @(posedge clk) begin

        aw_tg_start <= 1'b0;
        w_tg_start <= 1'b0;

        if (aw_req_valid && bufwr_awready && !wfifo_full && aw_req_last) begin
            aw_tg_operating <= 1'b0;
        end

        case (state)

            IDLE: begin
                write_header <= 1'b1;
                size <= msg_in_tdata[MSG_SIZE_L +: MSG_DATA_WIDTH] + {{MSG_DATA_WIDTH-7{1'b0}}, 7'd64};
                wr_addr <= {MBUFFER_ADDR_PREFIX, bufwr_addr_cr[MBUFFER_ADDR_WIDTH-1:0]};
                if (msg_in_tvalid) begin
                    if (bufwr_addr_cr[MBUFFER_ADDR_WIDTH-1:0] == LAST_SLOT) begin
                        bufwr_addr_cr[MBUFFER_ADDR_WIDTH-1:0] <= {MBUFFER_ADDR_WIDTH{1'b0}};
                        bufwr_addr_cr[MBUFFER_ADDR_WIDTH] <= !bufwr_addr_cr[MBUFFER_ADDR_WIDTH];
                    end else begin
                        bufwr_addr_cr[MBUFFER_ADDR_WIDTH-1:0] <= bufwr_addr_cr[MBUFFER_ADDR_WIDTH-1:0] + MEM_SLOT_SIZE;
                    end
                    //Buffer is full, we have an overflow problem!
                    if (bufwr_addr_cr[MBUFFER_ADDR_WIDTH-1:0] == bufrd_addr_cr[MBUFFER_ADDR_WIDTH-1:0] &&
                        bufwr_addr_cr[MBUFFER_ADDR_WIDTH] != bufrd_addr_cr[MBUFFER_ADDR_WIDTH]) begin
                        buffer_overflow_error <= 1'b1;
                    end
                    aw_tg_start <= 1'b1;
                    aw_tg_operating <= 1'b1;
                    w_tg_start <= 1'b1;
                    state <= WAIT_TG_W;
                end
            end

            WAIT_TG_W: begin
                w_len_buf <= w_len;
                if (addr_req_valid) begin
                    state <= FORWARD;
                end
            end

            FORWARD: begin
                if (msg_in_tvalid && bufwr_wready) begin
                    write_header <= 1'b0;
                    w_len_buf <= w_len_buf - 8'd1;
                    if (w_len_buf == 8'd0) begin
                        w_len_buf <= w_len;
                        if (!addr_req_valid) begin
                            state <= WAIT_TG_W;
                        end
                    end
                    if (msg_in_tlast) begin
                        if (!aw_tg_operating) begin
                            state <= IDLE;
                        end else begin
                            state <= WAIT_TG_AW;
                        end
                    end
                end
            end

            WAIT_TG_AW: begin
                if (!aw_tg_operating || (aw_req_valid && bufwr_awready && !wfifo_full && aw_req_last)) begin
                    state <= IDLE;
                end
            end

        endcase

        if (!rstn) begin
            bufwr_addr_cr <= {MBUFFER_ADDR_WIDTH+1{1'b0}};
            buffer_overflow_error <= 1'b0;
            state <= IDLE;
        end
    end

endmodule
