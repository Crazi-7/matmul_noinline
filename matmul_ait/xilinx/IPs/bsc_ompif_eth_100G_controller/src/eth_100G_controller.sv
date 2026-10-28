
module eth_100G_controller #(
    parameter MAX_CLUSTER_SIZE = 0,
    parameter FRAMEQ_DATA_LEN = 0,
    parameter FRAMEQ_META_LEN = 0
) (
    input clk,
    input rstn,
    output [47:0] mac_addr,
    output [31:0] ip_addr,
    output addr_valid,

    input si_tvalid,
    output si_tready,
    input [511:0] si_tdata,
    input [63:0] si_tkeep,
    input [7:0] si_tdest,
    input si_tlast,

    output eth_tx_tvalid,
    input eth_tx_tready,
    output [511:0] eth_tx_tdata,
    output [63:0] eth_tx_tkeep,
    output [0:0] eth_tx_tuser,
    output eth_tx_tlast,

    input s_axi_awvalid,
    output s_axi_awready,
    input [13:0] s_axi_awaddr,
    input [2:0] s_axi_awprot,
    input s_axi_wvalid,
    output s_axi_wready,
    input [31:0] s_axi_wdata,
    input [3:0] s_axi_wstrb,
    output s_axi_bvalid,
    input s_axi_bready,
    output [1:0] s_axi_bresp,
    input s_axi_arvalid,
    output s_axi_arready,
    input [13:0] s_axi_araddr,
    input [2:0] s_axi_arprot,
    output s_axi_rvalid,
    input s_axi_rready,
    output [31:0] s_axi_rdata,
    output [1:0] s_axi_rresp,

    input stat_rx_aligned,
    input stat_rx_aligned_err,
    input [2:0] stat_rx_bad_code,
    input stat_rx_bip_err_0,
    input stat_rx_bip_err_1,
    input stat_rx_bip_err_2,
    input stat_rx_bip_err_3,
    input stat_rx_bip_err_4,
    input stat_rx_bip_err_5,
    input stat_rx_bip_err_6,
    input stat_rx_bip_err_7,
    input stat_rx_bip_err_8,
    input stat_rx_bip_err_9,
    input stat_rx_bip_err_10,
    input stat_rx_bip_err_11,
    input stat_rx_bip_err_12,
    input stat_rx_bip_err_13,
    input stat_rx_bip_err_14,
    input stat_rx_bip_err_15,
    input stat_rx_bip_err_16,
    input stat_rx_bip_err_17,
    input stat_rx_bip_err_18,
    input stat_rx_bip_err_19,
    input stat_rx_hi_ber,
    input stat_rx_internal_local_fault,
    input stat_rx_misaligned,
    input [19:0] stat_rx_synced_err,

    input [3:0] gt_powergoodout,
    input usr_rx_reset,
    input usr_tx_reset,

    output ctl_tx_enable,
    output ctl_tx_send_rfi,

    output ctl_rx_enable
);

    localparam MAC_MEM_ADDR_W = $clog2(MAX_CLUSTER_SIZE);

    wire axilite_mac_mem_we;
    wire [MAC_MEM_ADDR_W-1:0] axilite_mac_mem_addr;
    wire [47:0] axilite_mac_mem_din;

    wire si_mac_mem_en;
    wire [MAC_MEM_ADDR_W-1:0] si_mac_mem_addr;
    wire [47:0] si_mac_mem_dout;

    wire frameq_data_empty;
    wire frameq_data_read;
    wire [512:0] frameq_data_dout;
    wire frameq_data_full;
    wire frameq_data_write;
    wire frameq_data_confirm;
    wire [512:0] frameq_data_din;

    wire frameq_meta_empty;
    wire frameq_meta_read;
    wire [64+MAC_MEM_ADDR_W-1:0] frameq_meta_dout;
    wire frameq_meta_full;
    wire frameq_meta_write;
    wire frameq_meta_confirm;
    wire [64+MAC_MEM_ADDR_W-1:0] frameq_meta_din;

    wire [7:0] dbg_flags;

    assign frameq_data_write = si_tvalid && !frameq_data_full && !frameq_meta_full;
    assign si_tready = !frameq_data_full && !frameq_meta_full;
    assign frameq_data_confirm = si_tvalid && !frameq_data_full && !frameq_meta_full && si_tlast;
    assign frameq_meta_confirm = si_tvalid && !frameq_data_full && !frameq_meta_full && si_tlast;
    assign frameq_meta_write = si_tvalid && !frameq_data_full && !frameq_meta_full && si_tlast;

    assign frameq_data_din[511:0] = si_tdata;
    assign frameq_data_din[512] = si_tlast;
    assign frameq_meta_din[63:0] = si_tkeep;
    assign frameq_meta_din[64+MAC_MEM_ADDR_W-1:64] = si_tdest[MAC_MEM_ADDR_W-1:0];

    eth_cntrl_axilite #(
        .MAC_MEM_LEN(MAX_CLUSTER_SIZE)
    ) eth_cntrl_axilite_I (
        .clk(clk),
        .rstn(rstn),
        .mac_addr(mac_addr),
        .ip_addr(ip_addr),
        .addr_valid(addr_valid),
        .stat_rx_aligned(stat_rx_aligned),
        .stat_rx_aligned_err(stat_rx_aligned_err),
        .stat_rx_bad_code(stat_rx_bad_code),
        .stat_rx_bip_err_0(stat_rx_bip_err_0),
        .stat_rx_bip_err_1(stat_rx_bip_err_1),
        .stat_rx_bip_err_2(stat_rx_bip_err_2),
        .stat_rx_bip_err_3(stat_rx_bip_err_3),
        .stat_rx_bip_err_4(stat_rx_bip_err_4),
        .stat_rx_bip_err_5(stat_rx_bip_err_5),
        .stat_rx_bip_err_6(stat_rx_bip_err_6),
        .stat_rx_bip_err_7(stat_rx_bip_err_7),
        .stat_rx_bip_err_8(stat_rx_bip_err_8),
        .stat_rx_bip_err_9(stat_rx_bip_err_9),
        .stat_rx_bip_err_10(stat_rx_bip_err_10),
        .stat_rx_bip_err_11(stat_rx_bip_err_11),
        .stat_rx_bip_err_12(stat_rx_bip_err_12),
        .stat_rx_bip_err_13(stat_rx_bip_err_13),
        .stat_rx_bip_err_14(stat_rx_bip_err_14),
        .stat_rx_bip_err_15(stat_rx_bip_err_15),
        .stat_rx_bip_err_16(stat_rx_bip_err_16),
        .stat_rx_bip_err_17(stat_rx_bip_err_17),
        .stat_rx_bip_err_18(stat_rx_bip_err_18),
        .stat_rx_bip_err_19(stat_rx_bip_err_19),
        .stat_rx_hi_ber(stat_rx_hi_ber),
        .stat_rx_internal_local_fault(stat_rx_internal_local_fault),
        .stat_rx_misaligned(stat_rx_misaligned),
        .stat_rx_synced_err(stat_rx_synced_err),
        .dbg_flags(dbg_flags),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arready(s_axi_arready),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rresp(s_axi_rresp),
        .mac_mem_we(axilite_mac_mem_we),
        .mac_mem_din(axilite_mac_mem_din),
        .mac_mem_addr(axilite_mac_mem_addr)
    );

    mac_memory #(
        .LEN(MAX_CLUSTER_SIZE)
    ) mac_memory_I (
        .clk(clk),
        .en(axilite_mac_mem_we | si_mac_mem_en),
        .we(axilite_mac_mem_we),
        .addr(axilite_mac_mem_we ? axilite_mac_mem_addr : si_mac_mem_addr),
        .din(axilite_mac_mem_din),
        .dout(si_mac_mem_dout)
    );

    eth_100G_controller_frame_queue #(
        .LEN(FRAMEQ_DATA_LEN),
        .WIDTH(513)
    ) data_queue_I (
        .clk(clk),
        .rstn(rstn),
        .empty(frameq_data_empty),
        .read(frameq_data_read),
        .dout(frameq_data_dout),
        .full(frameq_data_full),
        .write(frameq_data_write),
        .confirm(frameq_data_confirm),
        .din(frameq_data_din)
    );

    eth_100G_controller_frame_queue #(
        .LEN(FRAMEQ_META_LEN),
        .WIDTH(64+MAC_MEM_ADDR_W)
    ) meta_queue_I (
        .clk(clk),
        .rstn(rstn),
        .empty(frameq_meta_empty),
        .read(frameq_meta_read),
        .dout(frameq_meta_dout),
        .full(frameq_meta_full),
        .write(frameq_meta_write),
        .confirm(frameq_meta_confirm),
        .din(frameq_meta_din)
    );

    eth_100G_controller_realigner #(
        .MAX_CLUSTER_SIZE(MAX_CLUSTER_SIZE)
    ) realigner_I (
        .clk(clk),
        .rstn(rstn),
        .mac_addr(mac_addr),
        .frameq_data_empty(frameq_data_empty),
        .frameq_data_read(frameq_data_read),
        .frameq_data_dout(frameq_data_dout),
        .frameq_meta_empty(frameq_meta_empty),
        .frameq_meta_read(frameq_meta_read),
        .frameq_meta_dout(frameq_meta_dout),
        .eth_tx_tvalid(eth_tx_tvalid),
        .eth_tx_tready(eth_tx_tready),
        .eth_tx_tdata(eth_tx_tdata),
        .eth_tx_tkeep(eth_tx_tkeep),
        .eth_tx_tuser(eth_tx_tuser),
        .eth_tx_tlast(eth_tx_tlast),
        .mac_mem_addr(si_mac_mem_addr),
        .mac_mem_en(si_mac_mem_en),
        .mac_mem_dout(si_mac_mem_dout),
        .stat_rx_aligned(stat_rx_aligned),
        .gt_powergoodout(gt_powergoodout),
        .usr_rx_reset(usr_rx_reset),
        .usr_tx_reset(usr_tx_reset),
        .ctl_tx_enable(ctl_tx_enable),
        .ctl_tx_send_rfi(ctl_tx_send_rfi),
        .ctl_rx_enable(ctl_rx_enable),
        .dbg_flags(dbg_flags)
    );

endmodule
