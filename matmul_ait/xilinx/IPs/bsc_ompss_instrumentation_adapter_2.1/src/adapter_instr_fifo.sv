/**************************************************************************************/
/*  (C) Copyright 2017-2026 Barcelona Supercomputing Center                           */
/*                          Centro Nacional de Supercomputacion                       */
/*                                                                                    */
/*  This source describes Open Hardware and is licensed under the CERN-OHL-W v2       */
/*  You may redistribute and modify this documentation and make products              */
/*  using it under the terms of the CERN-OHL-W v2 (https://cern.ch/cern-ohl).         */
/*  This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED                  */
/*  WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY                      */
/*  AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN-OHL-W v2                */
/*  for applicable conditions.                                                        */
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/instrumentation_adapter  */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on            */
/*  these sources, You must maintain the Source Location visible on the               */
/*  external case of the White Rabbit switch or other product you make using          */
/*  this documentation.                                                               */
/*                                                                                    */
/**************************************************************************************/

module adapter_instr_fifo #(
    parameter LEN = 0,
    parameter COUNTER_WIDTH = 0
) (
    input clk,
    input rstn,
    input si_tvalid,
    output si_tready,
    input [104:0] si_tdata,
    output so_tvalid,
    input so_tready,
    output [104:0] so_tdata,
    output [COUNTER_WIDTH-1:0] so_timestamp
);

    reg [COUNTER_WIDTH-1:0] counter = {COUNTER_WIDTH{1'b0}};

    always_ff @(posedge clk) begin
        counter <= counter + {{COUNTER_WIDTH-1{1'b0}}, 1'b1};
    end

    localparam ADDR_W = $clog2(LEN);
    localparam WIDTH = 105 + COUNTER_WIDTH;

    wire read;
    wire write;
    wire full;
    wire empty;
    reg [WIDTH-1:0] dout;

    reg [ADDR_W:0] rd_addr = '0;
    reg [ADDR_W:0] wr_addr = '0;

    wire [ADDR_W:0] next_rd_addr;
    wire [ADDR_W:0] next_wr_addr;

    assign write = si_tvalid && !full;
    assign read = !empty && so_tready;
    assign si_tready = !full;
    assign so_tvalid = !empty;
    assign so_tdata = dout[WIDTH-1:COUNTER_WIDTH];
    assign so_timestamp = dout[COUNTER_WIDTH-1:0];

    assign full = rd_addr[ADDR_W-1:0] == wr_addr[ADDR_W-1:0] && (rd_addr[ADDR_W] != wr_addr[ADDR_W]);
    assign empty = rd_addr == wr_addr;

    //Power of 2
    if (LEN & (LEN-1) == 0) begin
        assign next_rd_addr = rd_addr + {{ADDR_W{1'b0}}, 1'b1};
        assign next_wr_addr = wr_addr + {{ADDR_W{1'b0}}, 1'b1};
    end else begin
        assign next_rd_addr[ADDR_W-1:0] = (rd_addr[ADDR_W-1:0] == LEN-1) ? {ADDR_W{1'b0}} : rd_addr[ADDR_W-1:0] + {{ADDR_W-1{1'b0}}, 1'b1};
        assign next_rd_addr[ADDR_W]     = (rd_addr[ADDR_W-1:0] == LEN-1) ? !rd_addr[ADDR_W] : rd_addr[ADDR_W];
        assign next_wr_addr[ADDR_W-1:0] = (wr_addr[ADDR_W-1:0] == LEN-1) ? {ADDR_W{1'b0}} : wr_addr[ADDR_W-1:0] + {{ADDR_W-1{1'b0}}, 1'b1};
        assign next_wr_addr[ADDR_W]     = (wr_addr[ADDR_W-1:0] == LEN-1) ? !wr_addr[ADDR_W] : wr_addr[ADDR_W];
    end

    always_ff @(posedge clk) begin
        if (write) begin
            wr_addr <= next_wr_addr;
        end
        if (read) begin
            rd_addr <= next_rd_addr;
        end

        if (!rstn) begin
            rd_addr <= '0;
            wr_addr <= '0;
        end
    end

    reg [WIDTH-1:0] mem[LEN];

    always_ff @(posedge clk) begin
        dout <= mem[read ? next_rd_addr[ADDR_W-1:0] : rd_addr[ADDR_W-1:0]];
        if (write) begin
            mem[wr_addr[ADDR_W-1:0]] <= {si_tdata, counter};
            if (empty || (read && next_rd_addr[ADDR_W-1:0] == wr_addr[ADDR_W-1:0])) begin
                dout <= {si_tdata, counter};
            end
        end
    end
endmodule
