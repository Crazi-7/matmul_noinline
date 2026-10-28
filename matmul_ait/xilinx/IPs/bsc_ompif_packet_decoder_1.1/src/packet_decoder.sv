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
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/packet_decoder      */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on       */
/*  these sources, You must maintain the Source Location visible on the          */
/*  external case of the White Rabbit switch or other product you make using     */
/*  this documentation.                                                          */
/*                                                                               */
/*********************************************************************************/

module packet_decoder #(
    parameter MAX_CLUSTER_SIZE = 0,
    parameter DATA_WIDTH = 0
) (
    input clk,
    input rstn,
    //Network message in
    input si_tvalid,
    output logic si_tready,
    input [DATA_WIDTH-1:0] si_tdata,
    input [DATA_WIDTH/8-1:0] si_tkeep,
    input [7:0] si_tid,
    input si_tlast,
    //Role out
    output logic soRole_tvalid,
    input soRole_tready,
    output logic [DATA_WIDTH-1:0] soRole_tdata,
    output logic [DATA_WIDTH/8-1:0] soRole_tkeep,
    output logic [2:0] soRole_tdest,
    output logic soRole_tlast,
    //Encoder out
    output soEnc_tvalid,
    input soEnc_tready,
    output logic [DATA_WIDTH-1:0] soEnc_tdata,
    output logic [DATA_WIDTH/8-1:0] soEnc_tkeep,
    output [7:0] soEnc_tdest,
    output [2:0] soEnc_tid,
    output soEnc_tlast
);

    import OmpifPkg::*;

    localparam CLUST_BITS = $clog2(MAX_CLUSTER_SIZE);
    localparam CONN_INFO_ADDR_BITS = $clog2(MAX_CLUSTER_SIZE);

    typedef struct packed {
        logic [3:0] recv_mask;
        //logic [3:0] recv_state;
        logic [1:0] next_winid;
        logic parity;
    } ConnInfo;

    typedef enum bit [3:0] {
        IDLE,
        FORWARD_ACK,
        CHECK_CONNINFO,
        FORWARD_DATA,
        DROP_DATA,
        UPDATE_CONN_INFO,
        SEND_ACK,
        RESET_INTERNALS,
        PRE_RESET
    } State_t;

    (* fsm_encoding = "one_hot" *)
    State_t state = IDLE;

    reg [CLUST_BITS-1:0] src_rank;

    logic conn_info_en;
    logic conn_info_we;
    logic [CONN_INFO_ADDR_BITS-1:0] conn_info_addr;
    //logic [3:0] recv_state_mask;
    reg comp_conn_info;
    reg comp_conn_info_we;
    ConnInfo conn_info_dout;
    ConnInfo conn_info_din;
    ConnInfo conn_info_buf;
    reg prev_parity;
    reg [1:0] next_winid;

    reg [CLUST_BITS-1:0] count;

    reg [63:0] header;
    wire msg_parity;
    wire [1:0] msg_win_id;
    wire [1:0] msg_win_len;

    wire ack_in_tvalid;
    wire ack_in_tready;
    wire [CLUST_BITS-1:0] ack_in_tdest;
    wire [0:0] ack_in_tdata;
    wire ack_out_tvalid;
    wire ack_out_tready;
    wire [CLUST_BITS-1:0] ack_out_tdest;
    wire [0:0] ack_out_tdata;

    pkt_dec_ack_queue #(
        .MAX_CLUSTER_SIZE(MAX_CLUSTER_SIZE)
    ) ack_queue_I (
        .clk(clk),
        .rstn(rstn),
        .si_tvalid(ack_in_tvalid),
        .si_tready(ack_in_tready),
        .si_tdata(ack_in_tdata),
        .si_tdest(ack_in_tdest),
        .so_tvalid(ack_out_tvalid),
        .so_tready(ack_out_tready),
        .so_tdata(ack_out_tdata),
        .so_tdest(ack_out_tdest)
    );

    pkt_dec_conn_info_mem #(
        .LEN(MAX_CLUSTER_SIZE),
        .WIDTH($bits(ConnInfo))
    ) conn_info_mem_I (
        .clk(clk),
        .en(conn_info_en),
        .we(conn_info_we),
        .addr(conn_info_addr),
        .din(conn_info_din),
        .dout(conn_info_dout)
    );

    /*always_comb begin
        case (msg_win_len)
            2'd0: recv_state_mask = 4'b0001;
            2'd1: recv_state_mask = 4'b0011;
            2'd2: recv_state_mask = 4'b0111;
            2'd3: recv_state_mask = 4'b1111;
        endcase
    end*/

    always_ff @(posedge clk) begin
        if (comp_conn_info) begin
            if (conn_info_buf.parity != msg_parity) begin
                conn_info_buf.recv_mask <= 4'd0;
                //conn_info_buf.recv_state <= 4'd0;
                conn_info_buf.next_winid <= msg_win_id == 2'd0 ? 2'd1 : 2'd0;
            end else if (conn_info_buf.next_winid != msg_win_id) begin
                conn_info_buf.next_winid <= msg_win_id == 2'd0 ? 2'd1 : 2'd0;
            end else begin
                conn_info_buf.next_winid <= conn_info_buf.next_winid + 2'd1;
            end
            conn_info_buf.recv_mask[msg_win_id] <= 1'b1;
            //conn_info_buf.recv_state[msg_win_id] <= 1'b1;
            conn_info_buf.parity <= msg_parity;
        end else if (state == CHECK_CONNINFO) begin
            conn_info_buf <= conn_info_dout;
            next_winid <= conn_info_dout.next_winid;
            prev_parity <= conn_info_dout.parity;
        end
    end

    assign msg_parity = header[MSG_PARITY_B];
    assign msg_win_id = header[MSG_WINID_H:MSG_WINID_L];
    assign msg_win_len = header[MSG_WINLEN_H:MSG_WINLEN_L];

    assign soEnc_tvalid = ack_out_tvalid;
    assign ack_out_tready = soEnc_tready;
    assign soEnc_tlast = 1'b1;
    assign soEnc_tkeep = {DATA_WIDTH/8{1'b1}};
    assign soEnc_tdest = {{8-CLUST_BITS{1'b0}}, ack_out_tdest};
    assign soEnc_tid = ID_PACKET_DECODER;

    assign ack_in_tvalid = state == SEND_ACK;
    assign ack_in_tdata = msg_parity;
    assign ack_in_tdest = src_rank;

    always_comb begin
        soEnc_tdata = {DATA_WIDTH{1'b0}};
        soEnc_tdata[MSG_TYPE_B] = ACK_TYPE;
        soEnc_tdata[MSG_PARITY_B] = ack_out_tdata;

        si_tready = 1'b0;

        soRole_tvalid = 1'b0;
        soRole_tdata = si_tdata;
        soRole_tkeep = si_tkeep;
        soRole_tlast = si_tlast;
        soRole_tdest = ID_MESSAGE_RECEIVER;

        conn_info_en = comp_conn_info_we;
        conn_info_we = comp_conn_info_we;
        conn_info_addr = src_rank;
        conn_info_din = conn_info_buf;

        case (state)

            RESET_INTERNALS: begin
                conn_info_en = 1'b1;
                conn_info_we = 1'b1;
                conn_info_addr = count;
                conn_info_din.recv_mask = 4'd0;
                //conn_info_din.recv_state = 4'd0;
                conn_info_din.next_winid = 2'd0;
                conn_info_din.parity = 1'b0;
            end

            IDLE: begin
                si_tready = si_tdata[MSG_TYPE_B] == ACK_TYPE;
                conn_info_en = si_tvalid;
                conn_info_addr = si_tid[CLUST_BITS-1:0];
            end

            FORWARD_ACK: begin
                soRole_tvalid = 1'b1;
                soRole_tdest = ID_MESSAGE_SENDER;
                soRole_tdata[0] = msg_parity;
                soRole_tlast = 1'b1;
            end

            FORWARD_DATA: begin
                soRole_tvalid = si_tvalid;
                si_tready = soRole_tready;
            end

            DROP_DATA: begin
                si_tready = 1'b1;
            end

        endcase
    end

    always_ff @(posedge clk) begin
        comp_conn_info <= 1'b0;
        comp_conn_info_we <= comp_conn_info;

        case (state)

            //While the rstn signal is active, I don't want any memory to be active to save energy.
            PRE_RESET: begin
                count <= {CLUST_BITS{1'b0}};
                state <= RESET_INTERNALS;
            end

            RESET_INTERNALS: begin
                count <= count + {{CLUST_BITS-1{1'b0}}, 1'b1};
                if (count == {CLUST_BITS{1'b1}}) begin
                    state <= IDLE;
                end
            end

            IDLE: begin
                header <= si_tdata[63:0];
                src_rank <= si_tid[CLUST_BITS-1:0];
                if (si_tvalid) begin
                    if (si_tdata[MSG_TYPE_B] == ACK_TYPE) begin
                        state <= FORWARD_ACK;
                    end else begin
                        state <= CHECK_CONNINFO;
                    end
                end
            end

            FORWARD_ACK: begin
                if (soRole_tready) begin
                    state <= IDLE;
                end
            end

            CHECK_CONNINFO: begin
                comp_conn_info <= 1'b1;
                if (conn_info_dout.parity != msg_parity || conn_info_dout.recv_mask[msg_win_id] == 1'b0) begin
                    state <= FORWARD_DATA;
                end else begin
                    state <= DROP_DATA;
                end
            end

            FORWARD_DATA: begin
                if (si_tvalid && soRole_tready && si_tlast) begin
                    state <= UPDATE_CONN_INFO;
                end
            end

            DROP_DATA: begin
                if (si_tvalid && si_tlast) begin
                    state <= UPDATE_CONN_INFO;
                end
            end

            UPDATE_CONN_INFO: begin
                //if ((conn_info_buf.recv_state & recv_state_mask) == recv_state_mask) begin
                // If the incoming packet has different parity, the next_winid register is invalid.
                // E.g. A first packet of winlen == 0 arrives. After
                // processing it, next_winid is 1. Next packet has winlen 1,
                // but winid is 1 (winid 0 is lost). If we only read next_winid, the packet decoder would send an ack.
                if (((msg_parity == prev_parity && next_winid == msg_win_len) || msg_win_len == 2'd0) && msg_win_id == msg_win_len) begin
                    state <= SEND_ACK;
                end else begin
                    state <= IDLE;
                end
            end

            SEND_ACK: begin
                if (ack_in_tready) begin
                    state <= IDLE;
                end
            end

        endcase

        if (!rstn) begin
            state <= PRE_RESET;
        end
    end

endmodule
