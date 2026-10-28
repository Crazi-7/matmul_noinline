
module eth_100G_rx_filter (
    input clk,
    input rstn,
    input [47:0] mac_addr,

    input rx_tvalid,
    input [511:0] rx_tdata,
    input [63:0] rx_tkeep,
    input rx_tuser,
    input rx_tlast,

    input frame_q_full,
    output logic frame_q_confirm,
    output logic frame_q_erase,
    output logic frame_q_write,
    output [576:0] frame_q_din,

    output [31:0] dbg_corrupted_packets,
    output [31:0] dbg_dropped_packets,
    output [31:0] dbg_total_packets
);

    typedef enum bit [1:0] {
        HEADER,
        FORWARD,
        DROP
    } State_t;

    State_t state = HEADER;

    wire valid_packet;
    reg valid_packet_r;

    reg [31:0] corrupted_packets = 32'd0;
    reg [31:0] dropped_packets = 32'd0;
    reg [31:0] total_packets = 32'd0;

    assign dbg_corrupted_packets = corrupted_packets;
    assign dbg_dropped_packets = dropped_packets;
    assign dbg_total_packets = total_packets;

    always_ff @(posedge clk) begin

        if (rx_tvalid && rx_tlast && rx_tuser) begin
            corrupted_packets <= corrupted_packets + 32'd1;
        end

        if (rx_tvalid && rx_tlast) begin
            total_packets <= total_packets + 32'd1;
        end

        case (state)

            HEADER: begin
                valid_packet_r <= valid_packet;
                if (rx_tvalid && rx_tlast && !rx_tuser && frame_q_full && valid_packet) begin
                    dropped_packets <= dropped_packets + 32'd1;
                end
            end

            FORWARD: begin
                if (rx_tvalid && rx_tlast && !rx_tuser && frame_q_full) begin
                    dropped_packets <= dropped_packets + 32'd1;
                end
            end

            DROP: begin
                if (rx_tvalid && rx_tlast && !rx_tuser && valid_packet_r) begin
                    dropped_packets <= dropped_packets + 32'd1;
                end
            end

        endcase

        if (!rstn) begin
            corrupted_packets <= 32'd0;
            dropped_packets <= 32'd0;
            total_packets <= 32'd0;
        end
    end

    assign frame_q_din[511:0] = rx_tdata;
    assign frame_q_din[575:512] = rx_tkeep;
    assign frame_q_din[576] = rx_tlast;

    assign valid_packet = rx_tdata[111:96] == 16'hEDC9 && // Arbitrary ethertype not used by IEEE 802.
                          rx_tdata[47:0  ] == mac_addr;   // When the switch doesn't know the destination address, it does a broadcast.
                                                          // This means FPGAs may receive packets with a different destination address.

    always_comb begin

        frame_q_write = 1'b0;
        frame_q_confirm = 1'b0;
        frame_q_erase = 1'b0;

        case (state)

            HEADER: begin
                if (rx_tvalid && valid_packet) begin
                    frame_q_write = !frame_q_full && (!rx_tlast || !rx_tuser);
                    frame_q_confirm = !frame_q_full && rx_tlast && !rx_tuser;
                end
            end

            FORWARD: begin
                frame_q_write = rx_tvalid && !frame_q_full && (!rx_tlast || !rx_tuser);
                frame_q_erase = rx_tvalid && (frame_q_full || (rx_tlast && rx_tuser));
                frame_q_confirm = rx_tvalid && !frame_q_full && rx_tlast && !rx_tuser;
            end

        endcase

    end

    always_ff @(posedge clk) begin

        case (state)

            HEADER: begin
                if (rx_tvalid) begin
                    if (!rx_tlast) begin
                        if (frame_q_full || !valid_packet) begin
                            state <= DROP;
                        end else begin
                            state <= FORWARD;
                        end
                    end
                end
            end

            DROP: begin
                if (rx_tvalid && rx_tlast) begin
                    state <= HEADER;
                end
            end

            FORWARD: begin
                if (rx_tvalid) begin
                    if (rx_tlast) begin
                        state <= HEADER;
                    end else if (frame_q_full) begin
                        state <= DROP;
                    end
                end
            end

        endcase

        if (!rstn) begin
            state <= HEADER;
        end
    end

endmodule
