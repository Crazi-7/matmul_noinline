
module axiu_dwidth_downsizer_wrapper #(
    parameter AXI_ADDR_WIDTH = 0,
    parameter AXI_SLV_DATA_WIDTH = 0,
    parameter AXI_MST_DATA_WIDTH = 0,
    parameter READ = 0,
    parameter WRITE = 0
) (
    input clk,
    input rstn,

    input [AXI_ADDR_WIDTH-1:0] slv_aw_addr,
    input [7:0] slv_aw_len,
    input [2:0] slv_aw_size,
    input [1:0] slv_aw_burst,
    input slv_aw_lock,
    input [3:0] slv_aw_cache,
    input [2:0] slv_aw_prot,
    input [3:0] slv_aw_qos,
    input [3:0] slv_aw_region,
    input slv_aw_valid,
    output slv_aw_ready,
    input [AXI_SLV_DATA_WIDTH-1:0] slv_w_data,
    input [AXI_SLV_DATA_WIDTH/8-1:0] slv_w_strb,
    input slv_w_last,
    input slv_w_valid,
    output slv_w_ready,
    output [1:0] slv_b_resp,
    output slv_b_valid,
    input slv_b_ready,
    input [AXI_ADDR_WIDTH-1:0] slv_ar_addr,
    input [7:0] slv_ar_len,
    input [2:0] slv_ar_size,
    input [1:0] slv_ar_burst,
    input slv_ar_lock,
    input [3:0] slv_ar_cache,
    input [2:0] slv_ar_prot,
    input [3:0] slv_ar_qos,
    input [3:0] slv_ar_region,
    input slv_ar_valid,
    output slv_ar_ready,
    output [AXI_SLV_DATA_WIDTH-1:0] slv_r_data,
    output [1:0] slv_r_resp,
    output slv_r_last,
    output slv_r_valid,
    input slv_r_ready,

    output [AXI_ADDR_WIDTH-1:0] mst_aw_addr,
    output [7:0] mst_aw_len,
    output [2:0] mst_aw_size,
    output [1:0] mst_aw_burst,
    output mst_aw_lock,
    output [3:0] mst_aw_cache,
    output [2:0] mst_aw_prot,
    output [3:0] mst_aw_qos,
    output [3:0] mst_aw_region,
    output mst_aw_valid,
    input mst_aw_ready,
    output [AXI_MST_DATA_WIDTH-1:0] mst_w_data,
    output [AXI_MST_DATA_WIDTH/8-1:0] mst_w_strb,
    output mst_w_last,
    output mst_w_valid,
    input mst_w_ready,
    input [1:0] mst_b_resp,
    input mst_b_valid,
    output mst_b_ready,
    output [AXI_ADDR_WIDTH-1:0] mst_ar_addr,
    output [7:0] mst_ar_len,
    output [2:0] mst_ar_size,
    output [1:0] mst_ar_burst,
    output mst_ar_lock,
    output [3:0] mst_ar_cache,
    output [2:0] mst_ar_prot,
    output [3:0] mst_ar_qos,
    output [3:0] mst_ar_region,
    output mst_ar_valid,
    input mst_ar_ready,
    input [AXI_MST_DATA_WIDTH-1:0] mst_r_data,
    input [1:0] mst_r_resp,
    input mst_r_last,
    input mst_r_valid,
    output mst_r_ready
);

    AXI_BUS #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_SLV_DATA_WIDTH),
        .AXI_ID_WIDTH(1),
        .AXI_USER_WIDTH(1)
    ) slv();

    AXI_BUS #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_MST_DATA_WIDTH),
        .AXI_ID_WIDTH(1),
        .AXI_USER_WIDTH(1)
    ) mst();

    assign slv.aw_addr = slv_aw_addr;
    assign slv.aw_len = slv_aw_len;
    assign slv.aw_size = slv_aw_size;
    assign slv.aw_burst = slv_aw_burst;
    assign slv.aw_lock = slv_aw_lock;
    assign slv.aw_cache = slv_aw_cache;
    assign slv.aw_prot = slv_aw_prot;
    assign slv.aw_qos = slv_aw_qos;
    assign slv.aw_region = slv_aw_region;
    assign slv.aw_valid = slv_aw_valid;
    assign slv_aw_ready = slv.aw_ready;
    assign slv.w_data = slv_w_data;
    assign slv.w_strb = slv_w_strb;
    assign slv.w_last = slv_w_last;
    assign slv.w_valid = slv_w_valid;
    assign slv_w_ready = slv.w_ready;
    assign slv_b_resp = slv.b_resp;
    assign slv_b_valid = slv.b_valid;
    assign slv.b_ready = slv_b_ready;
    assign slv.ar_addr = slv_ar_addr;
    assign slv.ar_len = slv_ar_len;
    assign slv.ar_size = slv_ar_size;
    assign slv.ar_burst = slv_ar_burst;
    assign slv.ar_lock = slv_ar_lock;
    assign slv.ar_cache = slv_ar_cache;
    assign slv.ar_prot = slv_ar_prot;
    assign slv.ar_qos = slv_ar_qos;
    assign slv.ar_region = slv_ar_region;
    assign slv.ar_valid = slv_ar_valid;
    assign slv_ar_ready = slv.ar_ready;
    assign slv_r_data = slv.r_data;
    assign slv_r_resp = slv.r_resp;
    assign slv_r_last = slv.r_last;
    assign slv_r_valid = slv.r_valid;
    assign slv.r_ready = slv_r_ready;

    assign mst_aw_addr = mst.aw_addr;
    assign mst_aw_len = mst.aw_len;
    assign mst_aw_size = mst.aw_size;
    assign mst_aw_burst = mst.aw_burst;
    assign mst_aw_lock = mst.aw_lock;
    assign mst_aw_cache = mst.aw_cache;
    assign mst_aw_prot = mst.aw_prot;
    assign mst_aw_qos = mst.aw_qos;
    assign mst_aw_region = mst.aw_region;
    assign mst_aw_valid = mst.aw_valid;
    assign mst.aw_ready = mst_aw_ready;
    assign mst_w_data = mst.w_data;
    assign mst_w_strb = mst.w_strb;
    assign mst_w_last = mst.w_last;
    assign mst_w_valid = mst.w_valid;
    assign mst.w_ready = mst_w_ready;
    assign mst.b_resp = mst_b_resp;
    assign mst.b_valid = mst_b_valid;
    assign mst_b_ready = mst.b_ready;
    assign mst_ar_addr = mst.ar_addr;
    assign mst_ar_len = mst.ar_len;
    assign mst_ar_size = mst.ar_size;
    assign mst_ar_burst = mst.ar_burst;
    assign mst_ar_lock = mst.ar_lock;
    assign mst_ar_cache = mst.ar_cache;
    assign mst_ar_prot = mst.ar_prot;
    assign mst_ar_qos = mst.ar_qos;
    assign mst_ar_region = mst.ar_region;
    assign mst_ar_valid = mst.ar_valid;
    assign mst.ar_ready = mst_ar_ready;
    assign mst.r_data = mst_r_data;
    assign mst.r_resp = mst_r_resp;
    assign mst.r_last = mst_r_last;
    assign mst.r_valid = mst_r_valid;
    assign mst_r_ready = mst.r_ready;

    axiu_dwidth_downsizer #(
        .AXI_SLV_DATA_WIDTH(AXI_SLV_DATA_WIDTH),
        .AXI_MST_DATA_WIDTH(AXI_MST_DATA_WIDTH),
        .READ(READ),
        .WRITE(WRITE)
    ) axiu_dwidth_downsizer_I (
        .clk(clk),
        .rstn(rstn),
        .slv(slv),
        .mst(mst)
    );

endmodule
