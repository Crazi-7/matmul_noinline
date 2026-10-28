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
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/newtask_spawner     */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on       */
/*  these sources, You must maintain the Source Location visible on the          */
/*  external case of the White Rabbit switch or other product you make using     */
/*  this documentation.                                                          */
/*                                                                               */
/*********************************************************************************/

module new_task_spawner_wrapper #(
    parameter MAX_ARGS_PER_TASK = 15,
    parameter MAX_DEPS_PER_TASK = 8,
    parameter MAX_COPS_PER_TASK = 15,
    parameter MAX_OWNS_PER_TASK = 8,
    parameter MAX_CLUSTER_SIZE = 64,
    parameter BUFFER_LEN = 2,
    parameter IMP = 0
) (
    input clk,
    input rstn,
    input [7:0] ompif_rank,
    //Input stream from accelerator
    input         stream_in_tvalid,
    output        stream_in_tready,
    input  [1:0]  stream_in_tdest,
    input  [63:0] stream_in_tdata,
    input         stream_in_tlast,
    //Output stream to hwruntime
    output        stream_out_tvalid,
    input         stream_out_tready,
    output [1:0]  stream_out_tdest,
    output [63:0] stream_out_tdata,
    output        stream_out_tlast,
    //Ack in interface
    input        ack_in_tvalid,
    output       ack_in_tready,
    input [63:0] ack_in_tdata,
    //Ack out interface
    output       ack_out_tvalid,
    input        ack_out_tready,
    output [7:0] ack_out_tdata
);

    newtask_spawner_top #(
        .MAX_ARGS_PER_TASK(MAX_ARGS_PER_TASK),
        .MAX_DEPS_PER_TASK(MAX_DEPS_PER_TASK),
        .MAX_COPS_PER_TASK(MAX_COPS_PER_TASK),
        .MAX_OWNS_PER_TASK(MAX_OWNS_PER_TASK),
        .MAX_CLUSTER_SIZE(MAX_CLUSTER_SIZE),
        .BUFFER_LEN(BUFFER_LEN),
        .IMP(IMP)
    ) new_task_spawner_top_I (
        .clk(clk),
        .rstn(rstn),
        .ompif_rank(ompif_rank),
        .stream_in_tvalid(stream_in_tvalid),
        .stream_in_tready(stream_in_tready),
        .stream_in_tdest(stream_in_tdest),
        .stream_in_tdata(stream_in_tdata),
        .stream_in_tlast(stream_in_tlast),
        .stream_out_tvalid(stream_out_tvalid),
        .stream_out_tready(stream_out_tready),
        .stream_out_tdest(stream_out_tdest),
        .stream_out_tdata(stream_out_tdata),
        .stream_out_tlast(stream_out_tlast),
        .ack_in_tvalid(ack_in_tvalid),
        .ack_in_tready(ack_in_tready),
        .ack_in_tdata(ack_in_tdata),
        .ack_out_tvalid(ack_out_tvalid),
        .ack_out_tready(ack_out_tready),
        .ack_out_tdata(ack_out_tdata)
    );

endmodule
