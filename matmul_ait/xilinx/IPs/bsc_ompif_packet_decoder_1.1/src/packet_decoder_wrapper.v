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

module packet_decoder_wrapper #(
    parameter MAX_CLUSTER_SIZE = 96,
    parameter DATA_WIDTH = 512
) (
    input clk,
    input rstn,
    input si_tvalid,
    output si_tready,
    input [DATA_WIDTH-1:0] si_tdata,
    input [DATA_WIDTH/8-1:0] si_tkeep,
    input [7:0] si_tid,
    input si_tlast,
    output soRole_tvalid,
    input soRole_tready,
    output [DATA_WIDTH-1:0] soRole_tdata,
    output [DATA_WIDTH/8-1:0] soRole_tkeep,
    output [2:0] soRole_tdest,
    output soRole_tlast,
    output soEnc_tvalid,
    input soEnc_tready,
    output [DATA_WIDTH-1:0] soEnc_tdata,
    output [DATA_WIDTH/8-1:0] soEnc_tkeep,
    output [7:0] soEnc_tdest,
    output [2:0] soEnc_tid,
    output soEnc_tlast
);
    packet_decoder #(
        .MAX_CLUSTER_SIZE(MAX_CLUSTER_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) packet_decoder_I (
        .clk(clk),
        .rstn(rstn),
        .si_tvalid(si_tvalid),
        .si_tready(si_tready),
        .si_tdata(si_tdata),
        .si_tkeep(si_tkeep),
        .si_tid(si_tid),
        .si_tlast(si_tlast),
        .soRole_tvalid(soRole_tvalid),
        .soRole_tready(soRole_tready),
        .soRole_tdata(soRole_tdata),
        .soRole_tkeep(soRole_tkeep),
        .soRole_tdest(soRole_tdest),
        .soRole_tlast(soRole_tlast),
        .soEnc_tvalid(soEnc_tvalid),
        .soEnc_tready(soEnc_tready),
        .soEnc_tdata(soEnc_tdata),
        .soEnc_tkeep(soEnc_tkeep),
        .soEnc_tdest(soEnc_tdest),
        .soEnc_tid(soEnc_tid),
        .soEnc_tlast(soEnc_tlast)
    );
endmodule
