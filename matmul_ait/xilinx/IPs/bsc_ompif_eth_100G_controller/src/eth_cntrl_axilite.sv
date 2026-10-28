
module eth_cntrl_axilite #(
    parameter MAC_MEM_LEN = 0,
    localparam MAC_MEM_ADDR_W = $clog2(MAC_MEM_LEN)
) (
    input clk,
    input rstn,

    output reg [47:0] mac_addr = 47'd0,
    output reg [31:0] ip_addr = 32'd0,
    output reg addr_valid = 1'b0,

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
    input [7:0] dbg_flags,

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

    output reg mac_mem_we,
    output [47:0] mac_mem_din,
    output reg [MAC_MEM_ADDR_W-1:0] mac_mem_addr
);

    typedef enum bit [1:0] {
        AW,
        B
    } WState_t;

    WState_t wstate = AW;

    typedef enum bit [2:0] {
        AR,
        SELECT_1,
        SELECT_2,
        R
    } RState_t;

    RState_t rstate = AR;

    reg [13:0] raddr;
    reg [31:0] rdata;
    reg [31:0] stat_reg_rdata;

    reg [47:0] mac_addr_buf;

    reg [1:0] bresp;
    reg [1:0] rresp;

    wire [31:0] bit_wstrb;

    wire [19:0] rx_bip_err;
    reg [31:0] rx_aligned_err_count;
    reg [39:0] rx_bad_code_count;
    reg [31:0] rx_internal_local_fault_count;
    reg [39:0] rx_misaligned_count;
    reg [39:0] rx_bip_err_count;
    reg [31:0] rx_hi_ber_count;
    reg [31:0] rx_synced_err_count;

    assign s_axi_awready = wstate == AW && s_axi_wvalid;
    assign s_axi_wready = wstate == AW && s_axi_awvalid;
    assign s_axi_bvalid = wstate == B;
    assign s_axi_bresp = bresp;
    assign s_axi_arready = rstate == AR;
    assign s_axi_rvalid = rstate == R;
    assign s_axi_rdata = rdata;
    assign s_axi_rresp = rresp;

    assign mac_mem_din = mac_addr_buf;
    assign bit_wstrb = {{8{s_axi_wstrb[3]}}, {8{s_axi_wstrb[2]}}, {8{s_axi_wstrb[1]}}, {8{s_axi_wstrb[0]}}};

    assign rx_bip_err[0] = stat_rx_bip_err_0;
    assign rx_bip_err[1] = stat_rx_bip_err_1;
    assign rx_bip_err[2] = stat_rx_bip_err_2;
    assign rx_bip_err[3] = stat_rx_bip_err_3;
    assign rx_bip_err[4] = stat_rx_bip_err_4;
    assign rx_bip_err[5] = stat_rx_bip_err_5;
    assign rx_bip_err[6] = stat_rx_bip_err_6;
    assign rx_bip_err[7] = stat_rx_bip_err_7;
    assign rx_bip_err[8] = stat_rx_bip_err_8;
    assign rx_bip_err[9] = stat_rx_bip_err_9;
    assign rx_bip_err[10] = stat_rx_bip_err_10;
    assign rx_bip_err[11] = stat_rx_bip_err_11;
    assign rx_bip_err[12] = stat_rx_bip_err_12;
    assign rx_bip_err[13] = stat_rx_bip_err_13;
    assign rx_bip_err[14] = stat_rx_bip_err_14;
    assign rx_bip_err[15] = stat_rx_bip_err_15;
    assign rx_bip_err[16] = stat_rx_bip_err_16;
    assign rx_bip_err[17] = stat_rx_bip_err_17;
    assign rx_bip_err[18] = stat_rx_bip_err_18;
    assign rx_bip_err[19] = stat_rx_bip_err_19;

    always_ff @(posedge clk) begin
        if (stat_rx_aligned_err) rx_aligned_err_count <= rx_aligned_err_count + 32'd1;
        rx_bad_code_count <= rx_bad_code_count + {37'd0, stat_rx_bad_code};
        if (stat_rx_internal_local_fault) rx_internal_local_fault_count <= rx_internal_local_fault_count + 32'd1;
        if (stat_rx_misaligned) rx_misaligned_count <= rx_misaligned_count + 40'd1;
        if (|rx_bip_err) rx_bip_err_count <= rx_bip_err_count + 40'd1;
        if (stat_rx_hi_ber) rx_hi_ber_count <= rx_hi_ber_count + 32'd1;
        if (|stat_rx_synced_err) rx_synced_err_count <= rx_synced_err_count + 32'd1;

        case (raddr)
            14'h1C: begin
                stat_reg_rdata <= rx_aligned_err_count;
            end

            14'h20: begin
                stat_reg_rdata <= rx_bad_code_count[31:0];
            end

            14'h24: begin
                stat_reg_rdata <= {24'd0, rx_bad_code_count[39:32]};
            end

            14'h28: begin
                stat_reg_rdata <= rx_internal_local_fault_count;
            end

            14'h2C: begin
                stat_reg_rdata <= rx_misaligned_count[31:0];
            end

            14'h30: begin
                stat_reg_rdata <= {24'd0, rx_misaligned_count[39:32]};
            end

            14'h34: begin
                stat_reg_rdata <= rx_bip_err_count[31:0];
            end

            14'h38: begin
                stat_reg_rdata <= {24'd0, rx_bip_err_count[39:32]};
            end

            14'h3C: begin
                stat_reg_rdata <= rx_hi_ber_count;
            end

            14'h40: begin
                stat_reg_rdata <= rx_synced_err_count;
            end

            default: begin end
        endcase

        if (!rstn) begin
            rx_internal_local_fault_count <= 32'd0;
            rx_aligned_err_count <= 32'd0;
            rx_bad_code_count <= 40'd0;
            rx_misaligned_count <= 40'd0;
            rx_bip_err_count <= 40'd0;
            rx_hi_ber_count <= 32'd0;
            rx_synced_err_count <= 32'd0;
        end
    end

    always_ff @(posedge clk) begin

        mac_mem_we <= 1'b0;

        case (wstate)

            AW: begin
                bresp <= 2'd0;
                if (s_axi_awvalid && s_axi_wvalid) begin
                    if (s_axi_awaddr == 14'h0) begin
                        mac_addr_buf[31:0] <= (mac_addr_buf[31:0] & ~bit_wstrb) | (s_axi_wdata & bit_wstrb);
                    end else if (s_axi_awaddr == 14'h4) begin
                        mac_addr_buf[47:32] <= (mac_addr_buf[47:32] & ~bit_wstrb[15:0]) | (s_axi_wdata[15:0] & bit_wstrb[15:0]);
                    end else if (s_axi_awaddr == 14'h8) begin
                        mac_mem_addr <= (mac_mem_addr & ~bit_wstrb[MAC_MEM_ADDR_W-1:0]) | (s_axi_wdata[MAC_MEM_ADDR_W-1:0] & bit_wstrb[MAC_MEM_ADDR_W-1:0]);
                        mac_mem_we <= 1'b1;
                    end else if (s_axi_awaddr == 15'hC) begin
                        mac_addr <= mac_addr_buf;
                    end else if (s_axi_awaddr == 15'h10) begin
                        ip_addr <= (ip_addr & ~bit_wstrb) | (s_axi_wdata & bit_wstrb);
                    end else if (s_axi_awaddr == 15'h14) begin
                        addr_valid <= (addr_valid & ~bit_wstrb[0]) | (s_axi_wdata[0] & bit_wstrb[0]);
                    end else begin
                        bresp <= 2'b10;
                    end
                    wstate <= B;
                end
            end

            B: begin
                if (s_axi_bready) begin
                    wstate <= AW;
                end
            end

        endcase

        if (!rstn) begin
            wstate <= AW;
            mac_addr <= 48'd0;
            ip_addr <= 32'd0;
            addr_valid <= 1'b0;
        end
    end

    always_ff @(posedge clk) begin
        case (rstate)

            AR: begin
                raddr <= s_axi_araddr;
                rresp <= 2'd0;
                if (s_axi_arvalid) begin
                    rstate <= SELECT_1;
                end
            end

            SELECT_1: begin
                case (raddr)

                    14'h10: begin
                        rdata <= ip_addr;
                        rstate <= R;
                    end

                    14'h18: begin
                        rdata <= {23'd0, dbg_flags, stat_rx_aligned};
                        rstate <= R;
                    end

                    default: begin
                        rstate <= SELECT_2;
                    end

                endcase
            end

            SELECT_2: begin
                rdata <= stat_reg_rdata;
                rstate <= R;
            end

            R: begin
                if (s_axi_rready) begin
                    rstate <= AR;
                end
            end

        endcase

        if (!rstn) begin
            rstate <= AR;
        end
    end

endmodule
