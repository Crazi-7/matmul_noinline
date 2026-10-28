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
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/message_sender      */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on       */
/*  these sources, You must maintain the Source Location visible on the          */
/*  external case of the White Rabbit switch or other product you make using     */
/*  this documentation.                                                          */
/*                                                                               */
/*********************************************************************************/

module message_sender_wrapper #(
    parameter MAX_DEVICES = 96,
    parameter STORE_PTID = 1,
    parameter MAX_TIMEOUT = 1000000,
    parameter MAX_TIMEOUT_RAND_RANGE = 1000000,
    parameter DEF_TIMEOUT = 1000000,
    parameter DEF_TIMEOUT_RAND_SELECT = 0,
    parameter DEBUG = 1,
    parameter CONTROL_INTF = 1,
    parameter TOTAL_LAT_WIDTH = 64,
    parameter AXI_ADDR_WIDTH = 34,
    parameter AXI_DATA_WIDTH = 512,
    parameter MSG_DATA_SIZE = 8960,
    parameter MAX_RETRIES = 128
) (
    input clk,
    input rstn,
    input [7:0] cluster_size,
    input [7:0] cluster_rank,
    output moMEM_arvalid,
    input moMEM_arready,
    output [AXI_ADDR_WIDTH-1:0] moMEM_araddr,
    output [7:0] moMEM_arlen,
    output [2:0] moMEM_arsize,
    output [1:0] moMEM_arburst,
    output [3:0] moMEM_arcache,
    input moMEM_rvalid,
    output moMEM_rready,
    input [AXI_DATA_WIDTH-1:0] moMEM_rdata,
    input moMEM_rlast,
    input [1:0] moMEM_rresp,
    input siCmd_tvalid,
    output siCmd_tready,
    input [63:0] siCmd_tdata,
    input siAck_tvalid,
    output siAck_tready,
    input [AXI_DATA_WIDTH-1:0] siAck_tdata,
    output soCmd_tvalid,
    input soCmd_tready,
    output [63:0] soCmd_tdata,
    output soCmd_tlast,
    output soMsg_tvalid,
    input soMsg_tready,
    output [AXI_DATA_WIDTH-1:0] soMsg_tdata,
    output [AXI_DATA_WIDTH/8-1:0] soMsg_tkeep,
    output soMsg_tlast,
    output [7:0] soMsg_tdest,
    input cntrl_arvalid,
    output cntrl_arready,
    input [2:0] cntrl_arprot,
    input [13:0] cntrl_araddr,
    output cntrl_rvalid,
    input cntrl_rready,
    output [31:0] cntrl_rdata,
    output [1:0] cntrl_rresp,
    input cntrl_awvalid,
    output cntrl_awready,
    input [2:0] cntrl_awprot,
    input [13:0] cntrl_awaddr,
    input cntrl_wvalid,
    output cntrl_wready,
    input [31:0] cntrl_wdata,
    input [3:0] cntrl_wstrb,
    output cntrl_bvalid,
    input cntrl_bready,
    output [1:0] cntrl_bresp
);
    message_sender #(
        .MAX_DEVICES(MAX_DEVICES),
        .STORE_PTID(STORE_PTID),
        .MAX_TIMEOUT(MAX_TIMEOUT),
        .MAX_TIMEOUT_RAND_RANGE(MAX_TIMEOUT_RAND_RANGE),
        .DEF_TIMEOUT(DEF_TIMEOUT),
        .DEF_TIMEOUT_RAND_SELECT(DEF_TIMEOUT_RAND_SELECT),
        .DEBUG(DEBUG),
        .CONTROL_INTF(CONTROL_INTF),
        .TOTAL_LAT_WIDTH(TOTAL_LAT_WIDTH),
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .MSG_DATA_SIZE(MSG_DATA_SIZE),
        .MAX_RETRIES(MAX_RETRIES)
    ) message_sender_I (
        .clk(clk),
        .rstn(rstn),
        .cluster_size(cluster_size),
        .cluster_rank(cluster_rank),
        .moMEM_arvalid(moMEM_arvalid),
        .moMEM_arready(moMEM_arready),
        .moMEM_araddr(moMEM_araddr),
        .moMEM_arlen(moMEM_arlen),
        .moMEM_arsize(moMEM_arsize),
        .moMEM_arburst(moMEM_arburst),
        .moMEM_arcache(moMEM_arcache),
        .moMEM_rvalid(moMEM_rvalid),
        .moMEM_rready(moMEM_rready),
        .moMEM_rdata(moMEM_rdata),
        .moMEM_rlast(moMEM_rlast),
        .moMEM_rresp(moMEM_rresp),
        .siCmd_tvalid(siCmd_tvalid),
        .siCmd_tready(siCmd_tready),
        .siCmd_tdata(siCmd_tdata),
        .siAck_tvalid(siAck_tvalid),
        .siAck_tready(siAck_tready),
        .siAck_tdata(siAck_tdata),
        .soCmd_tvalid(soCmd_tvalid),
        .soCmd_tready(soCmd_tready),
        .soCmd_tdata(soCmd_tdata),
        .soCmd_tlast(soCmd_tlast),
        .soMsg_tvalid(soMsg_tvalid),
        .soMsg_tready(soMsg_tready),
        .soMsg_tdata(soMsg_tdata),
        .soMsg_tkeep(soMsg_tkeep),
        .soMsg_tlast(soMsg_tlast),
        .soMsg_tdest(soMsg_tdest),
        .cntrl_arvalid(cntrl_arvalid),
        .cntrl_arready(cntrl_arready),
        .cntrl_arprot(cntrl_arprot),
        .cntrl_araddr(cntrl_araddr),
        .cntrl_rvalid(cntrl_rvalid),
        .cntrl_rready(cntrl_rready),
        .cntrl_rdata(cntrl_rdata),
        .cntrl_rresp(cntrl_rresp),
        .cntrl_awvalid(cntrl_awvalid),
        .cntrl_awready(cntrl_awready),
        .cntrl_awprot(cntrl_awprot),
        .cntrl_awaddr(cntrl_awaddr),
        .cntrl_wvalid(cntrl_wvalid),
        .cntrl_wready(cntrl_wready),
        .cntrl_wdata(cntrl_wdata),
        .cntrl_wstrb(cntrl_wstrb),
        .cntrl_bvalid(cntrl_bvalid),
        .cntrl_bready(cntrl_bready),
        .cntrl_bresp(cntrl_bresp)
    );
endmodule

