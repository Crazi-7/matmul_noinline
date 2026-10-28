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

module adapter_instr_wrapper #(
    parameter AXI_ADDR_WIDTH = 64,
    parameter COUNTER_WIDTH = 64,
    parameter FIFO_LEN = 32,
    parameter NUM_EVENTS_BITS = 32
) (
    input clk,
    input rstn,
    input event_in_tvalid,
    output event_in_tready,
    input [111:0] event_in_tdata,
    output instr_buf_arvalid,
    input instr_buf_arready,
    output [AXI_ADDR_WIDTH-1:0] instr_buf_araddr,
    output [7:0] instr_buf_arlen,
    output [2:0] instr_buf_arsize,
    output [1:0] instr_buf_arburst,
    output [3:0] instr_buf_arcache,
    input instr_buf_rvalid,
    output instr_buf_rready,
    input [63:0] instr_buf_rdata,
    input instr_buf_rlast,
    input [1:0] instr_buf_rresp,
    output instr_buf_awvalid,
    input instr_buf_awready,
    output [AXI_ADDR_WIDTH-1:0] instr_buf_awaddr,
    output [7:0] instr_buf_awlen,
    output [2:0] instr_buf_awsize,
    output [1:0] instr_buf_awburst,
    output [3:0] instr_buf_awcache,
    output instr_buf_wvalid,
    input instr_buf_wready,
    output [63:0] instr_buf_wdata,
    output [7:0] instr_buf_wstrb,
    output instr_buf_wlast,
    input instr_buf_bvalid,
    output instr_buf_bready,
    input [1:0] instr_buf_bresp
);
    adapter_instr #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .COUNTER_WIDTH(COUNTER_WIDTH) ,
        .FIFO_LEN(FIFO_LEN),
        .NUM_EVENTS_BITS(NUM_EVENTS_BITS)
    ) adapter_instr_I (
        .clk(clk),
        .rstn(rstn),
        .event_in_tvalid(event_in_tvalid),
        .event_in_tready(event_in_tready),
        .event_in_tdata(event_in_tdata),
        .instr_buf_arvalid(instr_buf_arvalid),
        .instr_buf_arready(instr_buf_arready),
        .instr_buf_araddr(instr_buf_araddr),
        .instr_buf_arlen(instr_buf_arlen),
        .instr_buf_arsize(instr_buf_arsize),
        .instr_buf_arburst(instr_buf_arburst),
        .instr_buf_arcache(instr_buf_arcache),
        .instr_buf_rvalid(instr_buf_rvalid),
        .instr_buf_rready(instr_buf_rready),
        .instr_buf_rdata(instr_buf_rdata),
        .instr_buf_rlast(instr_buf_rlast),
        .instr_buf_rresp(instr_buf_rresp),
        .instr_buf_awvalid(instr_buf_awvalid),
        .instr_buf_awready(instr_buf_awready),
        .instr_buf_awaddr(instr_buf_awaddr),
        .instr_buf_awlen(instr_buf_awlen),
        .instr_buf_awsize(instr_buf_awsize),
        .instr_buf_awburst(instr_buf_awburst),
        .instr_buf_awcache(instr_buf_awcache),
        .instr_buf_wvalid(instr_buf_wvalid),
        .instr_buf_wready(instr_buf_wready),
        .instr_buf_wdata(instr_buf_wdata),
        .instr_buf_wstrb(instr_buf_wstrb),
        .instr_buf_wlast(instr_buf_wlast),
        .instr_buf_bvalid(instr_buf_bvalid),
        .instr_buf_bready(instr_buf_bready),
        .instr_buf_bresp(instr_buf_bresp)
    );
endmodule
