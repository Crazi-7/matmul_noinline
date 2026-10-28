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

module imp_preprocessor #(
    parameter MAX_ARGS_PER_TASK = 0,
    parameter MAX_DEPS_PER_TASK = 0,
    parameter MAX_COPS_PER_TASK = 0,
    parameter MAX_OWNS_PER_TASK = 0,
    parameter MAX_CLUSTER_SIZE = 0,
    //First 3 words CMD, PTID and TTYPE
    localparam TASK_LEN = 3+MAX_ARGS_PER_TASK+MAX_DEPS_PER_TASK+MAX_OWNS_PER_TASK+MAX_COPS_PER_TASK*2,
    localparam CMD_BUF_WIDTH = $clog2(TASK_LEN)
) (
    input clk,
    input rstn,
    input [7:0] ompif_rank,
    output logic buffer_read,
    output logic slot_re,
    output reg [CMD_BUF_WIDTH-1:0] slot_addr,
    input [63:0] slot_data,
    input [1:0] slot_type,
    input slot_last,
    input [$clog2(TASK_LEN+1)-1:0] slot_count,
    output logic stream_out_tvalid,
    input stream_out_tready,
    output logic [1:0] stream_out_tdest,
    output logic [63:0] stream_out_tdata,
    output logic stream_out_tlast
);

    localparam NUM_ARGS_OFFSET = 8;
    localparam NUM_DEPS_OFFSET = 16;
    localparam NUM_COPS_OFFSET = 24;
    localparam NUM_OWNS_OFFSET = 32;
    localparam TASK_OWNER_OFFSET = 40;
    localparam HWR_NEWTASK_ID = 2'h2;
    localparam DEP_DIR_IN_B = 58;
    localparam DEP_DIR_OUT_B = 59;
    localparam INS_NUM_L = 40;
    localparam INS_NUM_H = 47;

    localparam BCAST_OWNR = 8'd255;

    localparam ARGS_BITS = $clog2(MAX_ARGS_PER_TASK+1);
    localparam DEPS_BITS = $clog2(MAX_DEPS_PER_TASK+1);
    localparam COPS_BITS = $clog2(MAX_COPS_PER_TASK+1);
    localparam OWNS_BITS = $clog2(MAX_OWNS_PER_TASK*2+3);
    localparam CLUST_BITS = $clog2(MAX_CLUSTER_SIZE);

    typedef enum bit [4:0] {
        IDLE,
        READ_CMD,
        ISSUE_TID_READ,
        READ_TID,
        READ_DATA_OWNR_IN,
        WAIT_ADDR,
        READ_DEP,
        CHECK_DATA_OWNER_IN,
        SEND_OMPIF_CMD,
        SEND_OMPIF_TID,
        SEND_OMPIF_TTYPE,
        SEND_OMPIF_DEPS_1,
        SEND_OMPIF_DEPS_2,
        SEND_OMPIF_ARGS_1,
        SEND_OMPIF_ARGS_2,
        SEND_TASK_CMD,
        SEND_TASK_PTID,
        SEND_TASK_TTYPE,
        SEND_TASK_DEPS,
        SEND_PKT,
        WAIT_SLOT_COMPLETE,
        READ_DATA_OWNR_OUT,
        CHECK_DATA_OWNER_OUT
    } State_t;

    State_t state;

    reg [$clog2(TASK_LEN+1)-1:0] slot_size;
    reg [0:0] ompif_ttype; //0 -> send, 1 -> recv
    reg bcast;
    reg [63:0] ompif_addr;
    reg [OWNS_BITS-1:0] nowns;
    reg output_owners;
    reg out_loop; // 0 -> we are in the loop before creating the task, 1 -> we are in the loop after creating the task
    reg [CLUST_BITS-1:0] task_owner;
    reg [CLUST_BITS-1:0] data_owner;
    reg bcast_owner;
    reg [31:0] data_size;
    reg [63:0] tid;
    reg data_sent;

    always_comb begin

        slot_re = 1'b0;
        stream_out_tvalid = 1'b0;
        stream_out_tdest = slot_type;
        stream_out_tdata = slot_data;
        stream_out_tlast = slot_last;

        buffer_read = 1'b0;

        case (state)

            IDLE: begin
                slot_re = slot_count != 0;
            end

            ISSUE_TID_READ: begin
                slot_re = 1'b1;
            end

            READ_DATA_OWNR_IN: begin
                slot_re = 1'b1;
            end

            CHECK_DATA_OWNER_IN: begin
                slot_re = 1'b1;
            end

            SEND_OMPIF_CMD: begin
                stream_out_tdata = 64'd0;
                stream_out_tvalid = 1'b1;
                stream_out_tdest = 2'd2;
                stream_out_tdata[NUM_ARGS_OFFSET +: ARGS_BITS] = 2;
                stream_out_tdata[NUM_DEPS_OFFSET +: DEPS_BITS] = 2;
                stream_out_tdata[NUM_COPS_OFFSET +: COPS_BITS] = 0;
                stream_out_tlast = 1'b0;
            end

            SEND_OMPIF_TID: begin
                stream_out_tvalid = 1'b1;
                stream_out_tdest = 2'd2;
                stream_out_tdata = tid;
                stream_out_tlast = 1'b0;
            end

            SEND_OMPIF_TTYPE: begin
                stream_out_tvalid = 1'b1;
                stream_out_tdest = 2'd2;
                stream_out_tlast = 1'b0;
                stream_out_tdata[33:3] = 31'h20000000;
                stream_out_tdata[2:0] = ompif_ttype ? 3'd4 : 3'd3;
                stream_out_tdata[INS_NUM_H:INS_NUM_L] = 8'hFF;
            end

            SEND_OMPIF_DEPS_1: begin
                stream_out_tvalid = 1'b1;
                stream_out_tdest = 2'd2;
                stream_out_tlast = 1'b0;
                stream_out_tdata[59:58] = 2'b11;
                if (ompif_ttype) begin
                    stream_out_tdata[55:0] = 56'h100000000000;
                end else begin
                    stream_out_tdata[55:0] = 56'h200000000000;
                end
            end

            SEND_OMPIF_DEPS_2: begin
                stream_out_tvalid = 1'b1;
                stream_out_tdest = 2'd2;
                stream_out_tlast = 1'b0;
                stream_out_tdata[55:0] = ompif_addr;
                if (ompif_ttype) begin
                    stream_out_tdata[DEP_DIR_IN_B] = 1'b0;
                    stream_out_tdata[DEP_DIR_OUT_B] = 1'b1;
                end else begin
                    stream_out_tdata[DEP_DIR_IN_B] = 1'b1;
                    stream_out_tdata[DEP_DIR_OUT_B] = 1'b0;
                end
            end

            SEND_OMPIF_ARGS_1: begin
                stream_out_tdata = 64'd0;
                stream_out_tvalid = 1'b1;
                stream_out_tdest = 2'd2;
                stream_out_tlast = 1'b0;
                stream_out_tdata[7:0] = bcast ? 8'd1 : 8'd0; //sendall/recvall, send/recv
                stream_out_tdata[15:8] = 8'd0; //tag
                if (out_loop) begin
                    stream_out_tdata[16 +: CLUST_BITS] = ompif_ttype ? task_owner : data_owner;
                end else begin
                    stream_out_tdata[16 +: CLUST_BITS] = ompif_ttype ? data_owner : task_owner;
                end
                stream_out_tdata[63:24] = ompif_addr[39:0];
            end

            SEND_OMPIF_ARGS_2: begin
                stream_out_tdata = 64'd0;
                slot_re = 1'b1;
                stream_out_tvalid = 1'b1;
                stream_out_tdest = 2'd2;
                stream_out_tlast = 1'b1;
                stream_out_tdata[31:0] = data_size;
            end

            READ_DEP: begin
                slot_re = 1'b1;
            end

            SEND_TASK_CMD: begin
                slot_re = stream_out_tready;
                stream_out_tvalid = !data_sent;
            end

            SEND_TASK_PTID: begin
                slot_re = stream_out_tready;
                stream_out_tvalid = !data_sent;
            end

            SEND_TASK_TTYPE: begin
                slot_re = stream_out_tready;
                stream_out_tvalid = !data_sent;
            end

            SEND_TASK_DEPS: begin
                slot_re = slot_count > slot_addr && (stream_out_tready || data_sent);
                stream_out_tvalid = !data_sent;
                buffer_read = stream_out_tready && slot_last && !output_owners;
            end

            SEND_PKT: begin
                buffer_read = stream_out_tready && slot_last && !output_owners;
                stream_out_tvalid = !data_sent;
                slot_re = slot_count > slot_addr && (stream_out_tready || data_sent);
            end

            WAIT_SLOT_COMPLETE: begin
                if (slot_count == slot_size) begin
                    buffer_read = 1'b1;
                end
            end

            READ_DATA_OWNR_OUT: begin
                slot_re = 1'b1;
            end

            CHECK_DATA_OWNER_OUT: begin
                slot_re = 1'b1;
            end

            default: begin end

        endcase

    end

    always_ff @(posedge clk) begin

        case (state)

            IDLE: begin
                data_sent <= 1'b0;
                if (slot_count != 0) begin
                    state <= READ_CMD;
                end
            end

            READ_CMD: begin
                out_loop <= 1'b0;
                output_owners <= 1'b0;
                nowns <= slot_data[NUM_OWNS_OFFSET +: $clog2(MAX_OWNS_PER_TASK+1)]*2 + 3;
                task_owner <= slot_data[TASK_OWNER_OFFSET +: CLUST_BITS];
                slot_addr <= slot_addr+1;
                slot_size <= 3+slot_data[NUM_ARGS_OFFSET +: ARGS_BITS] + slot_data[NUM_DEPS_OFFSET +: DEPS_BITS] + slot_data[NUM_COPS_OFFSET +: COPS_BITS]*2 + slot_data[NUM_OWNS_OFFSET +: $clog2(MAX_OWNS_PER_TASK+1)];
                if (slot_type != 2'd2) begin
                    state <= SEND_PKT;
                end else if (slot_data[NUM_OWNS_OFFSET +: $clog2(MAX_OWNS_PER_TASK+1)] == 0) begin
                    if (slot_data[TASK_OWNER_OFFSET +: CLUST_BITS] == ompif_rank) begin
                        state <= SEND_PKT;
                    end else begin
                        state <= WAIT_SLOT_COMPLETE;
                    end
                end else  begin
                    state <= ISSUE_TID_READ;
                end
            end

            ISSUE_TID_READ: begin
                if (slot_count > slot_addr) begin
                    slot_addr <= 3;
                    state <= READ_TID;
                end
            end

            READ_TID: begin
                tid <= slot_data;
                state <= READ_DATA_OWNR_IN;
            end

            READ_DATA_OWNR_IN: begin
                if (slot_count > slot_addr+1) begin
                    slot_addr <= slot_addr+1;
                    state <= READ_DEP;
                end
            end

            READ_DEP: begin
                if (slot_addr+1 == nowns) begin
                    slot_addr <= 0;
                end else begin
                    slot_addr <= slot_addr+1;
                end
                data_owner <= slot_data[CLUST_BITS-1:0];
                bcast_owner <= slot_data[7:0] == BCAST_OWNR;
                data_size <= slot_data[63:32];
                if (out_loop) begin
                    state <= CHECK_DATA_OWNER_OUT;
                end else begin
                    state <= CHECK_DATA_OWNER_IN;
                end
            end

            CHECK_DATA_OWNER_IN: begin
                ompif_ttype <= 1'b0;
                ompif_addr <= slot_data;
                bcast <= 1'b0;
                // While checking owners before creating the task, check if you will need to look at the after creating it.
                if (slot_data[DEP_DIR_OUT_B] &&
                    ((task_owner == ompif_rank[CLUST_BITS-1:0] && data_owner != ompif_rank[CLUST_BITS-1:0]) ||
                      (task_owner != ompif_rank[CLUST_BITS-1:0] && data_owner == ompif_rank[CLUST_BITS-1:0]) ||
                      bcast_owner)) begin
                    output_owners <= 1'b1;
                end
                if (!bcast_owner && slot_data[DEP_DIR_IN_B] && task_owner != ompif_rank[CLUST_BITS-1:0] && data_owner == ompif_rank[CLUST_BITS-1:0]) begin
                    state <= SEND_OMPIF_CMD;
                end else if (!bcast_owner && slot_data[DEP_DIR_IN_B] && task_owner == ompif_rank[CLUST_BITS-1:0] && data_owner != ompif_rank[CLUST_BITS-1:0] && data_owner != BCAST_OWNR) begin
                    ompif_ttype <= 1'b1;
                    state <= SEND_OMPIF_CMD;
                end else begin
                    if (slot_addr == 0) begin
                        slot_addr <= 3;
                        if (task_owner == ompif_rank[CLUST_BITS-1:0]) begin
                            slot_addr <= slot_addr+1;
                            state <= SEND_TASK_CMD;
                        end else if (output_owners || (slot_data[DEP_DIR_OUT_B] &&
                                    ((task_owner == ompif_rank[CLUST_BITS-1:0] && data_owner != ompif_rank[CLUST_BITS-1:0]) ||
                                    (task_owner != ompif_rank[CLUST_BITS-1:0] && data_owner == ompif_rank[CLUST_BITS-1:0]) ||
                                    bcast_owner))) begin
                            state <= READ_DATA_OWNR_OUT;
                        end else begin
                            state <= WAIT_SLOT_COMPLETE;
                        end
                    end else begin
                        state <= READ_DATA_OWNR_IN;
                    end
                end
            end

            SEND_OMPIF_CMD: begin
                if (stream_out_tready) begin
                    state <= SEND_OMPIF_TID;
                end
            end

            SEND_OMPIF_TID: begin
                if (stream_out_tready) begin
                    state <= SEND_OMPIF_TTYPE;
                end
            end

            SEND_OMPIF_TTYPE: begin
                if (stream_out_tready) begin
                    state <= SEND_OMPIF_DEPS_1;
                end
            end

            SEND_OMPIF_DEPS_1: begin
                if (stream_out_tready) begin
                    state <= SEND_OMPIF_DEPS_2;
                end
            end

            SEND_OMPIF_DEPS_2: begin
                if (stream_out_tready) begin
                    state <= SEND_OMPIF_ARGS_1;
                end
            end

            SEND_OMPIF_ARGS_1: begin
                if (slot_addr == nowns) begin
                    slot_addr <= 0;
                end
                if (stream_out_tready) begin
                    state <= SEND_OMPIF_ARGS_2;
                end
            end

            SEND_OMPIF_ARGS_2: begin
                if (stream_out_tready) begin
                    if (slot_addr == 0) begin
                        slot_addr <= slot_addr+1;
                        if (out_loop) begin
                            state <= WAIT_SLOT_COMPLETE;
                        end else if (task_owner == ompif_rank[CLUST_BITS-1:0]) begin
                            state <= SEND_TASK_CMD;
                        end else if (output_owners) begin
                            slot_addr <= 3;
                            state <= READ_DATA_OWNR_OUT;
                        end else begin
                            state <= WAIT_SLOT_COMPLETE;
                        end
                    end else begin
                        if (out_loop) begin
                            state <= READ_DATA_OWNR_OUT;
                        end else begin
                            state <= READ_DATA_OWNR_IN;
                        end
                    end
                end
            end

            SEND_TASK_CMD: begin
                if (stream_out_tready) begin
                    slot_addr <= slot_addr+1;
                    state <= SEND_TASK_PTID;
                end
            end

            SEND_TASK_PTID: begin
                if (stream_out_tready) begin
                    slot_addr <= slot_addr+2;
                    state <= SEND_TASK_TTYPE;
                end
            end

            SEND_TASK_TTYPE: begin
                if (stream_out_tready) begin
                    if (slot_addr+1 == nowns) begin
                        slot_addr <= slot_addr+1;
                    end else begin
                        slot_addr <= slot_addr+2;
                    end
                    state <= SEND_TASK_DEPS;
                end
            end

            SEND_TASK_DEPS: begin
                if ((data_sent || stream_out_tready) && slot_count > slot_addr) begin
                    data_sent <= 1'b0;
                    if (slot_addr == nowns || slot_addr+1 == nowns) begin
                        slot_addr <= slot_addr+1;
                    end else begin
                        slot_addr <= slot_addr+2;
                    end
                end else if (stream_out_tready) begin
                    data_sent <= 1'b1;
                end
                if (stream_out_tready) begin
                    if (slot_last) begin
                        slot_addr <= 0;
                        if (output_owners) begin
                            slot_addr <= 3;
                            state <= READ_DATA_OWNR_OUT;
                        end else begin
                            state <= IDLE;
                        end
                    end else if (slot_addr == nowns) begin
                        state <= SEND_PKT;
                    end
                end
            end

            SEND_PKT: begin
                if ((data_sent || stream_out_tready) && slot_count > slot_addr) begin
                    data_sent <= 1'b0;
                    slot_addr <= slot_addr+1;
                end else if (stream_out_tready) begin
                    data_sent <= 1'b1;
                end
                if (stream_out_tready && slot_last) begin
                    if (output_owners) begin
                        slot_addr <= 3;
                        state <= READ_DATA_OWNR_OUT;
                    end else begin
                        slot_addr <= 0;
                        state <= IDLE;
                    end
                end
            end

            WAIT_SLOT_COMPLETE: begin
                slot_addr <= 0;
                if (slot_count == slot_size) begin
                    state <= IDLE;
                end
            end

            READ_DATA_OWNR_OUT: begin
                out_loop <= 1'b1;
                slot_addr <= slot_addr+1;
                state <= READ_DEP;
            end

            CHECK_DATA_OWNER_OUT: begin
                ompif_ttype <= 1'b0;
                bcast <= 1'b0;
                ompif_addr <= slot_data;
                if (slot_data[DEP_DIR_OUT_B] && task_owner == ompif_rank[CLUST_BITS-1:0] && (data_owner != ompif_rank[CLUST_BITS-1:0] || bcast_owner)) begin
                    bcast <= bcast_owner;
                    state <= SEND_OMPIF_CMD;
                end else if (slot_data[DEP_DIR_OUT_B] && task_owner != ompif_rank[CLUST_BITS-1:0] && (data_owner == ompif_rank[CLUST_BITS-1:0] || bcast_owner)) begin
                    ompif_ttype <= 1'b1;
                    state <= SEND_OMPIF_CMD;
                end else begin
                    if (slot_addr == 0) begin
                        state <= WAIT_SLOT_COMPLETE;
                    end else begin
                        state <= READ_DATA_OWNR_OUT;
                    end
                end
            end

        endcase

        if (!rstn) begin
            slot_addr <= 0;
            state <= IDLE;
        end
    end

endmodule
