/*********************************************************************************/
/*  (C) Copyright 2017-2026 Barcelona Supercomputing Center                      */
/*                          Centro Nacional de Supercomputacion                  */
/*                                                                               */
/*  This source describes Open Hardware and is licensed under the CERN-OHL-W v2  */
/*  You may redistribute and modify this documentation and make products         */
/*  using it under the terms of the CERN-OHL-W v2 (https://cern.ch/cern-ohl).    */
/*  This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED             */
/*  WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY                 */
/*  AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN-OHL-W v2           */
/*  for applicable conditions.                                                   */
/*  Source location: https://github.com/bsc-pm-ompss-at-fpga/message_sender      */
/*  As per CERN-OHL-W v2 section 4.1, should You produce hardware based on       */
/*  these sources, You must maintain the Source Location visible on the          */
/*  external case of the White Rabbit switch or other product you make using     */
/*  this documentation.                                                          */
/*                                                                               */
/*********************************************************************************/

module message_sender_cntrl_intf #(
    parameter DEF_TIMEOUT = 0,
    parameter DEF_TIMEOUT_RAND_SELECT = 0,
    parameter CONTROL_INTF = 0,
    parameter TOTAL_LAT_WIDTH = 64
) (
    input clk,
    input rstn,
    input [31:0] dbg_max_lat,
    input [31:0] dbg_min_lat,
    input [TOTAL_LAT_WIDTH-1:0] dbg_total_lat,
    input [TOTAL_LAT_WIDTH-1:0] dbg_total_timeout_lat,
    input [31:0] dbg_total_sends,
    input [31:0] dbg_unexpected_acks,
    input [31:0] dbg_total_timeouts,
    input [31:0] dbg_min_send,
    input [31:0] dbg_max_send,
    input [TOTAL_LAT_WIDTH-1:0] dbg_total_issue_read,
    input [TOTAL_LAT_WIDTH-1:0] dbg_total_wait_data,
    input [TOTAL_LAT_WIDTH-1:0] dbg_total_send_data,
    output reg [31:0] timeout,
    output reg [2:0] timeout_rand_select,
    input err_max_retries,
    input cntrl_arvalid,
    output cntrl_arready,
    input [2:0] cntrl_arprot,
    input [13:0] cntrl_araddr,
    output cntrl_rvalid,
    input cntrl_rready,
    output [31:0] cntrl_rdata,
    output [1:0] cntrl_rresp,
    input cntrl_awvalid,
    output cntrl_awready,
    input [2:0] cntrl_awprot,
    input [13:0] cntrl_awaddr,
    input cntrl_wvalid,
    output cntrl_wready,
    input [31:0] cntrl_wdata,
    input [3:0] cntrl_wstrb,
    output cntrl_bvalid,
    input cntrl_bready,
    output [1:0] cntrl_bresp
);

    if (CONTROL_INTF) begin : cntrl_intf_gen

       typedef enum bit [1:0] {
           AR,
           SELECT_REG,
           R
        } RState_t;

        typedef enum bit[1:0] {
            AW,
            W,
            B
        } WState_t;

        RState_t rstate;
        WState_t wstate;

        reg [6:0] raddr;
        reg [6:0] waddr;
        reg [1:0] rresp;
        reg [31:0] rdata;
        reg [1:0] bresp;
        wire [31:0] bit_wstrb;
        wire [31:0] total_lat_high;
        wire [31:0] total_timeout_lat_high;
        wire [31:0] total_issue_read_high;
        wire [31:0] total_wait_data_high;
        wire [31:0] total_send_data_high;

        assign bit_wstrb = {{8{cntrl_wstrb[3]}}, {8{cntrl_wstrb[2]}}, {8{cntrl_wstrb[1]}}, {8{cntrl_wstrb[0]}}};

        assign cntrl_arready = rstate == AR;
        assign cntrl_rvalid = rstate == R;
        assign cntrl_rdata = rdata;
        assign cntrl_rresp = rresp;
        assign cntrl_awready = wstate == AW;
        assign cntrl_wready = wstate == W;
        assign cntrl_bvalid = wstate == B;
        assign cntrl_bresp = bresp;

        if (TOTAL_LAT_WIDTH == 64) begin
            assign total_lat_high = dbg_total_lat[63:32];
            assign total_timeout_lat_high = dbg_total_timeout_lat[63:32];
            assign total_issue_read_high = dbg_total_issue_read[63:32];
            assign total_send_data_high = dbg_total_send_data[63:32];
            assign total_wait_data_high = dbg_total_wait_data[63:32];
        end else begin
            assign total_lat_high = {{64-TOTAL_LAT_WIDTH{1'b0}}, dbg_total_lat[TOTAL_LAT_WIDTH-1:32]};
            assign total_timeout_lat_high = {{64-TOTAL_LAT_WIDTH{1'b0}}, dbg_total_timeout_lat[TOTAL_LAT_WIDTH-1:32]};
            assign total_issue_read_high = {{64-TOTAL_LAT_WIDTH{1'b0}}, dbg_total_issue_read[TOTAL_LAT_WIDTH-1:32]};
            assign total_send_data_high = {{64-TOTAL_LAT_WIDTH{1'b0}}, dbg_total_send_data[TOTAL_LAT_WIDTH-1:32]};
            assign total_wait_data_high = {{64-TOTAL_LAT_WIDTH{1'b0}}, dbg_total_wait_data[TOTAL_LAT_WIDTH-1:32]};
        end

        always_ff @(posedge clk) begin

            case (rstate)

                AR: begin
                    raddr <= cntrl_araddr[6:0];
                    if (cntrl_arvalid) begin
                        rstate <= SELECT_REG;
                    end
                end

                SELECT_REG: begin
                    rresp <= 2'd0;
                    case (raddr)

                        7'd0: begin
                            rdata <= timeout;
                        end

                        7'd4: begin
                            rdata <= {{29{1'b0}}, timeout_rand_select};
                        end

                        7'd8: begin
                            rdata <= dbg_total_lat[31:0];
                        end

                        7'd12: begin
                            rdata <= total_lat_high;
                        end

                        7'd16: begin
                            rdata <= dbg_total_timeout_lat[31:0];
                        end

                        7'd20: begin
                            rdata <= total_timeout_lat_high;
                        end

                        7'd24: begin
                            rdata <= dbg_total_sends;
                        end

                        7'd28: begin
                            rdata <= dbg_total_timeouts;
                        end

                        7'd32: begin
                            rdata <= dbg_unexpected_acks;
                        end

                        7'd36: begin
                            rdata <= dbg_max_lat;
                        end

                        7'd40: begin
                            rdata <= dbg_min_lat;
                        end

                        7'd44: begin
                            rdata <= dbg_min_send;
                        end

                        7'd48:  begin
                            rdata <= dbg_max_send;
                        end

                        7'd52: begin
                            rdata <= dbg_total_issue_read[31:0];
                        end

                        7'd56: begin
                            rdata <= total_issue_read_high;
                        end

                        7'd60: begin
                            rdata <= dbg_total_wait_data[31:0];
                        end

                        7'd64: begin
                            rdata <= total_wait_data_high;
                        end

                        7'd68: begin
                            rdata <= dbg_total_send_data[31:0];
                        end

                        7'd72: begin
                            rdata <= total_send_data_high;
                        end

                        7'd76: begin
                            rdata <= {31'd0, err_max_retries};
                        end

                        default: begin
                            rresp <= 2'b10; //SLVERR
                        end

                    endcase
                    rstate <= R;
                end

                R: begin
                    if (cntrl_rready) begin
                        rstate <= AR;
                    end
                end

            endcase

            case (wstate)

                AW: begin
                    waddr <= cntrl_awaddr[6:0];
                    if (cntrl_awvalid) begin
                        wstate <= W;
                    end
                end

                W: begin
                    bresp <= 2'd0;
                    if (cntrl_wvalid) begin
                        case (waddr)

                            7'd0: begin
                                timeout <= (timeout & ~bit_wstrb) | (cntrl_wdata & bit_wstrb);
                            end

                            7'd4: begin
                                timeout_rand_select <= (timeout_rand_select & ~bit_wstrb[2:0]) | (cntrl_wdata[2:0] & bit_wstrb[2:0]);
                            end

                            default: begin
                                bresp <= 2'b10;
                            end

                        endcase
                        wstate <= B;
                    end
                end

                B: begin
                    if (cntrl_bready) begin
                        wstate <= AW;
                    end
                end

            endcase

            if (!rstn) begin
                timeout <= DEF_TIMEOUT;
                timeout_rand_select <= DEF_TIMEOUT_RAND_SELECT;
            end
        end

    end else begin //If CONTROL_INTF
        assign cntrl_arready = '0;
        assign cntrl_rvalid = '0;
        assign cntrl_rdata = '0;
        assign cntrl_rresp = '0;
        assign cntrl_awready = '0;
        assign cntrl_wready = '0;
        assign cntrl_bvalid = '0;
        assign cntrl_bresp = '0;

        assign timeout = DEF_TIMEOUT;
        assign timeout_rand_select = DEF_TIMEOUT_RAND_SELECT;
    end

endmodule
