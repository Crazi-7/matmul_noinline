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

module newtask_spawner_top #(
    parameter MAX_ARGS_PER_TASK = 0,
    parameter MAX_DEPS_PER_TASK = 0,
    parameter MAX_COPS_PER_TASK = 0,
    parameter MAX_OWNS_PER_TASK = 0, // Must be <= MAX_DEPS_PER_TASK
    parameter MAX_CLUSTER_SIZE = 0,
    parameter BUFFER_LEN = 0,
    parameter IMP = 0
) (
    input clk,
    input rstn,
    input [7:0] ompif_rank,
    //Input stream from accelerator
    input         stream_in_tvalid,
    output logic  stream_in_tready,
    input  [1:0]  stream_in_tdest,
    input  [63:0] stream_in_tdata,
    input         stream_in_tlast,
    //Output stream to hwruntime
    output logic        stream_out_tvalid,
    input               stream_out_tready,
    output logic [1:0]  stream_out_tdest,
    output logic [63:0] stream_out_tdata,
    output logic        stream_out_tlast,
    //Ack in interface
    input        ack_in_tvalid,
    output logic ack_in_tready,
    input [63:0] ack_in_tdata,
    //Ack out interface
    output       ack_out_tvalid,
    input        ack_out_tready,
    output [7:0] ack_out_tdata
);

    wire imp_st_out_tvalid;
    wire imp_st_out_tready;
    wire [1:0] imp_st_out_tdest;
    wire [63:0] imp_st_out_tdata;
    wire imp_st_out_tlast;

    if (IMP) begin : genIMP
        localparam TASK_LEN = 3+MAX_ARGS_PER_TASK+MAX_DEPS_PER_TASK+MAX_OWNS_PER_TASK+MAX_COPS_PER_TASK*2;
        localparam CMD_BUF_SLOT_WIDTH = $clog2(TASK_LEN);

        wire cmd_buf_full;
        wire cmd_buf_write;
        wire cmd_buf_read;
        wire cmd_buf_slot_we;
        wire [CMD_BUF_SLOT_WIDTH-1:0] cmd_buf_slot_wr_addr;
        wire [63:0] cmd_buf_slot_wr_data;
        wire [1:0] cmd_buf_slot_wr_type;
        wire cmd_buf_slot_wr_last;
        wire cmd_buf_slot_re;
        wire [CMD_BUF_SLOT_WIDTH-1:0] cmd_buf_slot_rd_addr;
        wire [63:0] cmd_buf_slot_rd_data;
        wire [1:0] cmd_buf_slot_rd_type;
        wire cmd_buf_slot_rd_last;
        wire [$clog2(TASK_LEN+1)-1:0] cmd_buf_slot_rd_count;

        new_task_acc_intf #(
            .TASK_LEN(TASK_LEN)
        ) new_task_acc_intf_I (
            .clk(clk),
            .rstn(rstn),
            .stream_in_tvalid(stream_in_tvalid),
            .stream_in_tready(stream_in_tready),
            .stream_in_tdest(stream_in_tdest),
            .stream_in_tdata(stream_in_tdata),
            .stream_in_tlast(stream_in_tlast),
            .cmd_buffer_full(cmd_buf_full),
            .cmd_buffer_write(cmd_buf_write),
            .cmd_buf_slot_we(cmd_buf_slot_we),
            .cmd_buf_slot_addr(cmd_buf_slot_wr_addr),
            .cmd_buf_slot_data(cmd_buf_slot_wr_data),
            .cmd_buf_slot_type(cmd_buf_slot_wr_type),
            .cmd_buf_slot_last(cmd_buf_slot_wr_last)
        );

        cmd_buffer #(
            .BUFFER_LEN(BUFFER_LEN),
            .SLOT_LEN(TASK_LEN)
        ) cmd_buffer_I (
            .clk(clk),
            .rstn(rstn),
            .full(cmd_buf_full),
            .write(cmd_buf_write),
            .read(cmd_buf_read),
            .slot_we(cmd_buf_slot_we),
            .slot_wr_addr(cmd_buf_slot_wr_addr),
            .slot_wr_data(cmd_buf_slot_wr_data),
            .slot_wr_type(cmd_buf_slot_wr_type),
            .slot_wr_last(cmd_buf_slot_wr_last),
            .slot_re(cmd_buf_slot_re),
            .slot_rd_addr(cmd_buf_slot_rd_addr),
            .slot_rd_data(cmd_buf_slot_rd_data),
            .slot_rd_type(cmd_buf_slot_rd_type),
            .slot_rd_last(cmd_buf_slot_rd_last),
            .slot_rd_count(cmd_buf_slot_rd_count)
        );

        imp_preprocessor #(
            .MAX_ARGS_PER_TASK(MAX_ARGS_PER_TASK),
            .MAX_DEPS_PER_TASK(MAX_DEPS_PER_TASK),
            .MAX_COPS_PER_TASK(MAX_COPS_PER_TASK),
            .MAX_OWNS_PER_TASK(MAX_OWNS_PER_TASK),
            .MAX_CLUSTER_SIZE(MAX_CLUSTER_SIZE)
        ) imp_preprocessor_I (
            .clk(clk),
            .rstn(rstn),
            .ompif_rank(ompif_rank),
            .buffer_read(cmd_buf_read),
            .slot_re(cmd_buf_slot_re),
            .slot_addr(cmd_buf_slot_rd_addr),
            .slot_data(cmd_buf_slot_rd_data),
            .slot_type(cmd_buf_slot_rd_type),
            .slot_last(cmd_buf_slot_rd_last),
            .slot_count(cmd_buf_slot_rd_count),
            .stream_out_tvalid(imp_st_out_tvalid),
            .stream_out_tready(imp_st_out_tready),
            .stream_out_tdest(imp_st_out_tdest),
            .stream_out_tdata(imp_st_out_tdata),
            .stream_out_tlast(imp_st_out_tlast)
        );
    end else begin
        assign imp_st_out_tvalid = stream_in_tvalid;
        assign stream_in_tready = imp_st_out_tready;
        assign imp_st_out_tdest = stream_in_tdest;
        assign imp_st_out_tdata = stream_in_tdata;
        assign imp_st_out_tlast = stream_in_tlast;
    end

    newtask_spawner #(
        .MAX_ARGS_PER_TASK(MAX_ARGS_PER_TASK),
        .MAX_DEPS_PER_TASK(MAX_DEPS_PER_TASK),
        .MAX_COPS_PER_TASK(MAX_COPS_PER_TASK)
    ) newtask_spawner_I (
        .clk(clk),
        .rstn(rstn),
        .stream_in_tvalid(imp_st_out_tvalid),
        .stream_in_tready(imp_st_out_tready),
        .stream_in_tdest(imp_st_out_tdest),
        .stream_in_tdata(imp_st_out_tdata),
        .stream_in_tlast(imp_st_out_tlast),
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
