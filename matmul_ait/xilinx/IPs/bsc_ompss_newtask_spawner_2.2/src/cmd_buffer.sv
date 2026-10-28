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

module cmd_buffer #(
    parameter BUFFER_LEN = 0,
    parameter SLOT_LEN = 0,
    localparam BUF_WIDTH = $clog2(BUFFER_LEN),
    localparam SLOT_WIDTH = $clog2(SLOT_LEN)
) (
    input clk,
    input rstn,
    output full,
    input write,
    input read,
    input slot_we,
    input [SLOT_WIDTH-1:0] slot_wr_addr,
    input [63:0] slot_wr_data,
    input [1:0] slot_wr_type,
    input slot_wr_last,
    input slot_re,
    input [SLOT_WIDTH-1:0] slot_rd_addr,
    output [63:0] slot_rd_data,
    output [1:0] slot_rd_type,
    output slot_rd_last,
    output [$clog2(SLOT_LEN+1)-1:0] slot_rd_count
);

    reg [BUF_WIDTH:0] rd_addr;
    reg [BUF_WIDTH:0] wr_addr;
    reg [$clog2(SLOT_LEN+1)-1:0] slot_count[BUFFER_LEN];

    assign full = rd_addr[BUF_WIDTH-1:0] == wr_addr[BUF_WIDTH-1:0] && rd_addr[BUF_WIDTH] != wr_addr[BUF_WIDTH];

    assign slot_rd_count = slot_count[rd_addr[BUF_WIDTH-1:0]];

    always_ff @(posedge clk) begin
        if (slot_we) begin
            slot_count[wr_addr[BUF_WIDTH-1:0]] <= slot_count[wr_addr[BUF_WIDTH-1:0]] + 1;
        end

        if (write) begin
            wr_addr <= wr_addr + {{BUF_WIDTH{1'b0}}, 1'b1};
        end
        if (read) begin
            rd_addr <= rd_addr + {{BUF_WIDTH{1'b0}}, 1'b1};
            slot_count[rd_addr[BUF_WIDTH-1:0]] <= '0;
        end

        if (!rstn) begin
            rd_addr <= {BUF_WIDTH{1'b0}};
            wr_addr <= {BUF_WIDTH{1'b0}};
            for (int i = 0; i < BUFFER_LEN; ++i) begin
                slot_count[i] <= '0;
            end
        end
    end

    localparam SLOT_MEM_WIDTH = $clog2(SLOT_LEN*BUFFER_LEN);

    reg [64+2+1-1:0] slot_mem[SLOT_LEN*BUFFER_LEN];
    wire [SLOT_MEM_WIDTH-1:0] slot_mem_wr_addr;
    wire [SLOT_MEM_WIDTH-1:0] slot_mem_rd_addr;
    reg [64+2+1-1:0] slot_mem_dout;

    assign slot_mem_wr_addr = wr_addr[BUF_WIDTH-1:0]*SLOT_LEN + slot_wr_addr;
    assign slot_mem_rd_addr = rd_addr[BUF_WIDTH-1:0]*SLOT_LEN + slot_rd_addr;

    assign slot_rd_data = slot_mem_dout[63:0];
    assign slot_rd_type = slot_mem_dout[65:64];
    assign slot_rd_last = slot_mem_dout[66];

    always_ff @(posedge clk) begin
        if (slot_we) begin
            slot_mem[slot_mem_wr_addr] <= {slot_wr_last, slot_wr_type, slot_wr_data};
        end
    end

    always_ff @(posedge clk) begin
        if (slot_re) begin
            slot_mem_dout <= slot_mem[slot_mem_rd_addr];
        end
    end

endmodule
