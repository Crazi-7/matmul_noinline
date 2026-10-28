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

package OmpifPkg;

    typedef enum bit [2:0] {
        ID_MESSAGE_RECEIVER = 3'd0,
        ID_MESSAGE_SENDER = 3'd1,
        ID_PACKET_DECODER = 3'd2
    } DeviceID;

    localparam MSG_SIZE_L   = 0;
    localparam MSG_SIZE_H   = 15;
    localparam MSG_SEQ_L    = 16;
    localparam MSG_SEQ_H    = 31;
    localparam MSG_WINID_L  = 32;
    localparam MSG_WINID_H  = 33;
    localparam MSG_WINLEN_L = 36;
    localparam MSG_WINLEN_H = 37;
    localparam MSG_PARITY_B = 40;
    localparam MSG_TAG_L    = 44;
    localparam MSG_TAG_H    = 51;
    localparam MSG_TYPE_B   = 52;
    localparam MSG_SRC_L    = 56;
    localparam MSG_SRC_H    = 63;

    localparam DATA_TYPE = 1'b0;
    localparam ACK_TYPE = 1'b1;

endpackage
