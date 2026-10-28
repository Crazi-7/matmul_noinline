
// Assumptions of this implementation
// - Address is aligned to AXI_SLV_DATA_WIDTH
// - Transfer size is AXI_SLV_DATA_WIDTH/8
// - AW/AR len is at most 256/(AXI_SLV_DATA_WIDTH/AXI_MST_DATA_WIDTH)-1
// - No ID
// - No USR
// This way we avoid FIFOs and simplify a lot the design
module axiu_dwidth_downsizer #(
    parameter AXI_SLV_DATA_WIDTH = 0,
    parameter AXI_MST_DATA_WIDTH = 0,
    parameter READ = 0,
    parameter WRITE = 0
) (
    input clk,
    input rstn,
    AXI_BUS.Slave slv,
    AXI_BUS.Master mst
);

    localparam AXI_MST_WSTRB_WIDTH = AXI_MST_DATA_WIDTH/8;
    localparam MST_TRANSFER_SIZE = AXI_MST_DATA_WIDTH/8;
    localparam SIZE_FACTOR = AXI_SLV_DATA_WIDTH/AXI_MST_DATA_WIDTH;
    localparam TXN_SIZE_BITS = $clog2(SIZE_FACTOR);
    localparam MST_ALIGN_BITS = $clog2(MST_TRANSFER_SIZE);

    assign mst.ar_valid  = slv.ar_valid;
    assign slv.ar_ready  = mst.ar_ready;
    assign mst.ar_id     = slv.ar_id;
    assign mst.ar_addr   = slv.ar_addr;
    assign mst.ar_size   = MST_ALIGN_BITS[2:0];
    assign mst.ar_burst  = slv.ar_burst;
    assign mst.ar_lock   = slv.ar_lock;
    assign mst.ar_cache  = slv.ar_cache;
    assign mst.ar_prot   = slv.ar_prot;
    assign mst.ar_qos    = slv.ar_qos;
    assign mst.ar_region = slv.ar_region;
    assign mst.ar_len    = (slv.ar_len + 8'd1)*SIZE_FACTOR - 8'd1;

    assign mst.aw_atop   = '0;
    assign mst.aw_valid  = slv.aw_valid;
    assign slv.aw_ready  = mst.aw_ready;
    assign mst.aw_id     = slv.aw_id;
    assign mst.aw_addr   = slv.aw_addr;
    assign mst.aw_size   = MST_ALIGN_BITS[2:0];
    assign mst.aw_burst  = slv.aw_burst;
    assign mst.aw_lock   = slv.aw_lock;
    assign mst.aw_cache  = slv.aw_cache;
    assign mst.aw_prot   = slv.aw_prot;
    assign mst.aw_qos    = slv.aw_qos;
    assign mst.aw_region = slv.aw_region;
    assign mst.aw_len    = (slv.aw_len + 8'd1)*SIZE_FACTOR - 8'd1;

    assign slv.b_valid = mst.b_valid;
    assign mst.b_ready = slv.b_ready;
    assign slv.b_resp  = mst.b_resp;
    assign slv.b_id    = mst.b_id;

    assign mst.w_valid = slv.w_valid;

    if (WRITE) begin : write_gen
        reg [TXN_SIZE_BITS-1:0] w_data_state;
        assign slv.w_ready = mst.w_ready && w_data_state == {TXN_SIZE_BITS{1'b1}};
        assign mst.w_data = slv.w_data[w_data_state*AXI_MST_DATA_WIDTH +: AXI_MST_DATA_WIDTH];
        assign mst.w_strb = slv.w_strb[w_data_state*AXI_MST_WSTRB_WIDTH +: AXI_MST_WSTRB_WIDTH];
        assign mst.w_last = slv.w_last && w_data_state == {TXN_SIZE_BITS{1'b1}};

        always_ff @(posedge clk) begin
            if (slv.w_valid && mst.w_ready) begin
                w_data_state <= w_data_state + {{TXN_SIZE_BITS-1{1'b0}}, 1'b1};
            end
            if (!rstn) begin
                w_data_state <= {TXN_SIZE_BITS{1'b0}};
            end
        end
    end

    if (READ) begin : read_gen
        reg [TXN_SIZE_BITS-1:0] r_data_state;
        reg [AXI_SLV_DATA_WIDTH-1:0] r_data_buf;
        reg [2:0] r_resp_buf;
        reg r_last_buf;
        reg r_buf_full;

        assign slv.r_valid = r_buf_full;
        assign mst.r_ready = !r_buf_full || slv.r_ready;
        assign slv.r_last = r_last_buf;
        assign slv.r_resp = r_resp_buf;
        assign slv.r_data = r_data_buf;

        always_ff @(posedge clk) begin
            if (mst.r_valid && (!r_buf_full || slv.r_ready)) begin
                r_data_state <= r_data_state + {{TXN_SIZE_BITS-1{1'b0}}, 1'b1};
                r_data_buf[r_data_state*AXI_MST_DATA_WIDTH +: AXI_MST_DATA_WIDTH] <= mst.r_data;
                r_last_buf <= r_data_state == {TXN_SIZE_BITS{1'b1}} && mst.r_last;
                r_buf_full <= r_data_state == {TXN_SIZE_BITS{1'b1}};
                r_resp_buf <= mst.r_resp;
            end else if (slv.r_ready) begin
                r_buf_full <= 1'b0;
            end

            if (!rstn) begin
                r_buf_full <= 1'b0;
                r_data_state <= {TXN_SIZE_BITS{1'b0}};
            end
        end
    end

endmodule
