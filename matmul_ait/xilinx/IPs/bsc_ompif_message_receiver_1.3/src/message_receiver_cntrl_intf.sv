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

module message_receiver_cntrl_intf #(
    parameter MBUFFER_ADDR_WIDTH = 0,
    parameter AXI_ADDR_WIDTH = 0,
    parameter CLUST_BITS = 0
) (
    input clk,
    input rstn,
    input [MBUFFER_ADDR_WIDTH:0] bufrd_addr_cr,
    input [MBUFFER_ADDR_WIDTH-1:0] bufrd_addr_lt,
    input [MBUFFER_ADDR_WIDTH:0] bufwr_addr_cr,
    input [MBUFFER_ADDR_WIDTH-1:0] bufwr_addr_cf,
    input found_msg_mismatch,
    input cmd_type,
    input [7:0] tag,
    input [AXI_ADDR_WIDTH-1:0] task_addr,
    input [CLUST_BITS-1:0] src_rank,
    input [31:0] size,
    input [31:0] size_received,
    input buffer_overflow_error,
    input cntrl_arvalid,
    output cntrl_arready,
    input [2:0] cntrl_arprot,
    input [13:0] cntrl_araddr,
    output cntrl_rvalid,
    input cntrl_rready,
    output [31:0] cntrl_rdata,
    output [1:0] cntrl_rresp
);

    localparam BUFRD_ADDR_CR_OFFSET = 0;
    localparam BUFRD_ADDR_LT_OFFSET = 8;
    localparam BUFWR_ADDR_CR_OFFSET = 16;
    localparam BUFWR_ADDR_CF_OFFSET = 24;
    localparam TAG_FOUND_MSG_MISMATCH_CMD_TYPE_OFFSET = 32;
    localparam TASK_ADDR_OFFSET = 36;
    localparam SRC_RANK_OFFSET = 44;
    localparam SIZE_OFFSET = 48;
    localparam SIZE_RECEIVED_OFFSET = 52;
    localparam ERROR_FLAGS_OFFSET = 56;
    localparam REG_SPACE_SIZE = 60;

    localparam LOCAL_ADDR_WIDTH = $clog2(REG_SPACE_SIZE);

    typedef enum bit [1:0] {
           AR,
           SELECT_REG,
           R
    } RState_t;

    RState_t rstate;

    reg [LOCAL_ADDR_WIDTH-1:0] raddr;
    reg [1:0] rresp;
    reg [31:0] rdata;

    wire [31:0] bufrd_addr_lt_low;
    wire [31:0] bufrd_addr_lt_high;
    wire [31:0] bufwr_addr_cf_low;
    wire [31:0] bufwr_addr_cf_high;
    wire [31:0] bufwr_addr_cr_low;
    wire [31:0] bufwr_addr_cr_high;
    wire [31:0] bufrd_addr_cr_low;
    wire [31:0] bufrd_addr_cr_high;
    wire [31:0] task_addr_low;
    wire [31:0] task_addr_high;

    assign cntrl_arready = rstate == AR;
    assign cntrl_rvalid = rstate == R;
    assign cntrl_rdata = rdata;
    assign cntrl_rresp = rresp;

    if (MBUFFER_ADDR_WIDTH+1 < 32) begin
        assign bufwr_addr_cr_low = {{32-MBUFFER_ADDR_WIDTH-1{1'b0}}, bufwr_addr_cr};
        assign bufwr_addr_cr_high = 32'd0;
        assign bufrd_addr_cr_low = {{32-MBUFFER_ADDR_WIDTH-1{1'b0}}, bufrd_addr_cr};
        assign bufrd_addr_cr_high = 32'd0;
    end else if (MBUFFER_ADDR_WIDTH+1 == 32) begin
        assign bufwr_addr_cr_low = bufwr_addr_cr;
        assign bufwr_addr_cr_high = 32'd0;
        assign bufrd_addr_cr_low = bufrd_addr_cr;
        assign bufrd_addr_cr_high = 32'd0;
    end else begin
        assign bufwr_addr_cr_low = bufwr_addr_cr[31:0];
        assign bufwr_addr_cr_high = {{64-MBUFFER_ADDR_WIDTH-1{1'b0}}, bufwr_addr_cr[MBUFFER_ADDR_WIDTH:32]};
        assign bufrd_addr_cr_low = bufrd_addr_cr[31:0];
        assign bufrd_addr_cr_high = {{64-MBUFFER_ADDR_WIDTH-1{1'b0}}, bufrd_addr_cr[MBUFFER_ADDR_WIDTH:32]};
    end

    if (MBUFFER_ADDR_WIDTH < 32) begin
        assign bufrd_addr_lt_low = {{32-MBUFFER_ADDR_WIDTH{1'b0}}, bufrd_addr_lt};
        assign bufrd_addr_lt_high = 32'd0;
        assign bufwr_addr_cf_low = {{32-MBUFFER_ADDR_WIDTH{1'b0}}, bufwr_addr_cf};
        assign bufwr_addr_cf_high = 32'd0;
    end else if (MBUFFER_ADDR_WIDTH == 32) begin
        assign bufrd_addr_lt_low = bufrd_addr_lt;
        assign bufrd_addr_lt_high = 32'd0;
        assign bufwr_addr_cf_low = bufwr_addr_cf;
        assign bufwr_addr_cf_high = 32'd0;
    end else begin
        assign bufrd_addr_lt_low = bufrd_addr_lt[31:0];
        assign bufrd_addr_lt_high = {{64-MBUFFER_ADDR_WIDTH{1'b0}}, bufrd_addr_lt[MBUFFER_ADDR_WIDTH-1:32]};
        assign bufwr_addr_cf_low = bufwr_addr_cf[31:0];
        assign bufwr_addr_cf_high = {{64-MBUFFER_ADDR_WIDTH{1'b0}}, bufwr_addr_cf[MBUFFER_ADDR_WIDTH-1:32]};
    end

    if (AXI_ADDR_WIDTH < 32) begin
        assign task_addr_low = {{32-AXI_ADDR_WIDTH{1'b0}}, task_addr[AXI_ADDR_WIDTH-1:0]};
        assign task_addr_high = 32'd0;
    end else if (AXI_ADDR_WIDTH == 32) begin
        assign task_addr_low = task_addr;
        assign task_addr_high = 32'd0;
    end else begin
        assign task_addr_low = task_addr[31:0];
        assign task_addr_high = {{64-AXI_ADDR_WIDTH{1'b0}}, task_addr[AXI_ADDR_WIDTH-1:32]};
    end

    always_ff @(posedge clk) begin

        case (rstate)

            AR: begin
                raddr <= cntrl_araddr[LOCAL_ADDR_WIDTH-1:0];
                if (cntrl_arvalid) begin
                    rstate <= SELECT_REG;
                end
            end

            SELECT_REG: begin
                rresp <= 2'd0;
                case (raddr)

                    BUFRD_ADDR_CR_OFFSET: begin
                       rdata <= bufrd_addr_cr_low;
                    end

                    BUFRD_ADDR_CR_OFFSET+4: begin
                        rdata <= bufrd_addr_cr_high;
                    end

                    BUFRD_ADDR_LT_OFFSET: begin
                        rdata <= bufrd_addr_lt_low;
                    end

                    BUFRD_ADDR_LT_OFFSET+4: begin
                        rdata <= bufrd_addr_lt_high;
                    end

                    BUFWR_ADDR_CR_OFFSET: begin
                        rdata <= bufwr_addr_cr_low;
                    end

                    BUFWR_ADDR_CR_OFFSET+4: begin
                        rdata <= bufwr_addr_cr_high;
                    end

                    BUFWR_ADDR_CF_OFFSET: begin
                        rdata <= bufwr_addr_cf_low;
                    end

                    BUFWR_ADDR_CF_OFFSET+4: begin
                        rdata <= bufwr_addr_cf_high;
                    end

                    TAG_FOUND_MSG_MISMATCH_CMD_TYPE_OFFSET: begin
                        rdata <= {22'd0, tag, found_msg_mismatch, cmd_type};
                    end

                    TASK_ADDR_OFFSET: begin
                        rdata <= task_addr_low;
                    end

                    TASK_ADDR_OFFSET+4: begin
                        rdata <= task_addr_high;
                    end

                    SRC_RANK_OFFSET: begin
                        rdata <= {{{32-CLUST_BITS}{1'b0}}, src_rank};
                    end

                    SIZE_OFFSET: begin
                        rdata <= size;
                    end

                    SIZE_RECEIVED_OFFSET: begin
                        rdata <= size_received;
                    end

                    ERROR_FLAGS_OFFSET: begin
                        rdata <= {31'd0, buffer_overflow_error};
                    end

                    default: begin
                        rresp <= 2'b10; //SLVERR
                    end

                endcase
                rstate <= R;
            end

            R: begin
                if (cntrl_rready) begin
                    rstate <= AR;
                end
            end

        endcase

        if (!rstn) begin
            rstate <= AR;
        end
    end

endmodule
