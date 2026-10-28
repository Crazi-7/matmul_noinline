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

module newtask_spawner #(
    parameter MAX_ARGS_PER_TASK = 0,
    parameter MAX_DEPS_PER_TASK = 0,
    parameter MAX_COPS_PER_TASK = 0
) (
    input clk,
    input rstn,
    //Input stream from accelerator
    input         stream_in_tvalid,
    output logic  stream_in_tready,
    input  [1:0]  stream_in_tdest,
    input  [63:0] stream_in_tdata,
    input         stream_in_tlast,
    //Output stream to hwruntime
    output logic        stream_out_tvalid,
    input               stream_out_tready,
    output logic [1:0]  stream_out_tdest,
    output logic [63:0] stream_out_tdata,
    output logic        stream_out_tlast,
    //Ack in interface
    input        ack_in_tvalid,
    output logic ack_in_tready,
    input [63:0] ack_in_tdata,
    //Ack out interface
    output       ack_out_tvalid,
    input        ack_out_tready,
    output [7:0] ack_out_tdata
);

    localparam NUM_ARGS_OFFSET = 8;
    localparam NUM_DEPS_OFFSET = 16;
    localparam NUM_COPS_OFFSET = 24;
    localparam TASK_SEQ_ID_L = 32;
    localparam TASK_SEQ_ID_H = 63;
    localparam ACK_REJECT_CODE = 8'h00;
    localparam ACK_OK_CODE = 8'h01;
    localparam HWR_NEWTASK_ID = 2'h2;
    localparam HWR_TASKWAIT_ID = 2'h3;
    localparam INSTREAM_COMPONENTS_L = 0;
    localparam INSTREAM_COMPONENTS_H = 31;
    localparam TYPE_B = 32;

    typedef enum bit[3:0] {
        IDLE,
        FORWARD,
        RESEND_NEWTASK_HEADER,
        RESEND_NEWTASK_PTID,
        RESEND_NEWTASK_TTYPE,
        RESEND_NEWTASK_DEPS,
        RESEND_NEWTASK_ARGCOPS,
        WAIT_NEWTASK_ACK,
        TASKWAIT_HEADER,
        TASKWAIT_TID,
        WAIT_TASKWAIT_ACK,
        SEND_TASKWAIT_ACK
    } State_t;

    State_t state;

    localparam WORDS_PER_COPY = 2;
    //First 2 words PTID and TTYPE (header is not stored in the task buffer)
    localparam TASK_BUFFER_LEN = 2+MAX_ARGS_PER_TASK+MAX_DEPS_PER_TASK+MAX_COPS_PER_TASK*WORDS_PER_COPY;
    localparam TASK_BUFFER_BITS = $clog2(TASK_BUFFER_LEN);

    reg [3:0] nargs;
    reg [3:0] ndeps_orig;
    reg [3:0] ndeps;
    reg [3:0] ncops;
    reg [5:0] nargcops;
    reg [5:0] argcops_cnt;
    reg [3:0] deps_cnt;
    reg [31:0] task_number;
    logic task_buffer_en;
    wire task_buffer_wr_en;
    wire [63:0] task_buffer_din;
    reg [63:0] task_buffer_dout;
    reg [TASK_BUFFER_BITS-1:0] task_buffer_idx;
    reg [63:0] task_buffer[TASK_BUFFER_LEN];
    reg creating_task;
    reg final_mode;

    assign task_buffer_wr_en = state == FORWARD || state == IDLE;
    assign task_buffer_din = stream_in_tdata;

    assign ack_out_tvalid = state == SEND_TASKWAIT_ACK;
    assign ack_out_tdata = 8'd0;

    always_comb begin

        stream_out_tvalid = 1'b0;
        stream_in_tready = 1'b0;
        ack_in_tready = 1'b0;
        stream_out_tdest = stream_in_tdest;
        stream_out_tdata = stream_in_tdata;
        stream_out_tlast = stream_in_tlast;
        task_buffer_en = 1'b0;

        case (state)

            IDLE: begin
                task_buffer_en = stream_in_tvalid && stream_in_tdest == HWR_TASKWAIT_ID;
                if (stream_in_tdest == HWR_NEWTASK_ID) begin
                    stream_out_tdata[0] = 1'b0;
                    stream_out_tdata[TASK_SEQ_ID_H:TASK_SEQ_ID_L] = task_number;
                end
                if (stream_in_tdest == HWR_TASKWAIT_ID) begin
                    stream_in_tready = 1'b1;
                end else begin
                    stream_out_tvalid = stream_in_tvalid;
                    stream_in_tready = stream_out_tready;
                end
            end

            FORWARD: begin
                task_buffer_en = 1'b1;
                stream_out_tvalid = stream_in_tvalid;
                stream_in_tready = stream_out_tready;
            end

            RESEND_NEWTASK_HEADER: begin
                task_buffer_en = 1'b1;
                stream_out_tvalid = 1'b1;
                stream_out_tdata[0] = 1'b0;
                stream_out_tdata[NUM_ARGS_OFFSET +: 8] = {4'd0, nargs};
                stream_out_tdata[NUM_DEPS_OFFSET +: 8] = {4'd0, ndeps};
                stream_out_tdata[NUM_COPS_OFFSET +: 8] = {4'd0, ncops};
                stream_out_tdata[TASK_SEQ_ID_H:TASK_SEQ_ID_L] = task_number;
                stream_out_tdest = HWR_NEWTASK_ID;
                stream_out_tlast = 1'b0;
            end

            RESEND_NEWTASK_PTID: begin
                task_buffer_en = stream_out_tready;
                stream_out_tvalid = 1'b1;
                stream_out_tdata = task_buffer_dout;
                stream_out_tdest = HWR_NEWTASK_ID;
                stream_out_tlast = 1'b0;
            end

            RESEND_NEWTASK_TTYPE: begin
                task_buffer_en = stream_out_tready;
                stream_out_tvalid = 1'b1;
                stream_out_tdata = task_buffer_dout;
                stream_out_tdest = HWR_NEWTASK_ID;
                stream_out_tlast = nargcops == 6'd0 && ndeps == 4'd0;
            end

            RESEND_NEWTASK_DEPS: begin
                task_buffer_en = stream_out_tready;
                stream_out_tvalid = 1'b1;
                stream_out_tdata = task_buffer_dout;
                stream_out_tdest = HWR_NEWTASK_ID;
                stream_out_tlast = nargcops == 6'd0 && deps_cnt == ndeps;
            end

            RESEND_NEWTASK_ARGCOPS: begin
                task_buffer_en = stream_out_tready;
                stream_out_tvalid = 1'b1;
                stream_out_tdata = task_buffer_dout;
                stream_out_tdest = HWR_NEWTASK_ID;
                stream_out_tlast = argcops_cnt == nargcops;
            end

            WAIT_NEWTASK_ACK: begin
                ack_in_tready = 1'b1;
            end

            TASKWAIT_HEADER: begin
                task_buffer_en = 1'b1;
                stream_out_tdest = HWR_TASKWAIT_ID;
                stream_out_tvalid = 1'b1;
                stream_out_tdata[INSTREAM_COMPONENTS_H:INSTREAM_COMPONENTS_L] = task_number;
                stream_out_tdata[TYPE_B] = 1'b1;
                stream_out_tlast = 1'b0;
            end

            TASKWAIT_TID: begin
                stream_out_tdest = HWR_TASKWAIT_ID;
                stream_out_tvalid = 1'b1;
                stream_out_tlast = 1'b1;
                stream_out_tdata = task_buffer_dout;
            end

            WAIT_TASKWAIT_ACK: begin
                ack_in_tready = 1'b1;
            end

            default: begin
            end

        endcase

    end

    always_ff @(posedge clk) begin

        nargcops <= nargs + ncops*2;

        case (state)

            IDLE: begin
                task_buffer_idx <= '0;
                final_mode <= 1'b0;
                creating_task <= stream_in_tdest == HWR_NEWTASK_ID;
                nargs <= stream_in_tdata[NUM_ARGS_OFFSET +: 4];
                ndeps <= stream_in_tdata[NUM_DEPS_OFFSET +: 4];
                ndeps_orig <= stream_in_tdata[NUM_DEPS_OFFSET +: 4];
                ncops <= stream_in_tdata[NUM_COPS_OFFSET +: 4];
                if (stream_in_tvalid) begin
                    if (stream_in_tdest == HWR_TASKWAIT_ID) begin
                        state <= TASKWAIT_HEADER;
                    end else begin
                        if (stream_out_tready) begin
                            state <= FORWARD;
                        end
                    end
                end
            end

            FORWARD: begin
                if (stream_in_tvalid && stream_out_tready) begin
                    task_buffer_idx <= task_buffer_idx + 1;
                    if (stream_in_tlast) begin
                        if (creating_task) begin
                            state <= WAIT_NEWTASK_ACK;
                        end else begin
                            state <= IDLE;
                        end
                    end
                end
            end

            RESEND_NEWTASK_HEADER: begin
                if (stream_out_tready) begin
                    task_buffer_idx <= task_buffer_idx + 1;
                    state <= RESEND_NEWTASK_PTID;
                end
            end

            RESEND_NEWTASK_PTID: begin
                if (stream_out_tready) begin
                    if (final_mode) begin
                        task_buffer_idx <= task_buffer_idx + 1 + ndeps_orig;
                    end else begin
                        task_buffer_idx <= task_buffer_idx + 1;
                    end
                    state <= RESEND_NEWTASK_TTYPE;
                end
            end

            RESEND_NEWTASK_TTYPE: begin
                if (stream_out_tready) begin
                    task_buffer_idx <= task_buffer_idx + 1;
                    if (ndeps == 4'd0 && nargcops == 6'd0) begin
                        state <= WAIT_NEWTASK_ACK;
                    end else if (ndeps == 4'd0) begin
                        state <= RESEND_NEWTASK_ARGCOPS;
                    end else begin
                        state <= RESEND_NEWTASK_DEPS;
                    end
                end
            end

            RESEND_NEWTASK_DEPS: begin
                if (stream_out_tready) begin
                    deps_cnt <= deps_cnt + 4'd1;
                    task_buffer_idx <= task_buffer_idx + 1;
                    if (deps_cnt == ndeps) begin
                        if (nargcops == 6'd0) begin
                            state <= WAIT_NEWTASK_ACK;
                        end else begin
                            state <= RESEND_NEWTASK_ARGCOPS;
                        end
                    end
                end
            end

            RESEND_NEWTASK_ARGCOPS: begin
                if (stream_out_tready) begin
                    argcops_cnt <= argcops_cnt + 6'd1;
                    task_buffer_idx <= task_buffer_idx + 1;
                    if (argcops_cnt == nargcops) begin
                        state <= WAIT_NEWTASK_ACK;
                    end
                end
            end

            WAIT_NEWTASK_ACK: begin
                deps_cnt <= 4'd1;
                argcops_cnt <= 5'd1;
                task_buffer_idx <= '0;
                ndeps <= ndeps_orig;
                if (ack_in_tvalid) begin
                    if (ack_in_tdata[7:0] == ACK_OK_CODE) begin
                        task_number <= task_number + 32'd1;
                        if (final_mode) begin
                            state <= TASKWAIT_HEADER;
                        end else begin
                            state <= IDLE;
                        end
                    end else if (ack_in_tdata[7:0] == ACK_REJECT_CODE) begin
                        final_mode <= 1'b0;
                        state <= RESEND_NEWTASK_HEADER;
                    end else begin //ACK_FINAL_MODE
                        ndeps <= 4'd0;
                        final_mode <= 1'b1;
                        state <= RESEND_NEWTASK_HEADER;
                    end
                end
            end

            TASKWAIT_HEADER: begin
                if (stream_out_tready) begin
                    state <= TASKWAIT_TID;
                end
            end

            TASKWAIT_TID: begin
                if (stream_out_tready) begin
                    state <= WAIT_TASKWAIT_ACK;
                end
            end

            WAIT_TASKWAIT_ACK: begin
                task_number <= 32'd0;
                if (ack_in_tvalid) begin
                    final_mode <= 1'b0;
                    if (!final_mode) begin
                        state <= SEND_TASKWAIT_ACK;
                    end else begin
                        state <= IDLE;
                    end
                end
            end

            SEND_TASKWAIT_ACK: begin
                if (ack_out_tready) begin
                    state <= IDLE;
                end
            end

        endcase

        if (!rstn) begin
            task_number <= 32'd0;
            state <= IDLE;
        end
    end

    always_ff @(posedge clk) begin
        if (task_buffer_en) begin
            if (task_buffer_wr_en) begin
                task_buffer[task_buffer_idx] <= task_buffer_din;
            end else begin
                task_buffer_dout <= task_buffer[task_buffer_idx];
            end
        end
    end

endmodule
