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
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/packet_decoder      */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on       */
/*  these sources, You must maintain the Source Location visible on the          */
/*  external case of the White Rabbit switch or other product you make using     */
/*  this documentation.                                                          */
/*                                                                               */
/*********************************************************************************/

module pkt_dec_ack_queue #(
    parameter MAX_CLUSTER_SIZE = 0,
    localparam CLUST_BITS = $clog2(MAX_CLUSTER_SIZE)
) (
    input clk,
    input rstn,
    input si_tvalid,
    output si_tready,
    input [0:0] si_tdata,
    input [CLUST_BITS-1:0] si_tdest,
    output so_tvalid,
    input so_tready,
    output [0:0] so_tdata,
    output [CLUST_BITS-1:0] so_tdest
);

    wire empty;
    wire read;
    wire [CLUST_BITS:0] din;
    wire full;
    wire write;
    wire [CLUST_BITS:0] dout;

    reg dout_valid = 1'b0;

    assign read = !empty && (!dout_valid || so_tready);
    assign write = !full && si_tvalid;
    assign din = {si_tdest, si_tdata};
    assign so_tdest = dout[CLUST_BITS:1];
    assign so_tdata = dout[0];

    assign si_tready = !full;
    assign so_tvalid = dout_valid;

    always_ff @(posedge clk) begin
        if (!empty) begin
            dout_valid <= 1'b1;
        end else if (so_tready) begin
            dout_valid <= 1'b0;
        end

        if (!rstn) begin
            dout_valid <= 1'b0;
        end
    end

    pkt_dec_fifo #(
        .LEN(MAX_CLUSTER_SIZE),
        .WIDTH(CLUST_BITS+1)
    ) ack_fifo_I (
        .clk(clk),
        .rstn(rstn),
        .empty(empty),
        .read(read),
        .dout(dout),
        .full(full),
        .write(write),
        .din(din)
    );

endmodule
