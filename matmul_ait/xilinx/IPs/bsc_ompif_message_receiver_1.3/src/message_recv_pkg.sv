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

package MsgRecvConstants;

    localparam CMD_TYPE_L = 0;
    localparam CMD_TYPE_H = 7;
    localparam TAG_L = 8;
    localparam TAG_H = 15;
    localparam SRC_RANK_L = 16;
    localparam SRC_RANK_H = 23;
    localparam ADDR_L = 24;
    localparam ADDR_H = 63;

    localparam SIZE_L = 0;
    localparam SIZE_H = 31;

    localparam MEM_MSG_VALID_B = 32;

    localparam MSG_VALID = 1'd0;
    localparam MSG_READ = 1'd1;

    typedef enum bit [1:0] {
        READ_HEADER_CMD,
        WRITE_HEADER_CMD,
        MEMCPY_CMD
    } MemCmdType;

    typedef enum bit [7:0] {
        RECV = 0,
        RECVALL = 1
    } CmdType;

endpackage

interface AXI4 #(parameter AXI_ADDR_WIDTH = 0, parameter AXI_DATA_WIDTH = 0) ();

    logic arvalid;
    logic arready;
    logic [AXI_ADDR_WIDTH-1:0] araddr;
    logic [7:0] arlen;

    logic rvalid;
    logic rready;
    logic [AXI_DATA_WIDTH-1:0] rdata;
    logic rlast;
    logic [1:0] rresp;

    logic awvalid;
    logic awready;
    logic [AXI_ADDR_WIDTH-1:0] awaddr;
    logic [7:0] awlen;

    logic wvalid;
    logic wready;
    logic [AXI_DATA_WIDTH-1:0] wdata;
    logic [AXI_DATA_WIDTH/8-1:0] wstrb;
    logic wlast;

    logic bvalid;
    logic bready;
    logic [1:0] bresp;

    modport master(output arvalid, input arready, output araddr, output arlen,
                   input rvalid, output rready, input rdata, input rlast, input rresp,
                   output awvalid, input awready, output awaddr, output awlen,
                   output wvalid, input wready, output wdata, output wstrb, output wlast,
                   input bvalid, output bready, input bresp);
    modport observer(input arvalid, input arready, input araddr, input arlen,
                   input rvalid, input rready, input rdata, input rlast, input rresp,
                   input awvalid, input awready, input awaddr, input awlen,
                   input wvalid, input wready, input wdata, input wstrb, input wlast,
                   input bvalid, input bready, input bresp);

endinterface
