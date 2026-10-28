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

module new_task_acc_intf #(
    parameter TASK_LEN = 0,
    localparam CMD_BUF_WIDTH = $clog2(TASK_LEN)
) (
    input clk,
    input rstn,
    //Input stream from accelerator
    input         stream_in_tvalid,
    output        stream_in_tready,
    input  [1:0]  stream_in_tdest,
    input  [63:0] stream_in_tdata,
    input         stream_in_tlast,

    input cmd_buffer_full,
    output cmd_buffer_write,
    output cmd_buf_slot_we,
    output reg [CMD_BUF_WIDTH-1:0] cmd_buf_slot_addr,
    output [63:0] cmd_buf_slot_data,
    output [1:0] cmd_buf_slot_type,
    output cmd_buf_slot_last
);

    assign stream_in_tready = !cmd_buffer_full;
    assign cmd_buffer_write = !cmd_buffer_full && stream_in_tvalid && stream_in_tlast;
    assign cmd_buf_slot_we = stream_in_tvalid && !cmd_buffer_full;
    assign cmd_buf_slot_data = stream_in_tdata;
    assign cmd_buf_slot_type = stream_in_tdest;
    assign cmd_buf_slot_last = stream_in_tlast;

    always_ff @(posedge clk) begin
        if (stream_in_tvalid && !cmd_buffer_full) begin
            if (stream_in_tlast) begin
                cmd_buf_slot_addr <= {CMD_BUF_WIDTH{1'b0}};
            end else begin
                cmd_buf_slot_addr <= cmd_buf_slot_addr + {{CMD_BUF_WIDTH-1{1'b0}}, 1'b1};
            end
        end

        if (!rstn) begin
            cmd_buf_slot_addr <= {CMD_BUF_WIDTH{1'b0}};
        end
    end

endmodule
