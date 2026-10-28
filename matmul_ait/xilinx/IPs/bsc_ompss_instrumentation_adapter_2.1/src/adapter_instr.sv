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

module adapter_instr #(
    parameter AXI_ADDR_WIDTH = 0,
    parameter COUNTER_WIDTH = 0,
    parameter FIFO_LEN = 0,
    parameter NUM_EVENTS_BITS = 0
) (
    input clk,
    input rstn,
    //Event in stream
    input event_in_tvalid,
    output event_in_tready,
    input [111:0] event_in_tdata,
    //Instr buffer AXI
    //AR
    output instr_buf_arvalid,
    input instr_buf_arready,
    output [AXI_ADDR_WIDTH-1:0] instr_buf_araddr,
    output [7:0] instr_buf_arlen,
    output [2:0] instr_buf_arsize,
    output [1:0] instr_buf_arburst,
    output [3:0] instr_buf_arcache,
    //R
    input instr_buf_rvalid,
    output instr_buf_rready,
    input [63:0] instr_buf_rdata,
    input instr_buf_rlast,
    input [1:0] instr_buf_rresp,
    //AW
    output instr_buf_awvalid,
    input instr_buf_awready,
    output [AXI_ADDR_WIDTH-1:0] instr_buf_awaddr,
    output [7:0] instr_buf_awlen,
    output [2:0] instr_buf_awsize,
    output [1:0] instr_buf_awburst,
    output [3:0] instr_buf_awcache,
    //W
    output instr_buf_wvalid,
    input instr_buf_wready,
    output logic [63:0] instr_buf_wdata,
    output logic [7:0] instr_buf_wstrb,
    output instr_buf_wlast,
    //B
    input instr_buf_bvalid,
    output instr_buf_bready,
    input [1:0] instr_buf_bresp
);

    localparam EVENT_TYPE_INVALID = 8'hFF;
    localparam EVENT_INSTEVLOST = 32'd82;
    localparam EVENT_TYPE_POINT = 8'd2;

    localparam EVENT_BUF_BITS = NUM_EVENTS_BITS;
    localparam EVENT_BUF_ZERO = {EVENT_BUF_BITS{1'b0}};
    localparam EVENT_BUF_ONE = {{EVENT_BUF_BITS-1{1'b0}}, 1'b1};

    typedef enum bit [2:0] {
        IDLE,
        READ_BUFFER_AR,
        WAIT_READ_BUFFER,
        WRITE_BUFFER,
        WAIT_BUFFER_WRESP,
        WRITE_HEADER,
        UPDATE_SLOTS,
        WAIT_HEADER_WRESP
    } State_t;

    State_t state;
    wire fifo_tvalid;
    wire fifo_tready;
    wire [104:0] fifo_tdata;
    wire [COUNTER_WIDTH-1:0] fifo_timestamp;
    reg [COUNTER_WIDTH-1:0] timestamp;
    reg [EVENT_BUF_BITS-1:0] slots;
    reg [EVENT_BUF_BITS-1:0] current_slot;
    reg [EVENT_BUF_BITS-1:0] read_slot;
    reg [EVENT_BUF_BITS-1:0] avail_slots;
    reg [1:0] write_buffer_count;
    reg [AXI_ADDR_WIDTH-3-1:0] instr_buffer_addr;
    wire [AXI_ADDR_WIDTH-3-1:0] instr_buffer_addr_read;
    wire [AXI_ADDR_WIDTH-3-1:0] instr_buffer_addr_write;
    reg [AXI_ADDR_WIDTH-3-1:0] current_slot_addr;
    reg [63:0] instr_event_data;
    reg [39:0] type_and_id;
    reg [1:0] bcount;
    reg tg_aw_start;
    reg tg_w_start;
    wire tg_w_valid;
    wire tg_w_ready;
    wire [7:0] tg_w_len;
    wire tg_w_last;
    reg [1:0] wcount;
    reg [4:0] tg_btt;

    transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(64),
        .BTT_WIDTH(5)
    ) transaction_generator_aw_I (
        .clk(clk),
        .rstn(rstn),
        .start(tg_aw_start),
        .btt(tg_btt),
        .initial_addr({current_slot_addr, 3'd0}),
        .addr_req_valid(instr_buf_awvalid),
        .addr_req_ready(instr_buf_awready),
        .addr_req_addr(instr_buf_awaddr),
        .addr_req_len(instr_buf_awlen),
        .addr_req_last()
    );
    
    transaction_generator #(
        .ADDR_WIDTH(AXI_ADDR_WIDTH),
        .DATA_WIDTH(64),
        .BTT_WIDTH(5)
    ) transaction_generator_w_I (
        .clk(clk),
        .rstn(rstn),
        .start(tg_w_start),
        .btt(tg_btt),
        .initial_addr({current_slot_addr, 3'd0}),
        .addr_req_valid(tg_w_valid),
        .addr_req_ready(tg_w_ready),
        .addr_req_addr(),
        .addr_req_len(tg_w_len),
        .addr_req_last(tg_w_last)
    );

    assign instr_buffer_addr_read = instr_buffer_addr + read_slot*3'd3;
    assign instr_buf_araddr = {instr_buffer_addr_read, 3'd0};
    assign instr_buf_arvalid = state == READ_BUFFER_AR;
    assign instr_buf_arlen = 8'd0;
    assign instr_buf_arsize = 3'd3;
    assign instr_buf_arcache = 4'b0010; //transaction modifiable
    assign instr_buf_arburst = 2'b01; //INCR
    assign instr_buf_rready = state == WAIT_READ_BUFFER;

    assign instr_buffer_addr_write = instr_buffer_addr + current_slot*3'd3;
    assign instr_buf_awsize = 3'd3;
    assign instr_buf_awcache = 4'b0010;
    assign instr_buf_awburst = 2'b01;
    assign instr_buf_wvalid = (state == WRITE_BUFFER || state == WRITE_HEADER) && tg_w_valid;
    assign instr_buf_wlast = wcount == tg_w_len[1:0];

    assign instr_buf_bready = 1'b1;

    assign fifo_tready = state == IDLE;
    
    assign tg_w_ready = (state == WRITE_BUFFER || state == WRITE_HEADER) && instr_buf_wready && wcount == tg_w_len[1:0];

    adapter_instr_fifo #(
        .COUNTER_WIDTH(COUNTER_WIDTH),
        .LEN(FIFO_LEN)
    ) fifo_I (
        .clk(clk),
        .rstn(rstn),
        .si_tvalid(event_in_tvalid),
        .si_tready(event_in_tready),
        .si_tdata(event_in_tdata[104:0]),
        .so_tvalid(fifo_tvalid),
        .so_tready(fifo_tready),
        .so_tdata(fifo_tdata),
        .so_timestamp(fifo_timestamp)
    );

    always_comb begin
        instr_buf_wdata = 64'd0;
        instr_buf_wstrb = 8'hFF;

        case (write_buffer_count)

            2'd0: begin
                if (state == WRITE_BUFFER) begin
                    instr_buf_wstrb[7:4] = 4'd0; //Do not write the type
                end else begin
                    instr_buf_wstrb[3:0] = 4'd0; //Do not write the ID
                end
                instr_buf_wdata[39:0] = type_and_id;
            end

            2'd1: begin
                instr_buf_wdata[COUNTER_WIDTH-1:0] = timestamp;
            end

            default: begin
                instr_buf_wdata = instr_event_data;
            end

        endcase
    end

    // Structure of in data:
    // If bit 104 is 0 -> the data represents an instrumentation setup where:
    //   - data[63,  0] is the instrumentation buffer offset
    //   - data[79, 64] is the number of slots pointer by the instrumentation offset
    // If bit 104 is 1 -> the data represents an instrumentation event where:
    //   - data[63,  0] is value field of the instrumentation event
    //   - data[103,64] is typeAndId field of the instrumentation event

    always_ff @(posedge clk) begin

        if ((instr_buf_wvalid && instr_buf_wready && instr_buf_wlast) && !instr_buf_bvalid) begin
            bcount <= bcount + 2'd1;
        end else if (!(instr_buf_wvalid && instr_buf_wready && instr_buf_wlast) && instr_buf_bvalid) begin
            bcount <= bcount - 2'd1;
        end
        
        tg_aw_start <= 1'b0;
        tg_w_start <= 1'b0;

        case (state)

            IDLE: begin
                wcount <= 2'd0;
                write_buffer_count <= 2'd0;
                instr_event_data <= fifo_tdata[63:0];
                type_and_id <= fifo_tdata[103:64];
                timestamp <= fifo_timestamp;
                current_slot_addr <= instr_buffer_addr + current_slot*2'd3;
                tg_btt <= 5'd20;
                if (fifo_tvalid) begin
                    if (fifo_tdata[104] == 1'b0) begin
                        slots <= fifo_tdata[64 +: EVENT_BUF_BITS];
                        current_slot <= {EVENT_BUF_BITS{1'b0}};
                        read_slot <= {EVENT_BUF_BITS{1'b0}};
                        avail_slots <= fifo_tdata[64 +: EVENT_BUF_BITS];
                        instr_buffer_addr <= fifo_tdata[AXI_ADDR_WIDTH-1:3]; //address must be aligned to 8 bytes
                    end else begin
                        if (avail_slots == EVENT_BUF_ZERO) begin
                            state <= READ_BUFFER_AR;
                        end else begin
                            tg_aw_start <= 1'b1;
                            tg_w_start <= 1'b1;
                            state <= WRITE_BUFFER;
                        end
                    end
                end
            end

            WRITE_BUFFER: begin
                if (tg_w_valid && instr_buf_wready) begin
                    wcount <= wcount + 2'd1;
                    if (wcount == tg_w_len[1:0]) begin
                        wcount <= 2'd0;
                        write_buffer_count <= write_buffer_count+2'd1;
                        if (tg_w_last) begin
                            state <= WAIT_BUFFER_WRESP;
                        end
                    end else begin
                        write_buffer_count <= write_buffer_count+2'd1;
                    end
                end
            end

            WAIT_BUFFER_WRESP: begin
                tg_btt <= 5'd4;
                write_buffer_count <= 2'd0;
                if (bcount == 2'd0) begin
                    tg_aw_start <= 1'b1;
                    tg_w_start <= 1'b1;
                    state <= WRITE_HEADER;
                end
            end

            WRITE_HEADER: begin
                if (tg_w_valid && instr_buf_wready) begin
                    state <= UPDATE_SLOTS;
                end
            end

            UPDATE_SLOTS: begin
                current_slot <= current_slot + EVENT_BUF_ONE == slots ? EVENT_BUF_ZERO : current_slot + EVENT_BUF_ONE;
                avail_slots <= avail_slots - EVENT_BUF_ONE;
                state <= WAIT_HEADER_WRESP;
            end

            WAIT_HEADER_WRESP: begin
                if (bcount == 2'd0) begin
                    state <= IDLE;
                end
            end

            READ_BUFFER_AR: begin
                if (instr_buf_arready) begin
                    state <= WAIT_READ_BUFFER;
                end
            end

            WAIT_READ_BUFFER: begin
                if (instr_buf_rvalid) begin
                    if (instr_buf_rdata[39:32] == EVENT_TYPE_INVALID) begin
                        avail_slots <= avail_slots + EVENT_BUF_ONE;
                        read_slot <= (read_slot + EVENT_BUF_ONE) == slots ? EVENT_BUF_ZERO : (read_slot + EVENT_BUF_ONE);
                        tg_aw_start <= 1'b1;
                        tg_w_start <= 1'b1;
                        state <= WRITE_BUFFER;
                    end else begin
                        state <= READ_BUFFER_AR;
                    end
                end
            end

        endcase

        if (!rstn) begin
            bcount <= 2'd0;
            state <= IDLE;
        end
    end

endmodule
