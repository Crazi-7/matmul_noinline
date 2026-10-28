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

module message_sender_lfsr (
    input clk,
    input rstn,
    input step,
    input [23:0] seed,
    output [23:0] val
);

    reg [23:0] lfsr;
    wire output_bit;

    assign output_bit = lfsr[0] ^ lfsr[1] ^ lfsr[2] ^ lfsr[7];
    assign val = lfsr;

    always_ff @(posedge clk) begin

        if (step) begin
            lfsr <= {output_bit, lfsr[23:1]};
        end

        if (!rstn) begin
            lfsr <= seed;
        end
    end

endmodule
