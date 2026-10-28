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

//Addresses must be aligned to AXI_DATA_WIDTH/8 bytes
module memory_handler #(
    parameter AXI_ADDR_WIDTH = 0,
    parameter AXI_DATA_WIDTH = 0,
    parameter MSG_DATA_SIZE = 0,
    localparam MSG_DATA_WIDTH = $clog2(MSG_DATA_SIZE+1)
) (
    input clk,
    input rstn,
    input start,
    output reg finished,
    input [AXI_ADDR_WIDTH-1:0] src_addr,
    input [AXI_ADDR_WIDTH-1:0] dst_addr,
    input [MSG_DATA_WIDTH-1:0] size,
    output reg [63:0] header,
    input MsgRecvConstants::MemCmdType cmd,
    AXI4.master memcpy
);

    localparam LOW_ALIGN_BITS = $clog2(AXI_DATA_WIDTH/8);

    import MsgRecvConstants::*;
    import OmpifPkg::*;

    typedef enum bit [2:0] {
        IDLE,
        WAIT_HEADER_DATA,
        HEADER_WRITE,
        WAIT_TG,
        MEMCPY,
        WAIT_WR_CONFIRM
    } State;

    (* fsm_encoding = "one_hot" *)
    State state;

    reg buf_full;
    reg [AXI_DATA_WIDTH-1:0] buffer;
    reg memcpy_aw_started;
    reg [AXI_ADDR_WIDTH-1:0] dst_addr_copy;

    reg r_tg_start;
    reg w_tg_start;
    reg aw_tg_start;
    wire w_tg_last;
    wire aw_tg_last;
    reg [MSG_DATA_WIDTH-1:0] tg_btt;
    reg wresp_last_transaction;
    reg [1:0] wresp_count;

    wire w_tg_addr_req_valid;
    wire w_tg_addr_req_ready;
    wire [7:0] w_tg_addr_req_len;
    reg [7:0] w_tg_len_buf;
    reg [7:0] w_count;
    reg w_tg_last_buf;

    reg [AXI_DATA_WIDTH/8-1:0] last_tkeep;

    message_recv_transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(AXI_DATA_WIDTH),
        .BTT_WIDTH(MSG_DATA_WIDTH),
        .GEN_ADDR(1),
        .GEN_LAST(0)
    ) transaction_generator_r_I (
        .clk(clk),
        .rstn(rstn),
        .start(r_tg_start),
        .btt(tg_btt),
        .initial_addr(src_addr),
        .addr_req_valid(memcpy.arvalid),
        .addr_req_ready(memcpy.arready),
        .addr_req_addr(memcpy.araddr),
        .addr_req_len(memcpy.arlen),
        .addr_req_last()
    );

    message_recv_transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(AXI_DATA_WIDTH),
        .BTT_WIDTH(MSG_DATA_WIDTH),
        .GEN_ADDR(1),
        .GEN_LAST(1)
    ) transaction_generator_aw_I (
        .clk(clk),
        .rstn(rstn),
        .start(aw_tg_start),
        .btt(tg_btt),
        .initial_addr(dst_addr_copy),
        .addr_req_valid(memcpy.awvalid),
        .addr_req_ready(memcpy.awready),
        .addr_req_addr(memcpy.awaddr),
        .addr_req_len(memcpy.awlen),
        .addr_req_last(aw_tg_last)
    );

    message_recv_transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(AXI_DATA_WIDTH),
        .BTT_WIDTH(MSG_DATA_WIDTH),
        .GEN_ADDR(0),
        .GEN_LAST(1)
    ) transaction_generator_w_I (
        .clk(clk),
        .rstn(rstn),
        .start(w_tg_start),
        .btt(tg_btt),
        .initial_addr(dst_addr_copy),
        .addr_req_valid(w_tg_addr_req_valid),
        .addr_req_ready(w_tg_addr_req_ready),
        .addr_req_addr(),
        .addr_req_len(w_tg_addr_req_len),
        .addr_req_last(w_tg_last)
    );

    assign memcpy.bready = 1'b1;
    assign memcpy.wvalid = buf_full || state == HEADER_WRITE;
    assign memcpy.wlast = state == HEADER_WRITE || (state == MEMCPY && w_count == w_tg_len_buf);
    assign memcpy.rready = buf_full ? memcpy.wready : 1'b1;

    assign w_tg_addr_req_ready = state == WAIT_TG || (state == MEMCPY && buf_full && memcpy.wready && w_count == w_tg_len_buf);;

    always_comb begin
        memcpy.wdata = buffer;
        memcpy.wstrb = w_count == w_tg_len_buf && w_tg_last_buf ? last_tkeep : {AXI_DATA_WIDTH/8{1'b1}};

        case (state)

            HEADER_WRITE: begin
                memcpy.wdata[MEM_MSG_VALID_B] = MSG_READ;
                memcpy.wstrb = {AXI_DATA_WIDTH/8{1'b0}};
                memcpy.wstrb[5:4] = 1'b1; //valid bits are 33-32
            end

            default: begin
            end

        endcase
    end

    always_ff @(posedge clk) begin
        if (w_tg_start) begin
            wresp_last_transaction <= 1'b1;
        end
        if (memcpy.awvalid && memcpy.awready && aw_tg_last) begin
            wresp_last_transaction <= 1'b1;
        end

        if ((memcpy.awvalid && memcpy.awready) && !memcpy.bvalid) begin
            wresp_count <= wresp_count + 2'd1;
        end else if (!(memcpy.awvalid && memcpy.awready) && memcpy.bvalid) begin
            wresp_count <= wresp_count - 2'd1;
        end

        if (!rstn) begin
            wresp_count <= 2'd0;
        end
    end

    always_ff @(posedge clk) begin
        r_tg_start <= 1'b0;
        aw_tg_start <= 1'b0;
        w_tg_start <= 1'b0;

        if (!memcpy_aw_started && state == MEMCPY && memcpy.rvalid) begin
            aw_tg_start <= 1'b1;
            memcpy_aw_started <= 1'b1;
        end

        case (buf_full)
            1'b0: begin
                buffer <= memcpy.rdata;

                if (state == MEMCPY && memcpy.rvalid) begin
                    buf_full <= 1'b1;
                end
            end

            1'b1: begin
                if (!memcpy.rvalid && memcpy.wready) begin
                    buf_full <= 1'b0;
                end
                if (memcpy.wready) begin
                    buffer <= memcpy.rdata;
                end
            end

        endcase

        case (state)
            IDLE: begin
                memcpy_aw_started <= 1'b0;
                finished <= 1'b0;
                dst_addr_copy <= dst_addr;
                last_tkeep <= (size[LOW_ALIGN_BITS-1:0] == {LOW_ALIGN_BITS{1'b0}}) ?
                    {AXI_DATA_WIDTH/8{1'b1}} :
                    ~({AXI_DATA_WIDTH/8{1'b1}} << size[LOW_ALIGN_BITS-1:0]);
                if (start) begin
                    finished <= 1'b0;
                    case (cmd)
                        READ_HEADER_CMD: begin
                            r_tg_start <= 1'b1;
                            tg_btt <= {{MSG_DATA_WIDTH-4{1'b0}}, 4'd8};
                            state <= WAIT_HEADER_DATA;
                        end
                        WRITE_HEADER_CMD: begin
                            aw_tg_start <= 1'b1;
                            tg_btt <= {{MSG_DATA_WIDTH-4{1'b0}}, 4'd8};
                            state <= HEADER_WRITE;
                        end
                        MEMCPY_CMD: begin
                            r_tg_start <= 1'b1;
                            w_tg_start <= 1'b1;
                            tg_btt <= size;
                            state <= WAIT_TG;
                        end
                    endcase
                end
            end

            WAIT_HEADER_DATA: begin
                header <= memcpy.rdata[63:0];
                if (memcpy.rvalid) begin
                    finished <= 1'b1;
                    state <= IDLE;
                end
            end

            HEADER_WRITE: begin
                if (memcpy.wready) begin
                    state <= WAIT_WR_CONFIRM;
                end
            end

            WAIT_TG: begin
                w_count <= 8'd0;
                if (w_tg_addr_req_valid) begin
                    w_tg_len_buf <= w_tg_addr_req_len;
                    w_tg_last_buf <= w_tg_last;
                    state <= MEMCPY;
                end
            end

            MEMCPY: begin
                if (buf_full && memcpy.wready) begin
                    w_count <= w_count + 8'd1;
                    if (w_count == w_tg_len_buf) begin
                        w_count <= 8'd0;
                        if (w_tg_addr_req_valid) begin
                            w_tg_len_buf <= w_tg_addr_req_len;
                            w_tg_last_buf <= w_tg_last;
                        end else if (w_tg_last_buf) begin
                            state <= WAIT_WR_CONFIRM;
                        end else begin
                            state <= WAIT_TG;
                        end
                    end
                end
            end

            WAIT_WR_CONFIRM: begin
                if (memcpy.bvalid && wresp_count == 2'd1 && wresp_last_transaction) begin
                    finished <= 1'b1;
                    state <= IDLE;
                end
            end

        endcase

        if (!rstn) begin
            buf_full <= 1'b0;
            state <= IDLE;
        end
    end

endmodule
