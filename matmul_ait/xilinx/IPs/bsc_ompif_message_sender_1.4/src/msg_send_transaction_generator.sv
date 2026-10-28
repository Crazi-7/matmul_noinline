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

module msg_send_transaction_generator #(
    parameter ADDR_WIDTH = 0,
    parameter DATA_WIDTH = 0,
    parameter BTT_WIDTH = 0
) (
    input clk,
    input rstn,

    input start,
    input [BTT_WIDTH-1:0] btt,
    input [ADDR_WIDTH-1:0] initial_addr,

    output addr_req_valid,
    input addr_req_ready,
    output [ADDR_WIDTH-1:0] addr_req_addr,
    output [7:0] addr_req_len,
    output addr_req_last
);

    localparam BYTES_PER_TRANSFER = DATA_WIDTH/8;
    localparam LOW_ALIGN_BITS = $clog2(BYTES_PER_TRANSFER);
    localparam ALIGN_ADDR_WIDTH = ADDR_WIDTH-LOW_ALIGN_BITS;
    localparam ALIGN_4K_LOW = 12-LOW_ALIGN_BITS;
    localparam TRANSFER_WIDTH = BTT_WIDTH-LOW_ALIGN_BITS+1;

    typedef enum bit [1:0] {
        IDLE,
        COMPUTE_TRANSACTION,
        SEND_TRANSACTION
    } State_t;

    State_t state = IDLE;

    reg [TRANSFER_WIDTH-1:0] transfers_left;
    reg [ALIGN_ADDR_WIDTH-1:0] addr;

    reg [7:0] len;
    wire [8:0] transfers;

    wire [7:0] transaction_len;
    wire [ALIGN_4K_LOW+1:0] next_4k_len_aux;
    wire [7:0] next_4k_len;
    wire [ALIGN_4K_LOW-1:0] addr_4k_rem;

    assign addr_4k_rem = addr[ALIGN_4K_LOW-1:0];

    assign transaction_len = transfers_left > 9'd256 ? 8'd255 : (transfers_left-1'd1);
    assign next_4k_len_aux = {1'b1, {ALIGN_4K_LOW{1'b0}}} - {1'b0, addr_4k_rem};
    assign next_4k_len = next_4k_len_aux - 1'b1;

    assign transfers = len + 8'd1;

    assign addr_req_valid = state == SEND_TRANSACTION;
    assign addr_req_addr = {addr, {LOW_ALIGN_BITS{1'b0}}};
    assign addr_req_len = len;
    assign addr_req_last = transfers == transfers_left;

    always_ff @(posedge clk) begin

        case (state)

            IDLE: begin
                transfers_left <= btt[BTT_WIDTH-1:LOW_ALIGN_BITS] + (|btt[LOW_ALIGN_BITS-1:0] ? 1'd1 : 1'd0);
                addr <= initial_addr[ADDR_WIDTH-1:LOW_ALIGN_BITS];
                if (start) begin
                    state <= COMPUTE_TRANSACTION;
                end
            end

            COMPUTE_TRANSACTION: begin
                //If there is an overflow (more than 256 transfers to reach next 4K page), do not compare with the 4k length register
                if (next_4k_len_aux[ALIGN_4K_LOW:0] <= 9'd256) begin
                    len <= transaction_len < next_4k_len ? transaction_len : next_4k_len;
                end else begin
                    //We don't compare because next_4k_len has an overflow
                    len <= transaction_len;
                end
                state <= SEND_TRANSACTION;
            end

            SEND_TRANSACTION: begin
                if (addr_req_ready) begin
                    addr <= addr + transfers;
                    transfers_left <= transfers_left - transfers;
                    if (transfers == transfers_left) begin
                        state <= IDLE;
                    end else begin
                        state <= COMPUTE_TRANSACTION;
                    end
                end
            end

        endcase

        if (!rstn) begin
            state <= IDLE;
        end
    end

endmodule
