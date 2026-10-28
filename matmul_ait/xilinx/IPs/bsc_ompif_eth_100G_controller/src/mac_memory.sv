
module mac_memory #(
    parameter LEN = 0,
    localparam ADDR_WIDTH = $clog2(LEN)
) (
    input clk,
    input en,
    input we,
    input [ADDR_WIDTH-1:0] addr,
    input [47:0] din,
    output reg [47:0] dout
);

    reg [47:0] mem[LEN];

    always_ff @(posedge clk) begin
        if (en) begin
            if (we) begin
                mem[addr] <= din;
            end
            dout <= mem[addr];
        end
    end

endmodule
