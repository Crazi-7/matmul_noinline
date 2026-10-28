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

package Constants;

    localparam CMD_TYPE_L = 0;
    localparam CMD_TYPE_H = 7;
    localparam TAG_L = 8;
    localparam TAG_H = 15;
    localparam DST_RANK_L = 16;
    localparam DST_RANK_H = 23;
    localparam ADDR_L = 24;
    localparam ADDR_H = 63;

    localparam SIZE_L = 0;
    localparam SIZE_H = 31;

    localparam MSG_MAX_WIN_LEN = 3;

    typedef enum bit [7:0] {
        SEND = 0,
        SENDALL = 1
    } CmdType;

endpackage

interface AXI4Read #(parameter AXI_ADDR_WIDTH = 0, parameter AXI_DATA_WIDTH = 0) ();

    logic arvalid;
    logic arready;
    logic [AXI_ADDR_WIDTH-1:0] araddr;
    logic [7:0] arlen;

    logic rvalid;
    logic rready;
    logic [AXI_DATA_WIDTH-1:0] rdata;
    logic rlast;
    logic [1:0] rresp;

    modport master(output arvalid, input arready, output araddr, output arlen,
                   input rvalid, output rready, input rdata, input rlast, input rresp);
    modport observer(input arvalid, input arready, input araddr, input arlen,
                   input rvalid, input rready, input rdata, input rlast, input rresp);

endinterface

interface AXIStreamAck #(parameter DATA_WIDTH = 0) ();

    logic valid;
    logic ready;
    logic [DATA_WIDTH-1:0] data;

    modport master(output valid, input ready, output data);
    modport slave(input valid, output ready, input data);

endinterface

interface AXIStreamMsg #(parameter DATA_WIDTH = 0) ();

    logic valid;
    logic ready;
    logic [DATA_WIDTH-1:0] data;
    logic [DATA_WIDTH/8-1:0] keep;
    logic last;
    logic [7:0] dest;

    modport master(output valid, input ready, output data, output keep, output last, output dest);
    modport slave(input valid, output ready, input data, input keep, input last, input dest);

endinterface

