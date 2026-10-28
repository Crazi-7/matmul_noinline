
module eth_100G_controller_realigner #(
    parameter MAX_CLUSTER_SIZE = 0,
    localparam MAC_MEM_ADDR_W = $clog2(MAX_CLUSTER_SIZE)
) (
    input clk,
    input rstn,
    input [47:0] mac_addr,

    input frameq_data_empty,
    output logic frameq_data_read,
    input [512:0] frameq_data_dout,

    input frameq_meta_empty,
    output logic frameq_meta_read,
    input [64+MAC_MEM_ADDR_W-1:0] frameq_meta_dout,

    output logic eth_tx_tvalid,
    input eth_tx_tready,
    output logic [511:0] eth_tx_tdata,
    output logic [63:0] eth_tx_tkeep,
    output [0:0] eth_tx_tuser,
    output logic eth_tx_tlast,

    output [MAC_MEM_ADDR_W-1:0] mac_mem_addr,
    output logic mac_mem_en,
    input [47:0] mac_mem_dout,

    input stat_rx_aligned,
    input [3:0] gt_powergoodout,
    input usr_rx_reset,
    input usr_tx_reset,

    output ctl_tx_enable,
    output ctl_tx_send_rfi,

    output ctl_rx_enable,

    output reg [7:0] dbg_flags
);

    localparam ethertype =  16'hEDC9; //arbitrary ethertype

    typedef enum bit [2:0] {
        SYNC,
        RX_ENABLE,
        RX_ALIGN_WAIT,
        TX_ENABLE,
        IDLE,
        READ_MAC_MEM,
        HEADER,
        DATA
    } State_t;

    State_t state;

    reg ctl_tx_enable_ = 1'b0;
    reg ctl_tx_send_rfi_ = 1'b0;
    reg ctl_rx_enable_ = 1'b0;

    reg frame_sent = 1'b0;
    reg tlast_buf;
    reg [111:0] tdata_buf;
    wire tlast;
    wire [511:0] tdata;
    wire [63:0] tkeep;
    wire [MAC_MEM_ADDR_W-1:0] tdest;

    wire upper_data_empty;
    wire last_transfer;

    assign eth_tx_tuser = 1'b0;

    assign ctl_tx_enable = ctl_tx_enable_;
    assign ctl_tx_send_rfi = ctl_tx_send_rfi_;
    assign ctl_rx_enable = ctl_rx_enable_;

    assign upper_data_empty = tkeep[63:50] == 14'd0;
    assign last_transfer = tlast_buf || (tlast && upper_data_empty);

    assign mac_mem_addr = tdest;
    assign tdata = frameq_data_dout[511:0];
    assign tlast = frameq_data_dout[512];
    assign tkeep = frameq_meta_dout[63:0];
    assign tdest = frameq_meta_dout[64+MAC_MEM_ADDR_W-1:64];

    always_comb begin

        eth_tx_tvalid = 1'b0;
        frameq_data_read = 1'b0;
        frameq_meta_read = 1'b0;
        eth_tx_tdata[111:0] = tdata_buf;
        eth_tx_tdata[511:112] = tdata[399:0];
        eth_tx_tkeep[13:0] = tlast_buf ? tkeep[63:50] : 14'h3FFF;
        eth_tx_tkeep[63:14] = tlast ? tkeep[49:0] : 50'h3FFFFFFFFFFFF;
        eth_tx_tlast = 1'b0;

        mac_mem_en = 1'b0;

        case (state)

            IDLE: begin
                frameq_data_read = !frameq_data_empty;
                frameq_meta_read = !frameq_meta_empty;
            end

            READ_MAC_MEM: begin
                mac_mem_en = 1'b1;
            end

            HEADER: begin
                eth_tx_tvalid = 1'b1;
                frameq_data_read = !tlast && eth_tx_tready;
                eth_tx_tdata[47:0] = mac_mem_dout;
                eth_tx_tdata[95:48] = mac_addr;
                eth_tx_tdata[111:96] = ethertype;
                eth_tx_tkeep[13:0] = 14'h3FFF;
                if (tlast && upper_data_empty) begin
                    eth_tx_tlast = 1'b1;
                end
            end

            DATA: begin
                eth_tx_tvalid = 1'b1;
                frameq_data_read = !tlast_buf && !tlast && eth_tx_tready;
                eth_tx_tlast = last_transfer;
                if (tlast_buf) begin
                    eth_tx_tkeep[63:14] = 50'd0;
                end
            end

            default: begin end

        endcase

    end

    always_ff @(posedge clk) begin
        if (usr_rx_reset && state != SYNC) begin
            dbg_flags[0] <= 1'b1;
        end
        if (usr_tx_reset && state != SYNC) begin
            dbg_flags[1] <= 1'b1;
        end
        if (!(&gt_powergoodout) && state != SYNC) begin
            dbg_flags[2] <= 1'b1;
        end
        if (!stat_rx_aligned && state != SYNC && state != RX_ENABLE && state != RX_ALIGN_WAIT) begin
            dbg_flags[3] <= 1'b1;
        end
        if (usr_rx_reset && frame_sent) begin
            dbg_flags[4] <= 1'b1;
        end
        if (usr_tx_reset && frame_sent) begin
            dbg_flags[5] <= 1'b1;
        end
        if (!(&gt_powergoodout) && frame_sent) begin
            dbg_flags[6] <= 1'b1;
        end
        if (!stat_rx_aligned && frame_sent) begin
            dbg_flags[7] <= 1'b1;
        end

        case (state)

            SYNC: begin
                ctl_rx_enable_ <= 1'b0;
                ctl_tx_enable_ <= 1'b0;
                ctl_tx_send_rfi_ <= 1'b0;
                if (~usr_rx_reset & ~usr_tx_reset & (&gt_powergoodout)) begin
                    state <= RX_ENABLE;
                end
            end

            RX_ENABLE: begin
                ctl_rx_enable_ <= 1'b1;
                ctl_tx_send_rfi_ <= 1'b1;
                state <= RX_ALIGN_WAIT;
            end

            RX_ALIGN_WAIT: begin
                if (stat_rx_aligned) begin
                    state <= TX_ENABLE;
                end
            end

            TX_ENABLE: begin
                ctl_tx_send_rfi_ <= 1'b0;
                ctl_tx_enable_ <= 1'b1;
                state <= IDLE;
            end

            IDLE: begin
                if (!frameq_data_empty) begin
                    frame_sent <= 1'b1;
                    state <= READ_MAC_MEM;
                end
            end

            READ_MAC_MEM: begin
                state <= HEADER;
            end

            HEADER: begin
                tlast_buf <= tlast;
                tdata_buf <= tdata[511:400];
                if (eth_tx_tready) begin
                    if (tlast && upper_data_empty) begin
                        state <= IDLE;
                    end else begin
                        state <= DATA;
                    end
                end
            end

            DATA: begin
                if (last_transfer) begin
                    if (eth_tx_tready) begin
                        state <= IDLE;
                    end
                end else if (eth_tx_tready) begin
                    tdata_buf <= tdata[511:400];
                    tlast_buf <= tlast;
                end
            end

        endcase

        if (!rstn) begin
            frame_sent <= 1'b0;
            dbg_flags <= 8'd0;
            state <= SYNC;
        end
    end

endmodule
