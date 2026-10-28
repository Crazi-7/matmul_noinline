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

// This implementation doesn't support early timeout (timeout triggered before
// the ack arrives). In this case, the sender will receive two acks from both
// sends. If the destination of the next send is the same there's no problem
// because the parity would change. If there is a different destination,
// the parity could be the same and the message sender would think that ack is
// from the actual send. In reality it is a duplicated ack from a previous
// send. The solution is simple: check both parity and source of the ack.
module message_send #(
    parameter MAX_DEVICES = 63,
    parameter MAX_TIMEOUT = 0,
    parameter MAX_TIMEOUT_RAND_RANGE = 0,
    parameter DEBUG = 0,
    parameter TOTAL_LAT_WIDTH = 64,
    parameter AXI_ADDR_WIDTH = 32,
    parameter AXI_DATA_WIDTH = 0,
    parameter MSG_DATA_SIZE = 0,
    parameter MAX_RETRIES = 0,
    localparam CLUST_BITS = $clog2(MAX_DEVICES)
) (
    input clk,
    input rstn,
    input start,
    input [CLUST_BITS-1:0] cluster_rank,
    output logic finish,
    input [AXI_ADDR_WIDTH-1:0] start_addr,
    input [31:0] start_size,
    input [CLUST_BITS-1:0] dst_rank,
    input [7:0] tag,
    input [31:0] timeout,
    input [2:0] timeout_rand_select,
    output reg [31:0] dbg_min_send,
    output reg [31:0] dbg_max_send,
    output reg [TOTAL_LAT_WIDTH-1:0] dbg_total_issue_read,
    output reg [TOTAL_LAT_WIDTH-1:0] dbg_total_wait_data,
    output reg [TOTAL_LAT_WIDTH-1:0] dbg_total_send_data,
    output [31:0] dbg_max_lat,
    output [31:0] dbg_min_lat,
    output reg [TOTAL_LAT_WIDTH-1:0] dbg_total_lat,
    output reg [TOTAL_LAT_WIDTH-1:0] dbg_total_timeout_lat,
    output reg [31:0] dbg_total_sends,
    output reg [31:0] dbg_unexpected_acks,
    output reg [31:0] dbg_total_timeouts,
    output reg err_max_retries,
    AXIStreamMsg.master soMsg,
    AXIStreamAck.slave siAck,
    AXI4Read.master moMEM
);

    import Constants::*;
    import OmpifPkg::*;

    localparam TIME_WIDTH = $clog2(MAX_TIMEOUT+(MAX_TIMEOUT_RAND_RANGE-1) + 1);
    localparam TIMEOUT_RAND_WIDTH = $clog2(MAX_TIMEOUT_RAND_RANGE*2);
    localparam BYTES_PER_TRANSFER = AXI_DATA_WIDTH/8;
    localparam LOW_ALIGN_BITS = $clog2(BYTES_PER_TRANSFER);
    localparam SEED_WIDTH = $clog2(MAX_DEVICES+1);
    localparam MSG_DATA_WIDTH = $clog2(MSG_DATA_SIZE+1);
    localparam RETRIES_WIDTH = $clog2(MAX_RETRIES+1);

    typedef enum bit[3:0] {
        IDLE,
        CALCULATE_MSG_SIZE,
        WAIT_DATA,
        SEND_HEADER,
        SEND_DATA,
        CHECK_STATE,
        WAIT_ACK,
        FINISH,
        ERR_STATE
    } State;

    reg [MAX_DEVICES-1:0] parity_states;

    State state;
    reg [AXI_ADDR_WIDTH-1:0] initial_addr;
    reg [AXI_ADDR_WIDTH-1:0] addr;
    reg [31:0] initial_size;
    reg [31:0] size;
    reg [MSG_DATA_WIDTH-1:0] msg_size;
    reg [15:0] initial_seq_num;
    reg [15:0] seq_num;
    reg [1:0] win_len;
    reg [1:0] win_id;
    reg [TIME_WIDTH-1:0] count;
    reg [TIME_WIDTH-1:0] timeout_val;
    reg [TIME_WIDTH-1:0] timeout_rand_signed;
    reg parity;
    reg lfsr_step;
    reg [RETRIES_WIDTH-1:0] retries;
    wire [AXI_DATA_WIDTH/8-1:0] last_tkeep;
    wire [23:0] lfsr_val;
    logic [23:0] lfsr_mask;
    logic [23:0] timeout_rand_range;
    wire [SEED_WIDTH-1:0] lfsr_seed;

    reg tg_start;
    wire tg_last;
    reg last_transaction;

    reg [1:0] transaction_count;

    assign lfsr_seed = cluster_rank + {{CLUST_BITS-1{1'b0}}, 1'b1};

    message_sender_lfsr lfsr (
        .clk(clk),
        .rstn(rstn),
        .step(lfsr_step),
        .seed({{24-SEED_WIDTH{1'b0}}, lfsr_seed}),
        .val(lfsr_val)
    );

    msg_send_transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(AXI_DATA_WIDTH),
        .BTT_WIDTH(MSG_DATA_WIDTH)
    ) transaction_generator_I (
        .clk(clk),
        .rstn(rstn),
        .start(tg_start),
        .btt(msg_size),
        .initial_addr(addr),
        .addr_req_valid(moMEM.arvalid),
        .addr_req_ready(moMEM.arready),
        .addr_req_addr(moMEM.araddr),
        .addr_req_len(moMEM.arlen),
        .addr_req_last(tg_last)
    );

    assign siAck.ready = 1'b1;

    assign last_tkeep = (msg_size[LOW_ALIGN_BITS-1:0] == {LOW_ALIGN_BITS{1'b0}}) ?
        {AXI_DATA_WIDTH/8{1'b1}} :
        ~({AXI_DATA_WIDTH/8{1'b1}} << msg_size[LOW_ALIGN_BITS-1:0]);

    always_comb begin
        case (timeout_rand_select[2:0])

            //2**24
            3'd6: begin
                lfsr_mask = {24{1'b1}};
                timeout_rand_range = 2**23;
            end

            //2**23
            3'd5: begin
                lfsr_mask = {24{1'b1}} >> 1;
                timeout_rand_range = 2**22;
            end

            //2**22
            3'd4: begin
                lfsr_mask = {24{1'b1}} >> 2;
                timeout_rand_range = 2**21;
            end

            //2**21
            3'd3: begin
                lfsr_mask = {24{1'b1}} >> 2;
                timeout_rand_range = 2**20;
            end

            //2**18
            3'd2: begin
                lfsr_mask = {24{1'b1}} >> 6;
                timeout_rand_range = 2**17;
            end

            //2**10
            3'd1: begin
                lfsr_mask = {24{1'b1}} >> 14;
                timeout_rand_range = 2**9;
            end

            //2**5
            default: begin
                lfsr_mask = {24{1'b1}} >> 19;
                timeout_rand_range = 2**4;
            end

        endcase
    end

    always_comb begin
        soMsg.valid = 1'b0;
        soMsg.data = moMEM.rdata;
        soMsg.dest = 8'd0;
        soMsg.dest[CLUST_BITS-1:0] = dst_rank;
        soMsg.keep = {AXI_DATA_WIDTH/8{1'b1}};
        soMsg.last = moMEM.rlast && transaction_count == 2'd1 && last_transaction;

        moMEM.rready = 1'b0;

        finish = 1'b0;

        case (state)

            SEND_HEADER: begin
                soMsg.data[MSG_SRC_L +: CLUST_BITS] = cluster_rank;
                soMsg.data[MSG_SIZE_L +: MSG_DATA_WIDTH] = msg_size;
                soMsg.data[MSG_SEQ_H:MSG_SEQ_L] = seq_num;
                soMsg.data[MSG_WINID_H:MSG_WINID_L] = win_id;
                soMsg.data[MSG_WINLEN_H:MSG_WINLEN_L] = win_len;
                soMsg.data[MSG_TAG_H:MSG_TAG_L] = tag;
                soMsg.data[MSG_PARITY_B] = parity;
                soMsg.data[MSG_TYPE_B] = DATA_TYPE;
                soMsg.valid = 1'b1;
                soMsg.last = 1'b0;
            end

            SEND_DATA: begin
                soMsg.valid = moMEM.rvalid;
                moMEM.rready = soMsg.ready;
                soMsg.keep = moMEM.rlast && transaction_count == 2'd1 && last_transaction ? last_tkeep : {AXI_DATA_WIDTH/8{1'b1}};
            end

            FINISH: begin
                finish = 1'b1;
            end

            default: begin

            end

        endcase
    end

    if (DEBUG) begin : dbg_gen

        reg [TIME_WIDTH-1:0] act_max_lat;
        reg [TIME_WIDTH-1:0] act_min_lat;
        reg [TIME_WIDTH-1:0] latency;
        wire [31:0] next_send_count;
        reg [31:0] send_count;

        assign dbg_max_lat = {{32-TIME_WIDTH{1'b0}}, act_max_lat};
        assign dbg_min_lat = {{32-TIME_WIDTH{1'b0}}, act_min_lat};

        assign next_send_count = send_count + 32'd1;

        always_ff @(posedge clk) begin

            if (siAck.valid && (state != WAIT_ACK || siAck.data[0] != parity)) begin
                dbg_unexpected_acks <= dbg_unexpected_acks + 32'd1;
            end

            case (state)

                CALCULATE_MSG_SIZE: begin
                    send_count <= 32'd0;
                    latency <= {TIME_WIDTH{1'b0}};
                    dbg_total_issue_read <= dbg_total_issue_read + {{TOTAL_LAT_WIDTH-1{1'b0}}, 1'b1};
                end

                WAIT_DATA: begin
                    send_count <= next_send_count;
                    dbg_total_wait_data <= dbg_total_wait_data + {{TOTAL_LAT_WIDTH-1{1'b0}}, 1'b1};
                end

                SEND_HEADER: begin
                    send_count <= next_send_count;
                    dbg_total_send_data <= dbg_total_send_data + {{TOTAL_LAT_WIDTH-1{1'b0}}, 1'b1};
                end

                SEND_DATA: begin
                    send_count <= next_send_count;
                    dbg_total_send_data <= dbg_total_send_data + {{TOTAL_LAT_WIDTH-1{1'b0}}, 1'b1};
                end

                CHECK_STATE: begin
                    if (send_count > dbg_max_send) begin
                        dbg_max_send <= send_count;
                    end
                    if (send_count < dbg_min_send) begin
                        dbg_min_send <= send_count;
                    end
                end

                WAIT_ACK: begin
                    latency <= latency + {{TIME_WIDTH-1{1'b0}}, 1'b1};
                    if (siAck.valid && siAck.data[0] == parity) begin
                        dbg_total_sends <= dbg_total_sends + 32'd1;
                        dbg_total_lat <= dbg_total_lat + {{TOTAL_LAT_WIDTH-TIME_WIDTH{1'b0}}, latency};
                        if (latency > act_max_lat) begin
                            act_max_lat <= latency;
                        end
                        if (latency < act_min_lat) begin
                            act_min_lat <= latency;
                        end
                    end else if (count == {TIME_WIDTH{1'b0}}) begin
                        dbg_total_timeouts <= dbg_total_timeouts + 32'd1;
                        dbg_total_timeout_lat <= dbg_total_timeout_lat + {{TOTAL_LAT_WIDTH-TIME_WIDTH{1'b0}}, latency};
                    end
                end

            endcase

            if (!rstn) begin
                act_max_lat <= {TIME_WIDTH{1'b0}};
                act_min_lat <= {TIME_WIDTH{1'b1}};
                dbg_total_lat <= {TOTAL_LAT_WIDTH{1'b0}};
                dbg_total_timeout_lat <= {TOTAL_LAT_WIDTH{1'b0}};
                dbg_total_sends <= 32'd0;
                dbg_unexpected_acks <= 32'd0;
                dbg_total_timeouts <= 32'd0;
                dbg_min_send <= 32'hFFFFFFFF;
                dbg_max_send <= 32'd0;
                dbg_total_issue_read <= {TOTAL_LAT_WIDTH{1'b0}};
                dbg_total_wait_data <= {TOTAL_LAT_WIDTH{1'b0}};
                dbg_total_send_data <= {TOTAL_LAT_WIDTH{1'b0}};
            end
        end

    end else begin
        assign dbg_max_lat = '0;
        assign dbg_min_lat = '0;
        assign dbg_unexpected_acks = '0;
        assign dbg_total_lat = '0;
        assign dbg_total_sends = '0;
        assign dbg_total_timeouts = '0;
    end

    always_ff @(posedge clk) begin
        if (tg_start) begin
            last_transaction <= 1'b0;
        end
        if (moMEM.arvalid && moMEM.arready && tg_last) begin
            last_transaction <= 1'b1;
        end
        if ((moMEM.arvalid && moMEM.arready) && !(moMEM.rvalid && moMEM.rready && moMEM.rlast)) begin
            transaction_count <= transaction_count + 2'd1;
        end else if (!(moMEM.arvalid && moMEM.arready) && (moMEM.rvalid && moMEM.rready && moMEM.rlast)) begin
            transaction_count <= transaction_count - 2'd1;
        end

        if (!rstn) begin
            transaction_count <= 2'd0;
        end
    end

    always_ff @(posedge clk) begin

        lfsr_step <= 1'b0;
        timeout_rand_signed <= (lfsr_val[TIMEOUT_RAND_WIDTH-1:0] & lfsr_mask[TIMEOUT_RAND_WIDTH-1:0]) - timeout_rand_range[TIMEOUT_RAND_WIDTH-1:0];
        timeout_val <= timeout[TIME_WIDTH-1:0] + timeout_rand_signed;

        tg_start <= 1'b0;

        case (state)

            IDLE: begin
                retries <= MAX_RETRIES;
                addr <= start_addr;
                size <= start_size;
                initial_addr <= start_addr;
                initial_size <= start_size;
                win_id <= 2'd0;
                seq_num <= 16'd0;
                initial_seq_num <= 16'd0;
                parity <= parity_states[dst_rank];
                if (MSG_MAX_WIN_LEN == 3 && start_size[23:0] > 3*MSG_DATA_SIZE) begin
                    win_len <= 2'd3;
                end else if (MSG_MAX_WIN_LEN >= 2 && start_size[23:0] > 2*MSG_DATA_SIZE) begin
                    win_len <= 2'd2;
                end else if (MSG_MAX_WIN_LEN >= 1 && start_size[23:0] > 1*MSG_DATA_SIZE) begin
                    win_len <= 2'd1;
                end else begin
                    win_len <= 2'd0;
                end
                if (start) begin
                    state <= CALCULATE_MSG_SIZE;
                end
            end

            CALCULATE_MSG_SIZE: begin
                lfsr_step <= 1'b1;
                msg_size <= size > MSG_DATA_SIZE ? MSG_DATA_SIZE : size;
                tg_start <= 1'b1;
                state <= WAIT_DATA;
            end

            WAIT_DATA: begin
                if (moMEM.rvalid) begin
                    state <= SEND_HEADER;
                end
            end

            SEND_HEADER: begin
                if (soMsg.ready) begin
                    state <= SEND_DATA;
                end
            end

            SEND_DATA: begin
                if (moMEM.rvalid && soMsg.ready && moMEM.rlast && transaction_count == 2'd1 && last_transaction) begin
                    state <= CHECK_STATE;
                end
            end

            CHECK_STATE: begin
                addr <= addr + {{AXI_ADDR_WIDTH-MSG_DATA_WIDTH{1'b0}}, msg_size};
                size <= size - {{32-MSG_DATA_WIDTH{1'b0}}, msg_size};
                seq_num <= seq_num + 16'd1;
                count <= timeout_val;
                if (win_id == win_len) begin
                    win_id <= 2'd0;
                    state <= WAIT_ACK;
                end else begin
                    win_id <= win_id + 2'd1;
                    state <= CALCULATE_MSG_SIZE;
                end
            end

            WAIT_ACK: begin
                count <= count - {{TIME_WIDTH-1{1'b0}}, 1'b1};
                if (siAck.valid && siAck.data[0] == parity) begin
                    retries <= MAX_RETRIES;
                    parity <= !parity;

                    initial_seq_num <= seq_num;
                    initial_size <= size;
                    initial_addr <= addr;

                    if (MSG_MAX_WIN_LEN == 3 && size > 3*MSG_DATA_SIZE) begin
                        win_len <= 2'd3;
                    end else if (MSG_MAX_WIN_LEN >= 2 && size > 2*MSG_DATA_SIZE) begin
                        win_len <= 2'd2;
                    end else if (MSG_MAX_WIN_LEN >= 1 && size > 1*MSG_DATA_SIZE) begin
                        win_len <= 2'd1;
                    end else begin
                        win_len <= 2'd0;
                    end

                    if (size == 32'd0) begin
                        state <= FINISH;
                    end else begin
                        state <= CALCULATE_MSG_SIZE;
                    end
                end else if (count == {TIME_WIDTH{1'b0}}) begin
                    addr <= initial_addr;
                    size <= initial_size;
                    seq_num <= initial_seq_num;
                    retries <= retries - {{RETRIES_WIDTH-1{1'b0}}, 1'b1};
                    if (retries == {RETRIES_WIDTH{1'b0}}) begin
                        state <= ERR_STATE;
                    end else begin
                        state <= CALCULATE_MSG_SIZE;
                    end
                end
            end

            FINISH: begin
                state <= IDLE;
                parity_states[dst_rank] <= parity;
            end

            ERR_STATE: begin
                err_max_retries <= 1'b1;
            end

        endcase

        if (!rstn) begin
            parity_states <= {MAX_DEVICES{1'b0}};
            err_max_retries <= 1'b0;
            state <= IDLE;
        end
    end

endmodule
