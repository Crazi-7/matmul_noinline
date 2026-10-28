
module eth_100G_rx_axilite #(
    parameter MAC_CAM_LEN = 0,
    localparam MAC_CAM_ADDR_W = $clog2(MAC_CAM_LEN)
) (
    input clk,
    input rstn,

    output reg mac_cam_we,
    output reg [MAC_CAM_ADDR_W-1:0] mac_cam_addr,
    output [47:0] mac_cam_din,

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

    input [31:0] dbg_corrupted_packets,
    input [31:0] dbg_dropped_packets,
    input [31:0] dbg_total_packets
);

    reg [47:0] mac_buf;

    typedef enum bit [0:0] {
        AW,
        B
    } WState_t;

    WState_t wstate = AW;

    typedef enum bit [1:0] {
        AR,
        SELECT,
        R
    } RState_t;

    RState_t rstate = AR;

    reg [1:0] bresp;
    reg [1:0] rresp;

    reg [13:0] raddr;
    reg [31:0] rdata;

    wire [31:0] bit_wstrb;

    assign s_axi_awready = wstate == AW && s_axi_wvalid;
    assign s_axi_wready = wstate == AW && s_axi_awvalid;
    assign s_axi_bvalid = wstate == B;
    assign s_axi_bresp = bresp;
    assign s_axi_arready = rstate == AR;
    assign s_axi_rvalid = rstate == R;
    assign s_axi_rdata = rdata;
    assign s_axi_rresp = rresp;

    assign bit_wstrb = {{8{s_axi_wstrb[3]}}, {8{s_axi_wstrb[2]}}, {8{s_axi_wstrb[1]}}, {8{s_axi_wstrb[0]}}};

    assign mac_cam_din = mac_buf;

    always_ff @(posedge clk) begin

        mac_cam_we <= 1'b0;

        case (wstate)

            AW: begin
                bresp <= 2'd0;
                if (s_axi_awvalid && s_axi_wvalid) begin
                    if (s_axi_awaddr == 14'h0) begin
                        mac_buf[31:0] <= (mac_buf[31:0] & ~bit_wstrb) | (s_axi_wdata & bit_wstrb);
                    end else if (s_axi_awaddr == 14'h4) begin
                        mac_buf[47:32] <= (mac_buf[47:32] & ~bit_wstrb[15:0]) | (s_axi_wdata[15:0] & bit_wstrb[15:0]);
                    end else if (s_axi_awaddr == 14'h8) begin
                        mac_cam_addr <= (mac_cam_addr & ~bit_wstrb[MAC_CAM_ADDR_W-1:0]) | (s_axi_wdata[MAC_CAM_ADDR_W-1:0] & bit_wstrb[MAC_CAM_ADDR_W-1:0]);
                        mac_cam_we <= 1'b1;
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
        end
    end

    always_ff @(posedge clk) begin

        case (rstate)

            AR: begin
                raddr <= s_axi_araddr;
                if (s_axi_arvalid) begin
                    rstate <= SELECT;
                end
            end

            SELECT: begin
                rresp <= 2'd0;
                case (raddr)

                    14'hC: begin
                        rdata <= dbg_corrupted_packets;
                    end

                    14'h10: begin
                        rdata <= dbg_dropped_packets;
                    end

                    14'h14: begin
                        rdata <= dbg_total_packets;
                    end

                    default: begin
                        rresp <= 2'b10;
                    end

                endcase
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
