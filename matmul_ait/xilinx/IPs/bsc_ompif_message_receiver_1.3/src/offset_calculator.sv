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

module offset_calculator #(
    parameter ADDR_WIDTH = 0,
    parameter CLUST_BITS = 0,
    parameter MSG_DATA_SIZE = 0
) (
    input clk,
    input start,
    output addr_valid,
    output [ADDR_WIDTH-1:0] result_addr,
    input [ADDR_WIDTH-1:0] base_addr,
    input [CLUST_BITS-1:0] src_rank,
    input [15:0] msg_seq,
    input [31:0] size
);

    import OmpifPkg::*;

    localparam LATENCY = 6;
    localparam MSG_SEQ_LAT = 3;
    localparam MSG_WIDTH = $clog2(MSG_DATA_SIZE+1);

    wire [MAX_MSG_WIDTH-1:0] msg_data_size_max_width;
    wire [MAX_ADDR_WIDTH-1:0] P_tmp;
    wire [MAX_ADDR_WIDTH-1:0] result_addr_max_width;
    wire [MAX_ADDR_WIDTH-1:0] base_addr_max_width;
    wire [MAX_CLUST_BITS-1:0] src_rank_max_width;

    reg [LATENCY-1:0] stages;
    reg [15:0] msg_seq_pipe[MSG_SEQ_LAT];

    assign addr_valid = stages[LATENCY-1];
    if (MAX_CLUST_BITS == CLUST_BITS) begin
        assign src_rank_max_width = src_rank;
    end else begin
        assign src_rank_max_width = {{MAX_CLUST_BITS-CLUST_BITS{1'b0}}, src_rank};
    end
    assign result_addr = result_addr_max_width[ADDR_WIDTH-1:0];
    if (MAX_ADDR_WIDTH == ADDR_WIDTH) begin
        assign base_addr_max_width = base_addr;
    end else begin
        assign base_addr_max_width = {{MAX_ADDR_WIDTH-ADDR_WIDTH{1'b0}}, base_addr};
    end
    if (MAX_MSG_WIDTH == MSG_WIDTH) begin
        assign msg_data_size_max_width = MSG_DATA_SIZE[MSG_WIDTH-1:0];
    end else begin
        assign msg_data_size_max_width = {{MAX_MSG_WIDTH-MSG_WIDTH{1'b0}}, MSG_DATA_SIZE[MSG_WIDTH-1:0]};
    end

    always_ff @(posedge clk) begin
        stages[0] <= start;
        msg_seq_pipe[0] <= msg_seq;
        for (int i = 1; i < LATENCY; ++i) begin
            stages[i] <= stages[i-1];
        end
        for (int i = 1; i < MSG_SEQ_LAT; ++i) begin
            msg_seq_pipe[i] <= msg_seq_pipe[i-1];
        end
    end

    multadd_size_rank_base multadd_size_rank_base_I (
        .CLK(clk),
        .CE(1'b1),
        .SCLR(1'b0),
        .A(src_rank_max_width),
        .B(size),
        .C(base_addr_max_width),
        .P(P_tmp),
        .PCOUT(),
        .SUBTRACT(1'b0)
    );

    multadd_const_seq_tmp multadd_const_seq_I (
        .CLK(clk),
        .CE(1'b1),
        .SCLR(1'b0),
        .A(msg_data_size_max_width),
        .B(msg_seq_pipe[MSG_SEQ_LAT-1]),
        .C(P_tmp),
        .P(result_addr_max_width),
        .PCOUT(),
        .SUBTRACT(1'b0)
    );

endmodule
