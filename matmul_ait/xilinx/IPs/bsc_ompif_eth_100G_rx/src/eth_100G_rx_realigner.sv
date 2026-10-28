
module eth_100G_rx_realigner #(
    parameter MAX_CLUSTER_SIZE = 0,
    localparam CLUSTER_ID_W = $clog2(MAX_CLUSTER_SIZE)
) (
    input clk,
    input rstn,

    input frame_q_empty,
    output logic frame_q_read,
    input [576:0] frame_q_dout,

    output logic so_tvalid,
    input so_tready,
    output logic [511:0] so_tdata,
    output logic [63:0] so_tkeep,
    output reg [7:0] so_tid,
    output logic so_tlast
);

    import OmpifPkg::*;

    typedef enum bit [2:0] {
        IDLE,
        HEADER,
        DATA
    } State_t;

    State_t state = IDLE;

    wire [511:0] tdata;
    wire [63:0] tkeep;
    wire tlast;

    reg [CLUSTER_ID_W-1:0] cluster_id;
    reg [399:0] tdata_buf;
    reg [49:0] tkeep_buf;
    reg tlast_buf;

    reg next_pack_read;
    wire upper_data_empty;
    wire last_transfer;

    assign tdata = frame_q_dout[511:0];
    assign tkeep = frame_q_dout[575:512];
    assign tlast = frame_q_dout[576];
    assign so_tid = {{8-CLUSTER_ID_W{1'b0}}, cluster_id};

    assign upper_data_empty = tkeep[63:14] == 50'd0;
    assign last_transfer = tlast_buf || (tlast && upper_data_empty);

    always_comb begin

        frame_q_read = 1'b0;

        so_tvalid = 1'b0;
        so_tdata[399:0] = tdata_buf;
        so_tdata[511:400] = tdata[111:0];
        so_tkeep[49:0] = tkeep_buf;
        so_tkeep[63:50] = tkeep[13:0];
        so_tlast = last_transfer;

        case (state)

            IDLE: begin
                frame_q_read = !frame_q_empty;
            end

            HEADER: begin
                frame_q_read = !frame_q_empty;
            end

            DATA: begin
                so_tvalid = 1'b1;
                if (tlast_buf) begin
                    so_tkeep[63:50] = 14'd0;
                end
                if (so_tready) begin
                    frame_q_read = !tlast_buf && !frame_q_empty;
                end
            end

        endcase
    end

    always_ff @(posedge clk) begin

        case (state)

            IDLE: begin
                if (!frame_q_empty) begin
                    state <= HEADER;
                end
            end

            HEADER: begin
                next_pack_read <= tlast && !frame_q_empty;
                tdata_buf <= tdata[511:112];
                tkeep_buf <= tkeep[63:14];
                tlast_buf <= tlast;
                cluster_id <= tdata[112+MSG_SRC_L +: CLUSTER_ID_W];
                state <= DATA;
            end

            DATA: begin
                if (so_tready) begin
                    next_pack_read <= tlast && !frame_q_empty;
                    tdata_buf <= tdata[511:112];
                    tkeep_buf <= tkeep[63:14];
                    tlast_buf <= tlast;
                    if (last_transfer) begin
                        if ((tlast_buf && !next_pack_read) || (!tlast_buf && frame_q_empty)) begin
                            state <= IDLE;
                        end else begin
                            state <= HEADER;
                        end
                    end
                end
            end

        endcase

        if (!rstn) begin
            state <= IDLE;
        end
    end

endmodule
