
module eth_100G_rx #(
    parameter FRAME_QUEUE_LEN = 0,
    parameter MAX_CLUSTER_SIZE = 0
) (
    input clk,
    input rstn,
    input [47:0] mac_addr,

    input rx_tvalid,
    input [511:0] rx_tdata,
    input [63:0] rx_tkeep,
    input rx_tuser,
    input rx_tlast,

    output so_tvalid,
    input so_tready,
    output [511:0] so_tdata,
    output [63:0] so_tkeep,
    output [7:0] so_tid,
    output so_tlast,

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
    output [1:0] s_axi_rresp
);

    localparam CAM_ADDR_W = $clog2(MAX_CLUSTER_SIZE);

    wire frame_q_empty;
    wire frame_q_read;
    wire [576:0] frame_q_dout;

    wire frame_q_full;
    wire frame_q_write;
    wire frame_q_confirm;
    wire frame_q_erase;
    wire [576:0] frame_q_din;

    wire mac_cam_we;
    wire [CAM_ADDR_W-1:0] mac_cam_addr;
    wire [47:0] mac_cam_din;
    /*wire mac_cam_match;
    wire [CAM_ADDR_W-1:0] mac_cam_match_addr;
    wire [47:0] mac_cam_search;*/

    wire [31:0] dbg_corrupted_packets;
    wire [31:0] dbg_dropped_packets;
    wire [31:0] dbg_total_packets;

    eth_100G_rx_axilite #(
        .MAC_CAM_LEN(MAX_CLUSTER_SIZE)
    ) axilite_I (
        .clk(clk),
        .rstn(rstn),
        .mac_cam_we(mac_cam_we),
        .mac_cam_addr(mac_cam_addr),
        .mac_cam_din(mac_cam_din),
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
        .dbg_corrupted_packets(dbg_corrupted_packets),
        .dbg_dropped_packets(dbg_dropped_packets),
        .dbg_total_packets(dbg_total_packets)
    );

    eth_100G_rx_filter filter_I (
        .clk(clk),
        .rstn(rstn),
        .mac_addr(mac_addr),
        .rx_tvalid(rx_tvalid),
        .rx_tdata(rx_tdata),
        .rx_tkeep(rx_tkeep),
        .rx_tuser(rx_tuser),
        .rx_tlast(rx_tlast),
        .frame_q_full(frame_q_full),
        .frame_q_confirm(frame_q_confirm),
        .frame_q_erase(frame_q_erase),
        .frame_q_write(frame_q_write),
        .frame_q_din(frame_q_din),
        .dbg_corrupted_packets(dbg_corrupted_packets),
        .dbg_dropped_packets(dbg_dropped_packets),
        .dbg_total_packets(dbg_total_packets)
    );

    eth_100G_rx_frame_queue #(
        .LEN(FRAME_QUEUE_LEN),
        .WIDTH(577)
    ) frame_q_I (
        .clk(clk),
        .rstn(rstn),
        .empty(frame_q_empty),
        .read(frame_q_read),
        .dout(frame_q_dout),
        .full(frame_q_full),
        .write(frame_q_write),
        .confirm(frame_q_confirm),
        .erase(frame_q_erase),
        .din(frame_q_din)
    );

    // This is not needed anymore because the source id is embedded in the ompif header
    /*eth_100G_rx_mac_cam #(
        .LEN(MAX_CLUSTER_SIZE)
    ) mac_cam_I (
        .clk(clk),
        .we(mac_cam_we),
        .addr(mac_cam_addr),
        .din(mac_cam_din),
        .search(mac_cam_search),
        .match_addr(mac_cam_match_addr),
        .match(mac_cam_match)
    );*/

    eth_100G_rx_realigner #(
        .MAX_CLUSTER_SIZE(MAX_CLUSTER_SIZE)
    ) realigner_I (
        .clk(clk),
        .rstn(rstn),
        .frame_q_empty(frame_q_empty),
        .frame_q_read(frame_q_read),
        .frame_q_dout(frame_q_dout),
        .so_tvalid(so_tvalid),
        .so_tready(so_tready),
        .so_tdata(so_tdata),
        .so_tkeep(so_tkeep),
        .so_tid(so_tid),
        .so_tlast(so_tlast)
        //.cam_search(mac_cam_search),
        //.cam_match_addr(mac_cam_match_addr),
        //.cam_match(mac_cam_match)
    );

endmodule
