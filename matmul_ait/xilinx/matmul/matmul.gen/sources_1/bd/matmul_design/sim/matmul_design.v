//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Oct 28 03:23:25 2026
//Host        : crazo running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target matmul_design.bd
//Design      : matmul_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DDR_0_imp_1OQQHJ1
   (SDRAM_act_n,
    SDRAM_adr,
    SDRAM_ba,
    SDRAM_bg,
    SDRAM_ck_c,
    SDRAM_ck_t,
    SDRAM_cke,
    SDRAM_cs_n,
    SDRAM_dq,
    SDRAM_dqs_c,
    SDRAM_dqs_t,
    SDRAM_odt,
    SDRAM_par,
    SDRAM_reset_n,
    SYS_CLK_clk_n,
    SYS_CLK_clk_p,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arprot,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awprot,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wstrb,
    S_AXI_CTRL_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid,
    peripheral_aresetn,
    rst,
    sys_rst,
    ui_clk);
  output SDRAM_act_n;
  output [16:0]SDRAM_adr;
  output [1:0]SDRAM_ba;
  output [1:0]SDRAM_bg;
  output SDRAM_ck_c;
  output SDRAM_ck_t;
  output SDRAM_cke;
  output SDRAM_cs_n;
  inout [71:0]SDRAM_dq;
  inout [17:0]SDRAM_dqs_c;
  inout [17:0]SDRAM_dqs_t;
  output SDRAM_odt;
  output SDRAM_par;
  output SDRAM_reset_n;
  input SYS_CLK_clk_n;
  input SYS_CLK_clk_p;
  input [31:0]S_AXI_CTRL_araddr;
  input [2:0]S_AXI_CTRL_arprot;
  output S_AXI_CTRL_arready;
  input S_AXI_CTRL_arvalid;
  input [31:0]S_AXI_CTRL_awaddr;
  input [2:0]S_AXI_CTRL_awprot;
  output S_AXI_CTRL_awready;
  input S_AXI_CTRL_awvalid;
  input S_AXI_CTRL_bready;
  output [1:0]S_AXI_CTRL_bresp;
  output S_AXI_CTRL_bvalid;
  output [31:0]S_AXI_CTRL_rdata;
  input S_AXI_CTRL_rready;
  output [1:0]S_AXI_CTRL_rresp;
  output S_AXI_CTRL_rvalid;
  input [31:0]S_AXI_CTRL_wdata;
  output S_AXI_CTRL_wready;
  input [3:0]S_AXI_CTRL_wstrb;
  input S_AXI_CTRL_wvalid;
  input [33:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [6:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [31:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [33:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [6:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [31:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [6:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [6:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input [63:0]S_AXI_wuser;
  input S_AXI_wvalid;
  output [0:0]peripheral_aresetn;
  input rst;
  input sys_rst;
  output ui_clk;

  wire C0_DDR4_1_ACT_N;
  wire [16:0]C0_DDR4_1_ADR;
  wire [1:0]C0_DDR4_1_BA;
  wire [1:0]C0_DDR4_1_BG;
  wire [0:0]C0_DDR4_1_CKE;
  wire [0:0]C0_DDR4_1_CK_C;
  wire [0:0]C0_DDR4_1_CK_T;
  wire [0:0]C0_DDR4_1_CS_N;
  wire [71:0]C0_DDR4_1_DQ;
  wire [17:0]C0_DDR4_1_DQS_C;
  wire [17:0]C0_DDR4_1_DQS_T;
  wire [0:0]C0_DDR4_1_ODT;
  wire C0_DDR4_1_PAR;
  wire C0_DDR4_1_RESET_N;
  wire C0_SYS_CLK_1_CLK_N;
  wire C0_SYS_CLK_1_CLK_P;
  wire [33:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [6:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [3:0]S_AXI_1_ARREGION;
  wire [2:0]S_AXI_1_ARSIZE;
  wire [31:0]S_AXI_1_ARUSER;
  wire S_AXI_1_ARVALID;
  wire [33:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [6:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [3:0]S_AXI_1_AWREGION;
  wire [2:0]S_AXI_1_AWSIZE;
  wire [31:0]S_AXI_1_AWUSER;
  wire S_AXI_1_AWVALID;
  wire [6:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [511:0]S_AXI_1_RDATA;
  wire [6:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [511:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [63:0]S_AXI_1_WSTRB;
  wire [63:0]S_AXI_1_WUSER;
  wire S_AXI_1_WVALID;
  wire [31:0]S_AXI_CTRL_1_ARADDR;
  wire [2:0]S_AXI_CTRL_1_ARPROT;
  wire S_AXI_CTRL_1_ARREADY;
  wire S_AXI_CTRL_1_ARVALID;
  wire [31:0]S_AXI_CTRL_1_AWADDR;
  wire [2:0]S_AXI_CTRL_1_AWPROT;
  wire S_AXI_CTRL_1_AWREADY;
  wire S_AXI_CTRL_1_AWVALID;
  wire S_AXI_CTRL_1_BREADY;
  wire [1:0]S_AXI_CTRL_1_BRESP;
  wire S_AXI_CTRL_1_BVALID;
  wire [31:0]S_AXI_CTRL_1_RDATA;
  wire S_AXI_CTRL_1_RREADY;
  wire [1:0]S_AXI_CTRL_1_RRESP;
  wire S_AXI_CTRL_1_RVALID;
  wire [31:0]S_AXI_CTRL_1_WDATA;
  wire S_AXI_CTRL_1_WREADY;
  wire [3:0]S_AXI_CTRL_1_WSTRB;
  wire S_AXI_CTRL_1_WVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARADDR;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARREADY;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWADDR;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWREADY;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWVALID;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_BREADY;
  wire [1:0]S_AXI_CTRL_regslice_slr_1_0_M_AXI_BRESP;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_BVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_0_M_AXI_RDATA;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_RREADY;
  wire [1:0]S_AXI_CTRL_regslice_slr_1_0_M_AXI_RRESP;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_RVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_0_M_AXI_WDATA;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_WREADY;
  wire S_AXI_CTRL_regslice_slr_1_0_M_AXI_WVALID;
  wire [33:0]S_AXI_regslice_slr_1_0_M_AXI_ARADDR;
  wire [1:0]S_AXI_regslice_slr_1_0_M_AXI_ARBURST;
  wire [3:0]S_AXI_regslice_slr_1_0_M_AXI_ARCACHE;
  wire [6:0]S_AXI_regslice_slr_1_0_M_AXI_ARID;
  wire [7:0]S_AXI_regslice_slr_1_0_M_AXI_ARLEN;
  wire [0:0]S_AXI_regslice_slr_1_0_M_AXI_ARLOCK;
  wire [2:0]S_AXI_regslice_slr_1_0_M_AXI_ARPROT;
  wire [3:0]S_AXI_regslice_slr_1_0_M_AXI_ARQOS;
  wire S_AXI_regslice_slr_1_0_M_AXI_ARREADY;
  wire [2:0]S_AXI_regslice_slr_1_0_M_AXI_ARSIZE;
  wire S_AXI_regslice_slr_1_0_M_AXI_ARVALID;
  wire [33:0]S_AXI_regslice_slr_1_0_M_AXI_AWADDR;
  wire [1:0]S_AXI_regslice_slr_1_0_M_AXI_AWBURST;
  wire [3:0]S_AXI_regslice_slr_1_0_M_AXI_AWCACHE;
  wire [6:0]S_AXI_regslice_slr_1_0_M_AXI_AWID;
  wire [7:0]S_AXI_regslice_slr_1_0_M_AXI_AWLEN;
  wire [0:0]S_AXI_regslice_slr_1_0_M_AXI_AWLOCK;
  wire [2:0]S_AXI_regslice_slr_1_0_M_AXI_AWPROT;
  wire [3:0]S_AXI_regslice_slr_1_0_M_AXI_AWQOS;
  wire S_AXI_regslice_slr_1_0_M_AXI_AWREADY;
  wire [2:0]S_AXI_regslice_slr_1_0_M_AXI_AWSIZE;
  wire S_AXI_regslice_slr_1_0_M_AXI_AWVALID;
  wire [6:0]S_AXI_regslice_slr_1_0_M_AXI_BID;
  wire S_AXI_regslice_slr_1_0_M_AXI_BREADY;
  wire [1:0]S_AXI_regslice_slr_1_0_M_AXI_BRESP;
  wire S_AXI_regslice_slr_1_0_M_AXI_BVALID;
  wire [511:0]S_AXI_regslice_slr_1_0_M_AXI_RDATA;
  wire [6:0]S_AXI_regslice_slr_1_0_M_AXI_RID;
  wire S_AXI_regslice_slr_1_0_M_AXI_RLAST;
  wire S_AXI_regslice_slr_1_0_M_AXI_RREADY;
  wire [1:0]S_AXI_regslice_slr_1_0_M_AXI_RRESP;
  wire S_AXI_regslice_slr_1_0_M_AXI_RVALID;
  wire [511:0]S_AXI_regslice_slr_1_0_M_AXI_WDATA;
  wire S_AXI_regslice_slr_1_0_M_AXI_WLAST;
  wire S_AXI_regslice_slr_1_0_M_AXI_WREADY;
  wire [63:0]S_AXI_regslice_slr_1_0_M_AXI_WSTRB;
  wire S_AXI_regslice_slr_1_0_M_AXI_WVALID;
  wire c0_ddr4_ui_clk_1;
  wire [0:0]proc_sys_reset_peripheral_aresetn_1;
  wire rst_1;
  wire sys_rst_1;

  assign C0_SYS_CLK_1_CLK_N = SYS_CLK_clk_n;
  assign C0_SYS_CLK_1_CLK_P = SYS_CLK_clk_p;
  assign SDRAM_act_n = C0_DDR4_1_ACT_N;
  assign SDRAM_adr[16:0] = C0_DDR4_1_ADR;
  assign SDRAM_ba[1:0] = C0_DDR4_1_BA;
  assign SDRAM_bg[1:0] = C0_DDR4_1_BG;
  assign SDRAM_ck_c = C0_DDR4_1_CK_C;
  assign SDRAM_ck_t = C0_DDR4_1_CK_T;
  assign SDRAM_cke = C0_DDR4_1_CKE;
  assign SDRAM_cs_n = C0_DDR4_1_CS_N;
  assign SDRAM_odt = C0_DDR4_1_ODT;
  assign SDRAM_par = C0_DDR4_1_PAR;
  assign SDRAM_reset_n = C0_DDR4_1_RESET_N;
  assign S_AXI_1_ARADDR = S_AXI_araddr[33:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[6:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARREGION = S_AXI_arregion[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARUSER = S_AXI_aruser[31:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[33:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[6:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWREGION = S_AXI_awregion[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWUSER = S_AXI_awuser[31:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[511:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[63:0];
  assign S_AXI_1_WUSER = S_AXI_wuser[63:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_CTRL_1_ARADDR = S_AXI_CTRL_araddr[31:0];
  assign S_AXI_CTRL_1_ARPROT = S_AXI_CTRL_arprot[2:0];
  assign S_AXI_CTRL_1_ARVALID = S_AXI_CTRL_arvalid;
  assign S_AXI_CTRL_1_AWADDR = S_AXI_CTRL_awaddr[31:0];
  assign S_AXI_CTRL_1_AWPROT = S_AXI_CTRL_awprot[2:0];
  assign S_AXI_CTRL_1_AWVALID = S_AXI_CTRL_awvalid;
  assign S_AXI_CTRL_1_BREADY = S_AXI_CTRL_bready;
  assign S_AXI_CTRL_1_RREADY = S_AXI_CTRL_rready;
  assign S_AXI_CTRL_1_WDATA = S_AXI_CTRL_wdata[31:0];
  assign S_AXI_CTRL_1_WSTRB = S_AXI_CTRL_wstrb[3:0];
  assign S_AXI_CTRL_1_WVALID = S_AXI_CTRL_wvalid;
  assign S_AXI_CTRL_arready = S_AXI_CTRL_1_ARREADY;
  assign S_AXI_CTRL_awready = S_AXI_CTRL_1_AWREADY;
  assign S_AXI_CTRL_bresp[1:0] = S_AXI_CTRL_1_BRESP;
  assign S_AXI_CTRL_bvalid = S_AXI_CTRL_1_BVALID;
  assign S_AXI_CTRL_rdata[31:0] = S_AXI_CTRL_1_RDATA;
  assign S_AXI_CTRL_rresp[1:0] = S_AXI_CTRL_1_RRESP;
  assign S_AXI_CTRL_rvalid = S_AXI_CTRL_1_RVALID;
  assign S_AXI_CTRL_wready = S_AXI_CTRL_1_WREADY;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[6:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[511:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[6:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign peripheral_aresetn[0] = proc_sys_reset_peripheral_aresetn_1;
  assign rst_1 = rst;
  assign sys_rst_1 = sys_rst;
  assign ui_clk = c0_ddr4_ui_clk_1;
  matmul_design_DDR_0 DDR
       (.c0_ddr4_act_n(C0_DDR4_1_ACT_N),
        .c0_ddr4_adr(C0_DDR4_1_ADR),
        .c0_ddr4_aresetn(proc_sys_reset_peripheral_aresetn_1),
        .c0_ddr4_ba(C0_DDR4_1_BA),
        .c0_ddr4_bg(C0_DDR4_1_BG),
        .c0_ddr4_ck_c(C0_DDR4_1_CK_C),
        .c0_ddr4_ck_t(C0_DDR4_1_CK_T),
        .c0_ddr4_cke(C0_DDR4_1_CKE),
        .c0_ddr4_cs_n(C0_DDR4_1_CS_N),
        .c0_ddr4_dq(SDRAM_dq[71:0]),
        .c0_ddr4_dqs_c(SDRAM_dqs_c[17:0]),
        .c0_ddr4_dqs_t(SDRAM_dqs_t[17:0]),
        .c0_ddr4_odt(C0_DDR4_1_ODT),
        .c0_ddr4_parity(C0_DDR4_1_PAR),
        .c0_ddr4_reset_n(C0_DDR4_1_RESET_N),
        .c0_ddr4_s_axi_araddr(S_AXI_regslice_slr_1_0_M_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(S_AXI_regslice_slr_1_0_M_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(S_AXI_regslice_slr_1_0_M_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(S_AXI_regslice_slr_1_0_M_AXI_ARID),
        .c0_ddr4_s_axi_arlen(S_AXI_regslice_slr_1_0_M_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(S_AXI_regslice_slr_1_0_M_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(S_AXI_regslice_slr_1_0_M_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(S_AXI_regslice_slr_1_0_M_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(S_AXI_regslice_slr_1_0_M_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(S_AXI_regslice_slr_1_0_M_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(S_AXI_regslice_slr_1_0_M_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(S_AXI_regslice_slr_1_0_M_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(S_AXI_regslice_slr_1_0_M_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(S_AXI_regslice_slr_1_0_M_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(S_AXI_regslice_slr_1_0_M_AXI_AWID),
        .c0_ddr4_s_axi_awlen(S_AXI_regslice_slr_1_0_M_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(S_AXI_regslice_slr_1_0_M_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(S_AXI_regslice_slr_1_0_M_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(S_AXI_regslice_slr_1_0_M_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(S_AXI_regslice_slr_1_0_M_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(S_AXI_regslice_slr_1_0_M_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(S_AXI_regslice_slr_1_0_M_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(S_AXI_regslice_slr_1_0_M_AXI_BID),
        .c0_ddr4_s_axi_bready(S_AXI_regslice_slr_1_0_M_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(S_AXI_regslice_slr_1_0_M_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(S_AXI_regslice_slr_1_0_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(S_AXI_CTRL_regslice_slr_1_0_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(S_AXI_CTRL_regslice_slr_1_0_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(S_AXI_regslice_slr_1_0_M_AXI_RDATA),
        .c0_ddr4_s_axi_rid(S_AXI_regslice_slr_1_0_M_AXI_RID),
        .c0_ddr4_s_axi_rlast(S_AXI_regslice_slr_1_0_M_AXI_RLAST),
        .c0_ddr4_s_axi_rready(S_AXI_regslice_slr_1_0_M_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(S_AXI_regslice_slr_1_0_M_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(S_AXI_regslice_slr_1_0_M_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(S_AXI_regslice_slr_1_0_M_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(S_AXI_regslice_slr_1_0_M_AXI_WLAST),
        .c0_ddr4_s_axi_wready(S_AXI_regslice_slr_1_0_M_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(S_AXI_regslice_slr_1_0_M_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(S_AXI_regslice_slr_1_0_M_AXI_WVALID),
        .c0_ddr4_ui_clk(c0_ddr4_ui_clk_1),
        .c0_sys_clk_n(C0_SYS_CLK_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_1_CLK_P),
        .sys_rst(sys_rst_1));
  matmul_design_S_AXI_CTRL_regslice_slr_1_0_0 S_AXI_CTRL_regslice_slr_1_0
       (.aclk(c0_ddr4_ui_clk_1),
        .aresetn(proc_sys_reset_peripheral_aresetn_1),
        .m_axi_araddr(S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARADDR),
        .m_axi_arready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARREADY),
        .m_axi_arvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_ARVALID),
        .m_axi_awaddr(S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWADDR),
        .m_axi_awready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWREADY),
        .m_axi_awvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_AWVALID),
        .m_axi_bready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_BREADY),
        .m_axi_bresp(S_AXI_CTRL_regslice_slr_1_0_M_AXI_BRESP),
        .m_axi_bvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_BVALID),
        .m_axi_rdata(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RDATA),
        .m_axi_rready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RREADY),
        .m_axi_rresp(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RRESP),
        .m_axi_rvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_RVALID),
        .m_axi_wdata(S_AXI_CTRL_regslice_slr_1_0_M_AXI_WDATA),
        .m_axi_wready(S_AXI_CTRL_regslice_slr_1_0_M_AXI_WREADY),
        .m_axi_wvalid(S_AXI_CTRL_regslice_slr_1_0_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_CTRL_1_ARADDR),
        .s_axi_arprot(S_AXI_CTRL_1_ARPROT),
        .s_axi_arready(S_AXI_CTRL_1_ARREADY),
        .s_axi_arvalid(S_AXI_CTRL_1_ARVALID),
        .s_axi_awaddr(S_AXI_CTRL_1_AWADDR),
        .s_axi_awprot(S_AXI_CTRL_1_AWPROT),
        .s_axi_awready(S_AXI_CTRL_1_AWREADY),
        .s_axi_awvalid(S_AXI_CTRL_1_AWVALID),
        .s_axi_bready(S_AXI_CTRL_1_BREADY),
        .s_axi_bresp(S_AXI_CTRL_1_BRESP),
        .s_axi_bvalid(S_AXI_CTRL_1_BVALID),
        .s_axi_rdata(S_AXI_CTRL_1_RDATA),
        .s_axi_rready(S_AXI_CTRL_1_RREADY),
        .s_axi_rresp(S_AXI_CTRL_1_RRESP),
        .s_axi_rvalid(S_AXI_CTRL_1_RVALID),
        .s_axi_wdata(S_AXI_CTRL_1_WDATA),
        .s_axi_wready(S_AXI_CTRL_1_WREADY),
        .s_axi_wstrb(S_AXI_CTRL_1_WSTRB),
        .s_axi_wvalid(S_AXI_CTRL_1_WVALID));
  matmul_design_S_AXI_regslice_slr_1_0_0 S_AXI_regslice_slr_1_0
       (.aclk(c0_ddr4_ui_clk_1),
        .aresetn(proc_sys_reset_peripheral_aresetn_1),
        .m_axi_araddr(S_AXI_regslice_slr_1_0_M_AXI_ARADDR),
        .m_axi_arburst(S_AXI_regslice_slr_1_0_M_AXI_ARBURST),
        .m_axi_arcache(S_AXI_regslice_slr_1_0_M_AXI_ARCACHE),
        .m_axi_arid(S_AXI_regslice_slr_1_0_M_AXI_ARID),
        .m_axi_arlen(S_AXI_regslice_slr_1_0_M_AXI_ARLEN),
        .m_axi_arlock(S_AXI_regslice_slr_1_0_M_AXI_ARLOCK),
        .m_axi_arprot(S_AXI_regslice_slr_1_0_M_AXI_ARPROT),
        .m_axi_arqos(S_AXI_regslice_slr_1_0_M_AXI_ARQOS),
        .m_axi_arready(S_AXI_regslice_slr_1_0_M_AXI_ARREADY),
        .m_axi_arsize(S_AXI_regslice_slr_1_0_M_AXI_ARSIZE),
        .m_axi_arvalid(S_AXI_regslice_slr_1_0_M_AXI_ARVALID),
        .m_axi_awaddr(S_AXI_regslice_slr_1_0_M_AXI_AWADDR),
        .m_axi_awburst(S_AXI_regslice_slr_1_0_M_AXI_AWBURST),
        .m_axi_awcache(S_AXI_regslice_slr_1_0_M_AXI_AWCACHE),
        .m_axi_awid(S_AXI_regslice_slr_1_0_M_AXI_AWID),
        .m_axi_awlen(S_AXI_regslice_slr_1_0_M_AXI_AWLEN),
        .m_axi_awlock(S_AXI_regslice_slr_1_0_M_AXI_AWLOCK),
        .m_axi_awprot(S_AXI_regslice_slr_1_0_M_AXI_AWPROT),
        .m_axi_awqos(S_AXI_regslice_slr_1_0_M_AXI_AWQOS),
        .m_axi_awready(S_AXI_regslice_slr_1_0_M_AXI_AWREADY),
        .m_axi_awsize(S_AXI_regslice_slr_1_0_M_AXI_AWSIZE),
        .m_axi_awvalid(S_AXI_regslice_slr_1_0_M_AXI_AWVALID),
        .m_axi_bid(S_AXI_regslice_slr_1_0_M_AXI_BID),
        .m_axi_bready(S_AXI_regslice_slr_1_0_M_AXI_BREADY),
        .m_axi_bresp(S_AXI_regslice_slr_1_0_M_AXI_BRESP),
        .m_axi_bvalid(S_AXI_regslice_slr_1_0_M_AXI_BVALID),
        .m_axi_rdata(S_AXI_regslice_slr_1_0_M_AXI_RDATA),
        .m_axi_rid(S_AXI_regslice_slr_1_0_M_AXI_RID),
        .m_axi_rlast(S_AXI_regslice_slr_1_0_M_AXI_RLAST),
        .m_axi_rready(S_AXI_regslice_slr_1_0_M_AXI_RREADY),
        .m_axi_rresp(S_AXI_regslice_slr_1_0_M_AXI_RRESP),
        .m_axi_rvalid(S_AXI_regslice_slr_1_0_M_AXI_RVALID),
        .m_axi_wdata(S_AXI_regslice_slr_1_0_M_AXI_WDATA),
        .m_axi_wlast(S_AXI_regslice_slr_1_0_M_AXI_WLAST),
        .m_axi_wready(S_AXI_regslice_slr_1_0_M_AXI_WREADY),
        .m_axi_wstrb(S_AXI_regslice_slr_1_0_M_AXI_WSTRB),
        .m_axi_wvalid(S_AXI_regslice_slr_1_0_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arburst(S_AXI_1_ARBURST),
        .s_axi_arcache(S_AXI_1_ARCACHE),
        .s_axi_arid(S_AXI_1_ARID),
        .s_axi_arlen(S_AXI_1_ARLEN),
        .s_axi_arlock(S_AXI_1_ARLOCK),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arqos(S_AXI_1_ARQOS),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arregion(S_AXI_1_ARREGION),
        .s_axi_arsize(S_AXI_1_ARSIZE),
        .s_axi_aruser(S_AXI_1_ARUSER),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awburst(S_AXI_1_AWBURST),
        .s_axi_awcache(S_AXI_1_AWCACHE),
        .s_axi_awid(S_AXI_1_AWID),
        .s_axi_awlen(S_AXI_1_AWLEN),
        .s_axi_awlock(S_AXI_1_AWLOCK),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awqos(S_AXI_1_AWQOS),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awregion(S_AXI_1_AWREGION),
        .s_axi_awsize(S_AXI_1_AWSIZE),
        .s_axi_awuser(S_AXI_1_AWUSER),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bid(S_AXI_1_BID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rid(S_AXI_1_RID),
        .s_axi_rlast(S_AXI_1_RLAST),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wlast(S_AXI_1_WLAST),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wuser(S_AXI_1_WUSER),
        .s_axi_wvalid(S_AXI_1_WVALID));
  matmul_design_proc_sys_reset_0 proc_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(rst_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_peripheral_aresetn_1),
        .slowest_sync_clk(c0_ddr4_ui_clk_1));
endmodule

module DDR_1_imp_JY3T57
   (SDRAM_act_n,
    SDRAM_adr,
    SDRAM_ba,
    SDRAM_bg,
    SDRAM_ck_c,
    SDRAM_ck_t,
    SDRAM_cke,
    SDRAM_cs_n,
    SDRAM_dq,
    SDRAM_dqs_c,
    SDRAM_dqs_t,
    SDRAM_odt,
    SDRAM_par,
    SDRAM_reset_n,
    SYS_CLK_clk_n,
    SYS_CLK_clk_p,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arprot,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awprot,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wstrb,
    S_AXI_CTRL_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid,
    peripheral_aresetn,
    rst,
    sys_rst,
    ui_clk);
  output SDRAM_act_n;
  output [16:0]SDRAM_adr;
  output [1:0]SDRAM_ba;
  output [1:0]SDRAM_bg;
  output SDRAM_ck_c;
  output SDRAM_ck_t;
  output SDRAM_cke;
  output SDRAM_cs_n;
  inout [71:0]SDRAM_dq;
  inout [17:0]SDRAM_dqs_c;
  inout [17:0]SDRAM_dqs_t;
  output SDRAM_odt;
  output SDRAM_par;
  output SDRAM_reset_n;
  input SYS_CLK_clk_n;
  input SYS_CLK_clk_p;
  input [31:0]S_AXI_CTRL_araddr;
  input [2:0]S_AXI_CTRL_arprot;
  output S_AXI_CTRL_arready;
  input S_AXI_CTRL_arvalid;
  input [31:0]S_AXI_CTRL_awaddr;
  input [2:0]S_AXI_CTRL_awprot;
  output S_AXI_CTRL_awready;
  input S_AXI_CTRL_awvalid;
  input S_AXI_CTRL_bready;
  output [1:0]S_AXI_CTRL_bresp;
  output S_AXI_CTRL_bvalid;
  output [31:0]S_AXI_CTRL_rdata;
  input S_AXI_CTRL_rready;
  output [1:0]S_AXI_CTRL_rresp;
  output S_AXI_CTRL_rvalid;
  input [31:0]S_AXI_CTRL_wdata;
  output S_AXI_CTRL_wready;
  input [3:0]S_AXI_CTRL_wstrb;
  input S_AXI_CTRL_wvalid;
  input [33:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [6:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [31:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [33:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [6:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [31:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [6:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [6:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input [63:0]S_AXI_wuser;
  input S_AXI_wvalid;
  output [0:0]peripheral_aresetn;
  input rst;
  input sys_rst;
  output ui_clk;

  wire C0_DDR4_1_ACT_N;
  wire [16:0]C0_DDR4_1_ADR;
  wire [1:0]C0_DDR4_1_BA;
  wire [1:0]C0_DDR4_1_BG;
  wire [0:0]C0_DDR4_1_CKE;
  wire [0:0]C0_DDR4_1_CK_C;
  wire [0:0]C0_DDR4_1_CK_T;
  wire [0:0]C0_DDR4_1_CS_N;
  wire [71:0]C0_DDR4_1_DQ;
  wire [17:0]C0_DDR4_1_DQS_C;
  wire [17:0]C0_DDR4_1_DQS_T;
  wire [0:0]C0_DDR4_1_ODT;
  wire C0_DDR4_1_PAR;
  wire C0_DDR4_1_RESET_N;
  wire C0_SYS_CLK_1_CLK_N;
  wire C0_SYS_CLK_1_CLK_P;
  wire [33:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [6:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [3:0]S_AXI_1_ARREGION;
  wire [2:0]S_AXI_1_ARSIZE;
  wire [31:0]S_AXI_1_ARUSER;
  wire S_AXI_1_ARVALID;
  wire [33:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [6:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [3:0]S_AXI_1_AWREGION;
  wire [2:0]S_AXI_1_AWSIZE;
  wire [31:0]S_AXI_1_AWUSER;
  wire S_AXI_1_AWVALID;
  wire [6:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [511:0]S_AXI_1_RDATA;
  wire [6:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [511:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [63:0]S_AXI_1_WSTRB;
  wire [63:0]S_AXI_1_WUSER;
  wire S_AXI_1_WVALID;
  wire [31:0]S_AXI_CTRL_1_ARADDR;
  wire [2:0]S_AXI_CTRL_1_ARPROT;
  wire S_AXI_CTRL_1_ARREADY;
  wire S_AXI_CTRL_1_ARVALID;
  wire [31:0]S_AXI_CTRL_1_AWADDR;
  wire [2:0]S_AXI_CTRL_1_AWPROT;
  wire S_AXI_CTRL_1_AWREADY;
  wire S_AXI_CTRL_1_AWVALID;
  wire S_AXI_CTRL_1_BREADY;
  wire [1:0]S_AXI_CTRL_1_BRESP;
  wire S_AXI_CTRL_1_BVALID;
  wire [31:0]S_AXI_CTRL_1_RDATA;
  wire S_AXI_CTRL_1_RREADY;
  wire [1:0]S_AXI_CTRL_1_RRESP;
  wire S_AXI_CTRL_1_RVALID;
  wire [31:0]S_AXI_CTRL_1_WDATA;
  wire S_AXI_CTRL_1_WREADY;
  wire [3:0]S_AXI_CTRL_1_WSTRB;
  wire S_AXI_CTRL_1_WVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARADDR;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARREADY;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWADDR;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWREADY;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWVALID;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_BREADY;
  wire [1:0]S_AXI_CTRL_regslice_slr_1_1_M_AXI_BRESP;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_BVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_1_M_AXI_RDATA;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_RREADY;
  wire [1:0]S_AXI_CTRL_regslice_slr_1_1_M_AXI_RRESP;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_RVALID;
  wire [31:0]S_AXI_CTRL_regslice_slr_1_1_M_AXI_WDATA;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_WREADY;
  wire S_AXI_CTRL_regslice_slr_1_1_M_AXI_WVALID;
  wire [33:0]S_AXI_regslice_slr_1_1_M_AXI_ARADDR;
  wire [1:0]S_AXI_regslice_slr_1_1_M_AXI_ARBURST;
  wire [3:0]S_AXI_regslice_slr_1_1_M_AXI_ARCACHE;
  wire [6:0]S_AXI_regslice_slr_1_1_M_AXI_ARID;
  wire [7:0]S_AXI_regslice_slr_1_1_M_AXI_ARLEN;
  wire [0:0]S_AXI_regslice_slr_1_1_M_AXI_ARLOCK;
  wire [2:0]S_AXI_regslice_slr_1_1_M_AXI_ARPROT;
  wire [3:0]S_AXI_regslice_slr_1_1_M_AXI_ARQOS;
  wire S_AXI_regslice_slr_1_1_M_AXI_ARREADY;
  wire [2:0]S_AXI_regslice_slr_1_1_M_AXI_ARSIZE;
  wire S_AXI_regslice_slr_1_1_M_AXI_ARVALID;
  wire [33:0]S_AXI_regslice_slr_1_1_M_AXI_AWADDR;
  wire [1:0]S_AXI_regslice_slr_1_1_M_AXI_AWBURST;
  wire [3:0]S_AXI_regslice_slr_1_1_M_AXI_AWCACHE;
  wire [6:0]S_AXI_regslice_slr_1_1_M_AXI_AWID;
  wire [7:0]S_AXI_regslice_slr_1_1_M_AXI_AWLEN;
  wire [0:0]S_AXI_regslice_slr_1_1_M_AXI_AWLOCK;
  wire [2:0]S_AXI_regslice_slr_1_1_M_AXI_AWPROT;
  wire [3:0]S_AXI_regslice_slr_1_1_M_AXI_AWQOS;
  wire S_AXI_regslice_slr_1_1_M_AXI_AWREADY;
  wire [2:0]S_AXI_regslice_slr_1_1_M_AXI_AWSIZE;
  wire S_AXI_regslice_slr_1_1_M_AXI_AWVALID;
  wire [6:0]S_AXI_regslice_slr_1_1_M_AXI_BID;
  wire S_AXI_regslice_slr_1_1_M_AXI_BREADY;
  wire [1:0]S_AXI_regslice_slr_1_1_M_AXI_BRESP;
  wire S_AXI_regslice_slr_1_1_M_AXI_BVALID;
  wire [511:0]S_AXI_regslice_slr_1_1_M_AXI_RDATA;
  wire [6:0]S_AXI_regslice_slr_1_1_M_AXI_RID;
  wire S_AXI_regslice_slr_1_1_M_AXI_RLAST;
  wire S_AXI_regslice_slr_1_1_M_AXI_RREADY;
  wire [1:0]S_AXI_regslice_slr_1_1_M_AXI_RRESP;
  wire S_AXI_regslice_slr_1_1_M_AXI_RVALID;
  wire [511:0]S_AXI_regslice_slr_1_1_M_AXI_WDATA;
  wire S_AXI_regslice_slr_1_1_M_AXI_WLAST;
  wire S_AXI_regslice_slr_1_1_M_AXI_WREADY;
  wire [63:0]S_AXI_regslice_slr_1_1_M_AXI_WSTRB;
  wire S_AXI_regslice_slr_1_1_M_AXI_WVALID;
  wire c0_ddr4_ui_clk_1;
  wire [0:0]proc_sys_reset_peripheral_aresetn_1;
  wire rst_1;
  wire sys_rst_1;

  assign C0_SYS_CLK_1_CLK_N = SYS_CLK_clk_n;
  assign C0_SYS_CLK_1_CLK_P = SYS_CLK_clk_p;
  assign SDRAM_act_n = C0_DDR4_1_ACT_N;
  assign SDRAM_adr[16:0] = C0_DDR4_1_ADR;
  assign SDRAM_ba[1:0] = C0_DDR4_1_BA;
  assign SDRAM_bg[1:0] = C0_DDR4_1_BG;
  assign SDRAM_ck_c = C0_DDR4_1_CK_C;
  assign SDRAM_ck_t = C0_DDR4_1_CK_T;
  assign SDRAM_cke = C0_DDR4_1_CKE;
  assign SDRAM_cs_n = C0_DDR4_1_CS_N;
  assign SDRAM_odt = C0_DDR4_1_ODT;
  assign SDRAM_par = C0_DDR4_1_PAR;
  assign SDRAM_reset_n = C0_DDR4_1_RESET_N;
  assign S_AXI_1_ARADDR = S_AXI_araddr[33:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[6:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARREGION = S_AXI_arregion[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARUSER = S_AXI_aruser[31:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[33:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[6:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWREGION = S_AXI_awregion[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWUSER = S_AXI_awuser[31:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[511:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[63:0];
  assign S_AXI_1_WUSER = S_AXI_wuser[63:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_CTRL_1_ARADDR = S_AXI_CTRL_araddr[31:0];
  assign S_AXI_CTRL_1_ARPROT = S_AXI_CTRL_arprot[2:0];
  assign S_AXI_CTRL_1_ARVALID = S_AXI_CTRL_arvalid;
  assign S_AXI_CTRL_1_AWADDR = S_AXI_CTRL_awaddr[31:0];
  assign S_AXI_CTRL_1_AWPROT = S_AXI_CTRL_awprot[2:0];
  assign S_AXI_CTRL_1_AWVALID = S_AXI_CTRL_awvalid;
  assign S_AXI_CTRL_1_BREADY = S_AXI_CTRL_bready;
  assign S_AXI_CTRL_1_RREADY = S_AXI_CTRL_rready;
  assign S_AXI_CTRL_1_WDATA = S_AXI_CTRL_wdata[31:0];
  assign S_AXI_CTRL_1_WSTRB = S_AXI_CTRL_wstrb[3:0];
  assign S_AXI_CTRL_1_WVALID = S_AXI_CTRL_wvalid;
  assign S_AXI_CTRL_arready = S_AXI_CTRL_1_ARREADY;
  assign S_AXI_CTRL_awready = S_AXI_CTRL_1_AWREADY;
  assign S_AXI_CTRL_bresp[1:0] = S_AXI_CTRL_1_BRESP;
  assign S_AXI_CTRL_bvalid = S_AXI_CTRL_1_BVALID;
  assign S_AXI_CTRL_rdata[31:0] = S_AXI_CTRL_1_RDATA;
  assign S_AXI_CTRL_rresp[1:0] = S_AXI_CTRL_1_RRESP;
  assign S_AXI_CTRL_rvalid = S_AXI_CTRL_1_RVALID;
  assign S_AXI_CTRL_wready = S_AXI_CTRL_1_WREADY;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[6:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[511:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[6:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign peripheral_aresetn[0] = proc_sys_reset_peripheral_aresetn_1;
  assign rst_1 = rst;
  assign sys_rst_1 = sys_rst;
  assign ui_clk = c0_ddr4_ui_clk_1;
  matmul_design_DDR_1 DDR
       (.c0_ddr4_act_n(C0_DDR4_1_ACT_N),
        .c0_ddr4_adr(C0_DDR4_1_ADR),
        .c0_ddr4_aresetn(proc_sys_reset_peripheral_aresetn_1),
        .c0_ddr4_ba(C0_DDR4_1_BA),
        .c0_ddr4_bg(C0_DDR4_1_BG),
        .c0_ddr4_ck_c(C0_DDR4_1_CK_C),
        .c0_ddr4_ck_t(C0_DDR4_1_CK_T),
        .c0_ddr4_cke(C0_DDR4_1_CKE),
        .c0_ddr4_cs_n(C0_DDR4_1_CS_N),
        .c0_ddr4_dq(SDRAM_dq[71:0]),
        .c0_ddr4_dqs_c(SDRAM_dqs_c[17:0]),
        .c0_ddr4_dqs_t(SDRAM_dqs_t[17:0]),
        .c0_ddr4_odt(C0_DDR4_1_ODT),
        .c0_ddr4_parity(C0_DDR4_1_PAR),
        .c0_ddr4_reset_n(C0_DDR4_1_RESET_N),
        .c0_ddr4_s_axi_araddr(S_AXI_regslice_slr_1_1_M_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(S_AXI_regslice_slr_1_1_M_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(S_AXI_regslice_slr_1_1_M_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(S_AXI_regslice_slr_1_1_M_AXI_ARID),
        .c0_ddr4_s_axi_arlen(S_AXI_regslice_slr_1_1_M_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(S_AXI_regslice_slr_1_1_M_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(S_AXI_regslice_slr_1_1_M_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(S_AXI_regslice_slr_1_1_M_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(S_AXI_regslice_slr_1_1_M_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(S_AXI_regslice_slr_1_1_M_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(S_AXI_regslice_slr_1_1_M_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(S_AXI_regslice_slr_1_1_M_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(S_AXI_regslice_slr_1_1_M_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(S_AXI_regslice_slr_1_1_M_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(S_AXI_regslice_slr_1_1_M_AXI_AWID),
        .c0_ddr4_s_axi_awlen(S_AXI_regslice_slr_1_1_M_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(S_AXI_regslice_slr_1_1_M_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(S_AXI_regslice_slr_1_1_M_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(S_AXI_regslice_slr_1_1_M_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(S_AXI_regslice_slr_1_1_M_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(S_AXI_regslice_slr_1_1_M_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(S_AXI_regslice_slr_1_1_M_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(S_AXI_regslice_slr_1_1_M_AXI_BID),
        .c0_ddr4_s_axi_bready(S_AXI_regslice_slr_1_1_M_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(S_AXI_regslice_slr_1_1_M_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(S_AXI_regslice_slr_1_1_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(S_AXI_CTRL_regslice_slr_1_1_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(S_AXI_CTRL_regslice_slr_1_1_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(S_AXI_regslice_slr_1_1_M_AXI_RDATA),
        .c0_ddr4_s_axi_rid(S_AXI_regslice_slr_1_1_M_AXI_RID),
        .c0_ddr4_s_axi_rlast(S_AXI_regslice_slr_1_1_M_AXI_RLAST),
        .c0_ddr4_s_axi_rready(S_AXI_regslice_slr_1_1_M_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(S_AXI_regslice_slr_1_1_M_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(S_AXI_regslice_slr_1_1_M_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(S_AXI_regslice_slr_1_1_M_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(S_AXI_regslice_slr_1_1_M_AXI_WLAST),
        .c0_ddr4_s_axi_wready(S_AXI_regslice_slr_1_1_M_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(S_AXI_regslice_slr_1_1_M_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(S_AXI_regslice_slr_1_1_M_AXI_WVALID),
        .c0_ddr4_ui_clk(c0_ddr4_ui_clk_1),
        .c0_sys_clk_n(C0_SYS_CLK_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_1_CLK_P),
        .sys_rst(sys_rst_1));
  matmul_design_S_AXI_CTRL_regslice_slr_1_1_0 S_AXI_CTRL_regslice_slr_1_1
       (.aclk(c0_ddr4_ui_clk_1),
        .aresetn(proc_sys_reset_peripheral_aresetn_1),
        .m_axi_araddr(S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARADDR),
        .m_axi_arready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARREADY),
        .m_axi_arvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_ARVALID),
        .m_axi_awaddr(S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWADDR),
        .m_axi_awready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWREADY),
        .m_axi_awvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_AWVALID),
        .m_axi_bready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_BREADY),
        .m_axi_bresp(S_AXI_CTRL_regslice_slr_1_1_M_AXI_BRESP),
        .m_axi_bvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_BVALID),
        .m_axi_rdata(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RDATA),
        .m_axi_rready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RREADY),
        .m_axi_rresp(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RRESP),
        .m_axi_rvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_RVALID),
        .m_axi_wdata(S_AXI_CTRL_regslice_slr_1_1_M_AXI_WDATA),
        .m_axi_wready(S_AXI_CTRL_regslice_slr_1_1_M_AXI_WREADY),
        .m_axi_wvalid(S_AXI_CTRL_regslice_slr_1_1_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_CTRL_1_ARADDR),
        .s_axi_arprot(S_AXI_CTRL_1_ARPROT),
        .s_axi_arready(S_AXI_CTRL_1_ARREADY),
        .s_axi_arvalid(S_AXI_CTRL_1_ARVALID),
        .s_axi_awaddr(S_AXI_CTRL_1_AWADDR),
        .s_axi_awprot(S_AXI_CTRL_1_AWPROT),
        .s_axi_awready(S_AXI_CTRL_1_AWREADY),
        .s_axi_awvalid(S_AXI_CTRL_1_AWVALID),
        .s_axi_bready(S_AXI_CTRL_1_BREADY),
        .s_axi_bresp(S_AXI_CTRL_1_BRESP),
        .s_axi_bvalid(S_AXI_CTRL_1_BVALID),
        .s_axi_rdata(S_AXI_CTRL_1_RDATA),
        .s_axi_rready(S_AXI_CTRL_1_RREADY),
        .s_axi_rresp(S_AXI_CTRL_1_RRESP),
        .s_axi_rvalid(S_AXI_CTRL_1_RVALID),
        .s_axi_wdata(S_AXI_CTRL_1_WDATA),
        .s_axi_wready(S_AXI_CTRL_1_WREADY),
        .s_axi_wstrb(S_AXI_CTRL_1_WSTRB),
        .s_axi_wvalid(S_AXI_CTRL_1_WVALID));
  matmul_design_S_AXI_regslice_slr_1_1_0 S_AXI_regslice_slr_1_1
       (.aclk(c0_ddr4_ui_clk_1),
        .aresetn(proc_sys_reset_peripheral_aresetn_1),
        .m_axi_araddr(S_AXI_regslice_slr_1_1_M_AXI_ARADDR),
        .m_axi_arburst(S_AXI_regslice_slr_1_1_M_AXI_ARBURST),
        .m_axi_arcache(S_AXI_regslice_slr_1_1_M_AXI_ARCACHE),
        .m_axi_arid(S_AXI_regslice_slr_1_1_M_AXI_ARID),
        .m_axi_arlen(S_AXI_regslice_slr_1_1_M_AXI_ARLEN),
        .m_axi_arlock(S_AXI_regslice_slr_1_1_M_AXI_ARLOCK),
        .m_axi_arprot(S_AXI_regslice_slr_1_1_M_AXI_ARPROT),
        .m_axi_arqos(S_AXI_regslice_slr_1_1_M_AXI_ARQOS),
        .m_axi_arready(S_AXI_regslice_slr_1_1_M_AXI_ARREADY),
        .m_axi_arsize(S_AXI_regslice_slr_1_1_M_AXI_ARSIZE),
        .m_axi_arvalid(S_AXI_regslice_slr_1_1_M_AXI_ARVALID),
        .m_axi_awaddr(S_AXI_regslice_slr_1_1_M_AXI_AWADDR),
        .m_axi_awburst(S_AXI_regslice_slr_1_1_M_AXI_AWBURST),
        .m_axi_awcache(S_AXI_regslice_slr_1_1_M_AXI_AWCACHE),
        .m_axi_awid(S_AXI_regslice_slr_1_1_M_AXI_AWID),
        .m_axi_awlen(S_AXI_regslice_slr_1_1_M_AXI_AWLEN),
        .m_axi_awlock(S_AXI_regslice_slr_1_1_M_AXI_AWLOCK),
        .m_axi_awprot(S_AXI_regslice_slr_1_1_M_AXI_AWPROT),
        .m_axi_awqos(S_AXI_regslice_slr_1_1_M_AXI_AWQOS),
        .m_axi_awready(S_AXI_regslice_slr_1_1_M_AXI_AWREADY),
        .m_axi_awsize(S_AXI_regslice_slr_1_1_M_AXI_AWSIZE),
        .m_axi_awvalid(S_AXI_regslice_slr_1_1_M_AXI_AWVALID),
        .m_axi_bid(S_AXI_regslice_slr_1_1_M_AXI_BID),
        .m_axi_bready(S_AXI_regslice_slr_1_1_M_AXI_BREADY),
        .m_axi_bresp(S_AXI_regslice_slr_1_1_M_AXI_BRESP),
        .m_axi_bvalid(S_AXI_regslice_slr_1_1_M_AXI_BVALID),
        .m_axi_rdata(S_AXI_regslice_slr_1_1_M_AXI_RDATA),
        .m_axi_rid(S_AXI_regslice_slr_1_1_M_AXI_RID),
        .m_axi_rlast(S_AXI_regslice_slr_1_1_M_AXI_RLAST),
        .m_axi_rready(S_AXI_regslice_slr_1_1_M_AXI_RREADY),
        .m_axi_rresp(S_AXI_regslice_slr_1_1_M_AXI_RRESP),
        .m_axi_rvalid(S_AXI_regslice_slr_1_1_M_AXI_RVALID),
        .m_axi_wdata(S_AXI_regslice_slr_1_1_M_AXI_WDATA),
        .m_axi_wlast(S_AXI_regslice_slr_1_1_M_AXI_WLAST),
        .m_axi_wready(S_AXI_regslice_slr_1_1_M_AXI_WREADY),
        .m_axi_wstrb(S_AXI_regslice_slr_1_1_M_AXI_WSTRB),
        .m_axi_wvalid(S_AXI_regslice_slr_1_1_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arburst(S_AXI_1_ARBURST),
        .s_axi_arcache(S_AXI_1_ARCACHE),
        .s_axi_arid(S_AXI_1_ARID),
        .s_axi_arlen(S_AXI_1_ARLEN),
        .s_axi_arlock(S_AXI_1_ARLOCK),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arqos(S_AXI_1_ARQOS),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arregion(S_AXI_1_ARREGION),
        .s_axi_arsize(S_AXI_1_ARSIZE),
        .s_axi_aruser(S_AXI_1_ARUSER),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awburst(S_AXI_1_AWBURST),
        .s_axi_awcache(S_AXI_1_AWCACHE),
        .s_axi_awid(S_AXI_1_AWID),
        .s_axi_awlen(S_AXI_1_AWLEN),
        .s_axi_awlock(S_AXI_1_AWLOCK),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awqos(S_AXI_1_AWQOS),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awregion(S_AXI_1_AWREGION),
        .s_axi_awsize(S_AXI_1_AWSIZE),
        .s_axi_awuser(S_AXI_1_AWUSER),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bid(S_AXI_1_BID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rid(S_AXI_1_RID),
        .s_axi_rlast(S_AXI_1_RLAST),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wlast(S_AXI_1_WLAST),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wuser(S_AXI_1_WUSER),
        .s_axi_wvalid(S_AXI_1_WVALID));
  matmul_design_proc_sys_reset_1 proc_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(rst_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_peripheral_aresetn_1),
        .slowest_sync_clk(c0_ddr4_ui_clk_1));
endmodule

module Hardware_Runtime_imp_9F7XNO
   (M0_AXIS_tdata,
    M0_AXIS_tid,
    M0_AXIS_tready,
    M0_AXIS_tvalid,
    M1_AXIS_tdata,
    M1_AXIS_tready,
    M1_AXIS_tvalid,
    S0_AXIS_tdata,
    S0_AXIS_tdest,
    S0_AXIS_tid,
    S0_AXIS_tlast,
    S0_AXIS_tready,
    S0_AXIS_tvalid,
    S1_AXIS_tdata,
    S1_AXIS_tdest,
    S1_AXIS_tid,
    S1_AXIS_tlast,
    S1_AXIS_tready,
    S1_AXIS_tvalid,
    S_AXI_GP_araddr,
    S_AXI_GP_arprot,
    S_AXI_GP_arready,
    S_AXI_GP_arvalid,
    S_AXI_GP_awaddr,
    S_AXI_GP_awprot,
    S_AXI_GP_awready,
    S_AXI_GP_awvalid,
    S_AXI_GP_bready,
    S_AXI_GP_bresp,
    S_AXI_GP_bvalid,
    S_AXI_GP_rdata,
    S_AXI_GP_rready,
    S_AXI_GP_rresp,
    S_AXI_GP_rvalid,
    S_AXI_GP_wdata,
    S_AXI_GP_wready,
    S_AXI_GP_wstrb,
    S_AXI_GP_wvalid,
    clk,
    managed_rstn,
    rstn);
  output [63:0]M0_AXIS_tdata;
  output [0:0]M0_AXIS_tid;
  input M0_AXIS_tready;
  output M0_AXIS_tvalid;
  output [63:0]M1_AXIS_tdata;
  input M1_AXIS_tready;
  output M1_AXIS_tvalid;
  input [63:0]S0_AXIS_tdata;
  input [1:0]S0_AXIS_tdest;
  input [0:0]S0_AXIS_tid;
  input S0_AXIS_tlast;
  output S0_AXIS_tready;
  input S0_AXIS_tvalid;
  input [63:0]S1_AXIS_tdata;
  input [1:0]S1_AXIS_tdest;
  input [0:0]S1_AXIS_tid;
  input S1_AXIS_tlast;
  output S1_AXIS_tready;
  input S1_AXIS_tvalid;
  input [31:0]S_AXI_GP_araddr;
  input [2:0]S_AXI_GP_arprot;
  output S_AXI_GP_arready;
  input S_AXI_GP_arvalid;
  input [31:0]S_AXI_GP_awaddr;
  input [2:0]S_AXI_GP_awprot;
  output S_AXI_GP_awready;
  input S_AXI_GP_awvalid;
  input S_AXI_GP_bready;
  output [1:0]S_AXI_GP_bresp;
  output S_AXI_GP_bvalid;
  output [31:0]S_AXI_GP_rdata;
  input S_AXI_GP_rready;
  output [1:0]S_AXI_GP_rresp;
  output S_AXI_GP_rvalid;
  input [31:0]S_AXI_GP_wdata;
  output S_AXI_GP_wready;
  input [3:0]S_AXI_GP_wstrb;
  input S_AXI_GP_wvalid;
  input clk;
  input managed_rstn;
  input rstn;

  wire [63:0]Conn1_TDATA;
  wire [1:0]Conn1_TDEST;
  wire [0:0]Conn1_TID;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [63:0]Conn2_TDATA;
  wire [0:0]Conn2_TID;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire [63:0]Conn3_TDATA;
  wire [1:0]Conn3_TDEST;
  wire [0:0]Conn3_TID;
  wire Conn3_TLAST;
  wire Conn3_TREADY;
  wire Conn3_TVALID;
  wire [63:0]Conn4_TDATA;
  wire Conn4_TREADY;
  wire Conn4_TVALID;
  wire [31:0]GP_Inter_M00_AXI_ARADDR;
  wire [2:0]GP_Inter_M00_AXI_ARPROT;
  wire GP_Inter_M00_AXI_ARREADY;
  wire GP_Inter_M00_AXI_ARVALID;
  wire [31:0]GP_Inter_M00_AXI_AWADDR;
  wire [2:0]GP_Inter_M00_AXI_AWPROT;
  wire GP_Inter_M00_AXI_AWREADY;
  wire GP_Inter_M00_AXI_AWVALID;
  wire GP_Inter_M00_AXI_BREADY;
  wire [1:0]GP_Inter_M00_AXI_BRESP;
  wire GP_Inter_M00_AXI_BVALID;
  wire [31:0]GP_Inter_M00_AXI_RDATA;
  wire GP_Inter_M00_AXI_RREADY;
  wire [1:0]GP_Inter_M00_AXI_RRESP;
  wire GP_Inter_M00_AXI_RVALID;
  wire [31:0]GP_Inter_M00_AXI_WDATA;
  wire GP_Inter_M00_AXI_WREADY;
  wire [3:0]GP_Inter_M00_AXI_WSTRB;
  wire GP_Inter_M00_AXI_WVALID;
  wire [31:0]GP_Inter_M01_AXI_ARADDR;
  wire [2:0]GP_Inter_M01_AXI_ARPROT;
  wire GP_Inter_M01_AXI_ARREADY;
  wire GP_Inter_M01_AXI_ARVALID;
  wire [31:0]GP_Inter_M01_AXI_AWADDR;
  wire [2:0]GP_Inter_M01_AXI_AWPROT;
  wire GP_Inter_M01_AXI_AWREADY;
  wire GP_Inter_M01_AXI_AWVALID;
  wire GP_Inter_M01_AXI_BREADY;
  wire [1:0]GP_Inter_M01_AXI_BRESP;
  wire GP_Inter_M01_AXI_BVALID;
  wire [31:0]GP_Inter_M01_AXI_RDATA;
  wire GP_Inter_M01_AXI_RREADY;
  wire [1:0]GP_Inter_M01_AXI_RRESP;
  wire GP_Inter_M01_AXI_RVALID;
  wire [31:0]GP_Inter_M01_AXI_WDATA;
  wire GP_Inter_M01_AXI_WREADY;
  wire [3:0]GP_Inter_M01_AXI_WSTRB;
  wire GP_Inter_M01_AXI_WVALID;
  wire [31:0]GP_Inter_spawn_in_ARADDR;
  wire [2:0]GP_Inter_spawn_in_ARPROT;
  wire GP_Inter_spawn_in_ARREADY;
  wire GP_Inter_spawn_in_ARVALID;
  wire [31:0]GP_Inter_spawn_in_AWADDR;
  wire [2:0]GP_Inter_spawn_in_AWPROT;
  wire GP_Inter_spawn_in_AWREADY;
  wire GP_Inter_spawn_in_AWVALID;
  wire GP_Inter_spawn_in_BREADY;
  wire [1:0]GP_Inter_spawn_in_BRESP;
  wire GP_Inter_spawn_in_BVALID;
  wire [31:0]GP_Inter_spawn_in_RDATA;
  wire GP_Inter_spawn_in_RREADY;
  wire [1:0]GP_Inter_spawn_in_RRESP;
  wire GP_Inter_spawn_in_RVALID;
  wire [31:0]GP_Inter_spawn_in_WDATA;
  wire GP_Inter_spawn_in_WREADY;
  wire [3:0]GP_Inter_spawn_in_WSTRB;
  wire GP_Inter_spawn_in_WVALID;
  wire [31:0]GP_Inter_spawn_out_ARADDR;
  wire [2:0]GP_Inter_spawn_out_ARPROT;
  wire GP_Inter_spawn_out_ARREADY;
  wire GP_Inter_spawn_out_ARVALID;
  wire [31:0]GP_Inter_spawn_out_AWADDR;
  wire [2:0]GP_Inter_spawn_out_AWPROT;
  wire GP_Inter_spawn_out_AWREADY;
  wire GP_Inter_spawn_out_AWVALID;
  wire GP_Inter_spawn_out_BREADY;
  wire [1:0]GP_Inter_spawn_out_BRESP;
  wire GP_Inter_spawn_out_BVALID;
  wire [31:0]GP_Inter_spawn_out_RDATA;
  wire GP_Inter_spawn_out_RREADY;
  wire [1:0]GP_Inter_spawn_out_RRESP;
  wire GP_Inter_spawn_out_RVALID;
  wire [31:0]GP_Inter_spawn_out_WDATA;
  wire GP_Inter_spawn_out_WREADY;
  wire [3:0]GP_Inter_spawn_out_WSTRB;
  wire GP_Inter_spawn_out_WVALID;
  wire [31:0]Picos_OmpSs_Manager_cmdInQueue_ADDR;
  wire Picos_OmpSs_Manager_cmdInQueue_CLK;
  wire [63:0]Picos_OmpSs_Manager_cmdInQueue_DIN;
  wire [63:0]Picos_OmpSs_Manager_cmdInQueue_DOUT;
  wire Picos_OmpSs_Manager_cmdInQueue_EN;
  wire [7:0]Picos_OmpSs_Manager_cmdInQueue_WE;
  wire [31:0]Picos_OmpSs_Manager_cmdOutQueue_ADDR;
  wire Picos_OmpSs_Manager_cmdOutQueue_CLK;
  wire [63:0]Picos_OmpSs_Manager_cmdOutQueue_DIN;
  wire [63:0]Picos_OmpSs_Manager_cmdOutQueue_DOUT;
  wire Picos_OmpSs_Manager_cmdOutQueue_EN;
  wire [7:0]Picos_OmpSs_Manager_cmdOutQueue_WE;
  wire [63:0]Picos_OmpSs_Manager_cmdin_out_TDATA;
  wire [0:0]Picos_OmpSs_Manager_cmdin_out_TDEST;
  wire Picos_OmpSs_Manager_cmdin_out_TLAST;
  wire Picos_OmpSs_Manager_cmdin_out_TREADY;
  wire Picos_OmpSs_Manager_cmdin_out_TVALID;
  wire [31:0]Picos_OmpSs_Manager_spawnInQueue_ADDR;
  wire Picos_OmpSs_Manager_spawnInQueue_CLK;
  wire [63:0]Picos_OmpSs_Manager_spawnInQueue_DIN;
  wire [63:0]Picos_OmpSs_Manager_spawnInQueue_DOUT;
  wire Picos_OmpSs_Manager_spawnInQueue_EN;
  wire [7:0]Picos_OmpSs_Manager_spawnInQueue_WE;
  wire [31:0]Picos_OmpSs_Manager_spawnOutQueue_ADDR;
  wire Picos_OmpSs_Manager_spawnOutQueue_CLK;
  wire [63:0]Picos_OmpSs_Manager_spawnOutQueue_DIN;
  wire [63:0]Picos_OmpSs_Manager_spawnOutQueue_DOUT;
  wire Picos_OmpSs_Manager_spawnOutQueue_EN;
  wire [7:0]Picos_OmpSs_Manager_spawnOutQueue_WE;
  wire [63:0]Picos_OmpSs_Manager_spawn_out_TDATA;
  wire [0:0]Picos_OmpSs_Manager_spawn_out_TDEST;
  wire Picos_OmpSs_Manager_spawn_out_TLAST;
  wire Picos_OmpSs_Manager_spawn_out_TREADY;
  wire Picos_OmpSs_Manager_spawn_out_TVALID;
  wire [63:0]Picos_OmpSs_Manager_taskwait_out_TDATA;
  wire [0:0]Picos_OmpSs_Manager_taskwait_out_TDEST;
  wire Picos_OmpSs_Manager_taskwait_out_TLAST;
  wire Picos_OmpSs_Manager_taskwait_out_TREADY;
  wire Picos_OmpSs_Manager_taskwait_out_TVALID;
  wire [31:0]S_AXI_GP_1_ARADDR;
  wire [2:0]S_AXI_GP_1_ARPROT;
  wire S_AXI_GP_1_ARREADY;
  wire S_AXI_GP_1_ARVALID;
  wire [31:0]S_AXI_GP_1_AWADDR;
  wire [2:0]S_AXI_GP_1_AWPROT;
  wire S_AXI_GP_1_AWREADY;
  wire S_AXI_GP_1_AWVALID;
  wire S_AXI_GP_1_BREADY;
  wire [1:0]S_AXI_GP_1_BRESP;
  wire S_AXI_GP_1_BVALID;
  wire [31:0]S_AXI_GP_1_RDATA;
  wire S_AXI_GP_1_RREADY;
  wire [1:0]S_AXI_GP_1_RRESP;
  wire S_AXI_GP_1_RVALID;
  wire [31:0]S_AXI_GP_1_WDATA;
  wire S_AXI_GP_1_WREADY;
  wire [3:0]S_AXI_GP_1_WSTRB;
  wire S_AXI_GP_1_WVALID;
  wire [31:0]S_AXI_GP_regslice_slr_0_1_M_AXI_ARADDR;
  wire [2:0]S_AXI_GP_regslice_slr_0_1_M_AXI_ARPROT;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_ARREADY;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_ARVALID;
  wire [31:0]S_AXI_GP_regslice_slr_0_1_M_AXI_AWADDR;
  wire [2:0]S_AXI_GP_regslice_slr_0_1_M_AXI_AWPROT;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_AWREADY;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_AWVALID;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_BREADY;
  wire [1:0]S_AXI_GP_regslice_slr_0_1_M_AXI_BRESP;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_BVALID;
  wire [31:0]S_AXI_GP_regslice_slr_0_1_M_AXI_RDATA;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_RREADY;
  wire [1:0]S_AXI_GP_regslice_slr_0_1_M_AXI_RRESP;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_RVALID;
  wire [31:0]S_AXI_GP_regslice_slr_0_1_M_AXI_WDATA;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_WREADY;
  wire [3:0]S_AXI_GP_regslice_slr_0_1_M_AXI_WSTRB;
  wire S_AXI_GP_regslice_slr_0_1_M_AXI_WVALID;
  wire clk_1;
  wire [12:0]cmdInQueue_BRAM_Ctrl_BRAM_PORTA_ADDR;
  wire cmdInQueue_BRAM_Ctrl_BRAM_PORTA_CLK;
  wire [31:0]cmdInQueue_BRAM_Ctrl_BRAM_PORTA_DIN;
  wire [31:0]cmdInQueue_BRAM_Ctrl_BRAM_PORTA_DOUT;
  wire cmdInQueue_BRAM_Ctrl_BRAM_PORTA_EN;
  wire cmdInQueue_BRAM_Ctrl_BRAM_PORTA_RST;
  wire [3:0]cmdInQueue_BRAM_Ctrl_BRAM_PORTA_WE;
  wire [12:0]cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_ADDR;
  wire cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_CLK;
  wire [31:0]cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_DIN;
  wire [31:0]cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_DOUT;
  wire cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_EN;
  wire cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_RST;
  wire [3:0]cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_WE;
  wire [63:0]cmdin_out_1_TDATA;
  wire [0:0]cmdin_out_1_TDEST;
  wire [0:0]cmdin_out_1_TID;
  wire cmdin_out_1_TLAST;
  wire cmdin_out_1_TREADY;
  wire cmdin_out_1_TVALID;
  wire [63:0]hwr_inStream_cmdout_in_TDATA;
  wire [0:0]hwr_inStream_cmdout_in_TID;
  wire hwr_inStream_cmdout_in_TREADY;
  wire hwr_inStream_cmdout_in_TVALID;
  wire [63:0]hwr_inStream_spawn_in_TDATA;
  wire [0:0]hwr_inStream_spawn_in_TID;
  wire hwr_inStream_spawn_in_TLAST;
  wire hwr_inStream_spawn_in_TREADY;
  wire hwr_inStream_spawn_in_TVALID;
  wire [63:0]hwr_inStream_taskwait_in_TDATA;
  wire [0:0]hwr_inStream_taskwait_in_TID;
  wire hwr_inStream_taskwait_in_TLAST;
  wire hwr_inStream_taskwait_in_TREADY;
  wire hwr_inStream_taskwait_in_TVALID;
  wire managed_rstn_1;
  wire rstn_1;
  wire [12:0]spawnInQueue_BRAM_Ctrl_BRAM_PORTA_ADDR;
  wire spawnInQueue_BRAM_Ctrl_BRAM_PORTA_CLK;
  wire [31:0]spawnInQueue_BRAM_Ctrl_BRAM_PORTA_DIN;
  wire [31:0]spawnInQueue_BRAM_Ctrl_BRAM_PORTA_DOUT;
  wire spawnInQueue_BRAM_Ctrl_BRAM_PORTA_EN;
  wire spawnInQueue_BRAM_Ctrl_BRAM_PORTA_RST;
  wire [3:0]spawnInQueue_BRAM_Ctrl_BRAM_PORTA_WE;
  wire [12:0]spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_ADDR;
  wire spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_CLK;
  wire [31:0]spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_DIN;
  wire [31:0]spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_DOUT;
  wire spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_EN;
  wire spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_RST;
  wire [3:0]spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_WE;
  wire [63:0]spawn_out_1_TDATA;
  wire [0:0]spawn_out_1_TDEST;
  wire [0:0]spawn_out_1_TID;
  wire spawn_out_1_TLAST;
  wire spawn_out_1_TREADY;
  wire spawn_out_1_TVALID;
  wire [63:0]taskwait_out_1_TDATA;
  wire [0:0]taskwait_out_1_TDEST;
  wire [0:0]taskwait_out_1_TID;
  wire taskwait_out_1_TLAST;
  wire taskwait_out_1_TREADY;
  wire taskwait_out_1_TVALID;

  assign Conn1_TDATA = S0_AXIS_tdata[63:0];
  assign Conn1_TDEST = S0_AXIS_tdest[1:0];
  assign Conn1_TID = S0_AXIS_tid[0];
  assign Conn1_TLAST = S0_AXIS_tlast;
  assign Conn1_TVALID = S0_AXIS_tvalid;
  assign Conn2_TREADY = M0_AXIS_tready;
  assign Conn3_TDATA = S1_AXIS_tdata[63:0];
  assign Conn3_TDEST = S1_AXIS_tdest[1:0];
  assign Conn3_TID = S1_AXIS_tid[0];
  assign Conn3_TLAST = S1_AXIS_tlast;
  assign Conn3_TVALID = S1_AXIS_tvalid;
  assign Conn4_TREADY = M1_AXIS_tready;
  assign M0_AXIS_tdata[63:0] = Conn2_TDATA;
  assign M0_AXIS_tid[0] = Conn2_TID;
  assign M0_AXIS_tvalid = Conn2_TVALID;
  assign M1_AXIS_tdata[63:0] = Conn4_TDATA;
  assign M1_AXIS_tvalid = Conn4_TVALID;
  assign S0_AXIS_tready = Conn1_TREADY;
  assign S1_AXIS_tready = Conn3_TREADY;
  assign S_AXI_GP_1_ARADDR = S_AXI_GP_araddr[31:0];
  assign S_AXI_GP_1_ARPROT = S_AXI_GP_arprot[2:0];
  assign S_AXI_GP_1_ARVALID = S_AXI_GP_arvalid;
  assign S_AXI_GP_1_AWADDR = S_AXI_GP_awaddr[31:0];
  assign S_AXI_GP_1_AWPROT = S_AXI_GP_awprot[2:0];
  assign S_AXI_GP_1_AWVALID = S_AXI_GP_awvalid;
  assign S_AXI_GP_1_BREADY = S_AXI_GP_bready;
  assign S_AXI_GP_1_RREADY = S_AXI_GP_rready;
  assign S_AXI_GP_1_WDATA = S_AXI_GP_wdata[31:0];
  assign S_AXI_GP_1_WSTRB = S_AXI_GP_wstrb[3:0];
  assign S_AXI_GP_1_WVALID = S_AXI_GP_wvalid;
  assign S_AXI_GP_arready = S_AXI_GP_1_ARREADY;
  assign S_AXI_GP_awready = S_AXI_GP_1_AWREADY;
  assign S_AXI_GP_bresp[1:0] = S_AXI_GP_1_BRESP;
  assign S_AXI_GP_bvalid = S_AXI_GP_1_BVALID;
  assign S_AXI_GP_rdata[31:0] = S_AXI_GP_1_RDATA;
  assign S_AXI_GP_rresp[1:0] = S_AXI_GP_1_RRESP;
  assign S_AXI_GP_rvalid = S_AXI_GP_1_RVALID;
  assign S_AXI_GP_wready = S_AXI_GP_1_WREADY;
  assign clk_1 = clk;
  assign managed_rstn_1 = managed_rstn;
  assign rstn_1 = rstn;
  matmul_design_GP_Inter_0 GP_Inter
       (.ACLK(clk_1),
        .ARESETN(rstn_1),
        .M00_ACLK(clk_1),
        .M00_ARESETN(rstn_1),
        .M00_AXI_araddr(GP_Inter_M00_AXI_ARADDR),
        .M00_AXI_arprot(GP_Inter_M00_AXI_ARPROT),
        .M00_AXI_arready(GP_Inter_M00_AXI_ARREADY),
        .M00_AXI_arvalid(GP_Inter_M00_AXI_ARVALID),
        .M00_AXI_awaddr(GP_Inter_M00_AXI_AWADDR),
        .M00_AXI_awprot(GP_Inter_M00_AXI_AWPROT),
        .M00_AXI_awready(GP_Inter_M00_AXI_AWREADY),
        .M00_AXI_awvalid(GP_Inter_M00_AXI_AWVALID),
        .M00_AXI_bready(GP_Inter_M00_AXI_BREADY),
        .M00_AXI_bresp(GP_Inter_M00_AXI_BRESP),
        .M00_AXI_bvalid(GP_Inter_M00_AXI_BVALID),
        .M00_AXI_rdata(GP_Inter_M00_AXI_RDATA),
        .M00_AXI_rready(GP_Inter_M00_AXI_RREADY),
        .M00_AXI_rresp(GP_Inter_M00_AXI_RRESP),
        .M00_AXI_rvalid(GP_Inter_M00_AXI_RVALID),
        .M00_AXI_wdata(GP_Inter_M00_AXI_WDATA),
        .M00_AXI_wready(GP_Inter_M00_AXI_WREADY),
        .M00_AXI_wstrb(GP_Inter_M00_AXI_WSTRB),
        .M00_AXI_wvalid(GP_Inter_M00_AXI_WVALID),
        .M01_ACLK(clk_1),
        .M01_ARESETN(rstn_1),
        .M01_AXI_araddr(GP_Inter_M01_AXI_ARADDR),
        .M01_AXI_arprot(GP_Inter_M01_AXI_ARPROT),
        .M01_AXI_arready(GP_Inter_M01_AXI_ARREADY),
        .M01_AXI_arvalid(GP_Inter_M01_AXI_ARVALID),
        .M01_AXI_awaddr(GP_Inter_M01_AXI_AWADDR),
        .M01_AXI_awprot(GP_Inter_M01_AXI_AWPROT),
        .M01_AXI_awready(GP_Inter_M01_AXI_AWREADY),
        .M01_AXI_awvalid(GP_Inter_M01_AXI_AWVALID),
        .M01_AXI_bready(GP_Inter_M01_AXI_BREADY),
        .M01_AXI_bresp(GP_Inter_M01_AXI_BRESP),
        .M01_AXI_bvalid(GP_Inter_M01_AXI_BVALID),
        .M01_AXI_rdata(GP_Inter_M01_AXI_RDATA),
        .M01_AXI_rready(GP_Inter_M01_AXI_RREADY),
        .M01_AXI_rresp(GP_Inter_M01_AXI_RRESP),
        .M01_AXI_rvalid(GP_Inter_M01_AXI_RVALID),
        .M01_AXI_wdata(GP_Inter_M01_AXI_WDATA),
        .M01_AXI_wready(GP_Inter_M01_AXI_WREADY),
        .M01_AXI_wstrb(GP_Inter_M01_AXI_WSTRB),
        .M01_AXI_wvalid(GP_Inter_M01_AXI_WVALID),
        .M02_ACLK(clk_1),
        .M02_ARESETN(managed_rstn_1),
        .M02_AXI_araddr(GP_Inter_spawn_out_ARADDR),
        .M02_AXI_arprot(GP_Inter_spawn_out_ARPROT),
        .M02_AXI_arready(GP_Inter_spawn_out_ARREADY),
        .M02_AXI_arvalid(GP_Inter_spawn_out_ARVALID),
        .M02_AXI_awaddr(GP_Inter_spawn_out_AWADDR),
        .M02_AXI_awprot(GP_Inter_spawn_out_AWPROT),
        .M02_AXI_awready(GP_Inter_spawn_out_AWREADY),
        .M02_AXI_awvalid(GP_Inter_spawn_out_AWVALID),
        .M02_AXI_bready(GP_Inter_spawn_out_BREADY),
        .M02_AXI_bresp(GP_Inter_spawn_out_BRESP),
        .M02_AXI_bvalid(GP_Inter_spawn_out_BVALID),
        .M02_AXI_rdata(GP_Inter_spawn_out_RDATA),
        .M02_AXI_rready(GP_Inter_spawn_out_RREADY),
        .M02_AXI_rresp(GP_Inter_spawn_out_RRESP),
        .M02_AXI_rvalid(GP_Inter_spawn_out_RVALID),
        .M02_AXI_wdata(GP_Inter_spawn_out_WDATA),
        .M02_AXI_wready(GP_Inter_spawn_out_WREADY),
        .M02_AXI_wstrb(GP_Inter_spawn_out_WSTRB),
        .M02_AXI_wvalid(GP_Inter_spawn_out_WVALID),
        .M03_ACLK(clk_1),
        .M03_ARESETN(managed_rstn_1),
        .M03_AXI_araddr(GP_Inter_spawn_in_ARADDR),
        .M03_AXI_arprot(GP_Inter_spawn_in_ARPROT),
        .M03_AXI_arready(GP_Inter_spawn_in_ARREADY),
        .M03_AXI_arvalid(GP_Inter_spawn_in_ARVALID),
        .M03_AXI_awaddr(GP_Inter_spawn_in_AWADDR),
        .M03_AXI_awprot(GP_Inter_spawn_in_AWPROT),
        .M03_AXI_awready(GP_Inter_spawn_in_AWREADY),
        .M03_AXI_awvalid(GP_Inter_spawn_in_AWVALID),
        .M03_AXI_bready(GP_Inter_spawn_in_BREADY),
        .M03_AXI_bresp(GP_Inter_spawn_in_BRESP),
        .M03_AXI_bvalid(GP_Inter_spawn_in_BVALID),
        .M03_AXI_rdata(GP_Inter_spawn_in_RDATA),
        .M03_AXI_rready(GP_Inter_spawn_in_RREADY),
        .M03_AXI_rresp(GP_Inter_spawn_in_RRESP),
        .M03_AXI_rvalid(GP_Inter_spawn_in_RVALID),
        .M03_AXI_wdata(GP_Inter_spawn_in_WDATA),
        .M03_AXI_wready(GP_Inter_spawn_in_WREADY),
        .M03_AXI_wstrb(GP_Inter_spawn_in_WSTRB),
        .M03_AXI_wvalid(GP_Inter_spawn_in_WVALID),
        .S00_ACLK(clk_1),
        .S00_ARESETN(rstn_1),
        .S00_AXI_araddr(S_AXI_GP_regslice_slr_0_1_M_AXI_ARADDR),
        .S00_AXI_arprot(S_AXI_GP_regslice_slr_0_1_M_AXI_ARPROT),
        .S00_AXI_arready(S_AXI_GP_regslice_slr_0_1_M_AXI_ARREADY),
        .S00_AXI_arvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_ARVALID),
        .S00_AXI_awaddr(S_AXI_GP_regslice_slr_0_1_M_AXI_AWADDR),
        .S00_AXI_awprot(S_AXI_GP_regslice_slr_0_1_M_AXI_AWPROT),
        .S00_AXI_awready(S_AXI_GP_regslice_slr_0_1_M_AXI_AWREADY),
        .S00_AXI_awvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_AWVALID),
        .S00_AXI_bready(S_AXI_GP_regslice_slr_0_1_M_AXI_BREADY),
        .S00_AXI_bresp(S_AXI_GP_regslice_slr_0_1_M_AXI_BRESP),
        .S00_AXI_bvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_BVALID),
        .S00_AXI_rdata(S_AXI_GP_regslice_slr_0_1_M_AXI_RDATA),
        .S00_AXI_rready(S_AXI_GP_regslice_slr_0_1_M_AXI_RREADY),
        .S00_AXI_rresp(S_AXI_GP_regslice_slr_0_1_M_AXI_RRESP),
        .S00_AXI_rvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_RVALID),
        .S00_AXI_wdata(S_AXI_GP_regslice_slr_0_1_M_AXI_WDATA),
        .S00_AXI_wready(S_AXI_GP_regslice_slr_0_1_M_AXI_WREADY),
        .S00_AXI_wstrb(S_AXI_GP_regslice_slr_0_1_M_AXI_WSTRB),
        .S00_AXI_wvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_WVALID));
  matmul_design_Picos_OmpSs_Manager_0 Picos_OmpSs_Manager
       (.clk(clk_1),
        .cmdin_out_tdata(Picos_OmpSs_Manager_cmdin_out_TDATA),
        .cmdin_out_tdest(Picos_OmpSs_Manager_cmdin_out_TDEST),
        .cmdin_out_tlast(Picos_OmpSs_Manager_cmdin_out_TLAST),
        .cmdin_out_tready(Picos_OmpSs_Manager_cmdin_out_TREADY),
        .cmdin_out_tvalid(Picos_OmpSs_Manager_cmdin_out_TVALID),
        .cmdin_queue_addr(Picos_OmpSs_Manager_cmdInQueue_ADDR),
        .cmdin_queue_clk(Picos_OmpSs_Manager_cmdInQueue_CLK),
        .cmdin_queue_din(Picos_OmpSs_Manager_cmdInQueue_DIN),
        .cmdin_queue_dout(Picos_OmpSs_Manager_cmdInQueue_DOUT),
        .cmdin_queue_en(Picos_OmpSs_Manager_cmdInQueue_EN),
        .cmdin_queue_we(Picos_OmpSs_Manager_cmdInQueue_WE),
        .cmdout_in_tdata(hwr_inStream_cmdout_in_TDATA),
        .cmdout_in_tid(hwr_inStream_cmdout_in_TID),
        .cmdout_in_tready(hwr_inStream_cmdout_in_TREADY),
        .cmdout_in_tvalid(hwr_inStream_cmdout_in_TVALID),
        .cmdout_queue_addr(Picos_OmpSs_Manager_cmdOutQueue_ADDR),
        .cmdout_queue_clk(Picos_OmpSs_Manager_cmdOutQueue_CLK),
        .cmdout_queue_din(Picos_OmpSs_Manager_cmdOutQueue_DIN),
        .cmdout_queue_dout(Picos_OmpSs_Manager_cmdOutQueue_DOUT),
        .cmdout_queue_en(Picos_OmpSs_Manager_cmdOutQueue_EN),
        .cmdout_queue_we(Picos_OmpSs_Manager_cmdOutQueue_WE),
        .rstn(managed_rstn_1),
        .spawn_in_tdata(hwr_inStream_spawn_in_TDATA),
        .spawn_in_tid(hwr_inStream_spawn_in_TID),
        .spawn_in_tlast(hwr_inStream_spawn_in_TLAST),
        .spawn_in_tready(hwr_inStream_spawn_in_TREADY),
        .spawn_in_tvalid(hwr_inStream_spawn_in_TVALID),
        .spawn_out_tdata(Picos_OmpSs_Manager_spawn_out_TDATA),
        .spawn_out_tdest(Picos_OmpSs_Manager_spawn_out_TDEST),
        .spawn_out_tlast(Picos_OmpSs_Manager_spawn_out_TLAST),
        .spawn_out_tready(Picos_OmpSs_Manager_spawn_out_TREADY),
        .spawn_out_tvalid(Picos_OmpSs_Manager_spawn_out_TVALID),
        .spawnin_queue_addr(Picos_OmpSs_Manager_spawnInQueue_ADDR),
        .spawnin_queue_clk(Picos_OmpSs_Manager_spawnInQueue_CLK),
        .spawnin_queue_din(Picos_OmpSs_Manager_spawnInQueue_DIN),
        .spawnin_queue_dout(Picos_OmpSs_Manager_spawnInQueue_DOUT),
        .spawnin_queue_en(Picos_OmpSs_Manager_spawnInQueue_EN),
        .spawnin_queue_we(Picos_OmpSs_Manager_spawnInQueue_WE),
        .spawnout_queue_addr(Picos_OmpSs_Manager_spawnOutQueue_ADDR),
        .spawnout_queue_clk(Picos_OmpSs_Manager_spawnOutQueue_CLK),
        .spawnout_queue_din(Picos_OmpSs_Manager_spawnOutQueue_DIN),
        .spawnout_queue_dout(Picos_OmpSs_Manager_spawnOutQueue_DOUT),
        .spawnout_queue_en(Picos_OmpSs_Manager_spawnOutQueue_EN),
        .spawnout_queue_we(Picos_OmpSs_Manager_spawnOutQueue_WE),
        .taskwait_in_tdata(hwr_inStream_taskwait_in_TDATA),
        .taskwait_in_tid(hwr_inStream_taskwait_in_TID),
        .taskwait_in_tlast(hwr_inStream_taskwait_in_TLAST),
        .taskwait_in_tready(hwr_inStream_taskwait_in_TREADY),
        .taskwait_in_tvalid(hwr_inStream_taskwait_in_TVALID),
        .taskwait_out_tdata(Picos_OmpSs_Manager_taskwait_out_TDATA),
        .taskwait_out_tdest(Picos_OmpSs_Manager_taskwait_out_TDEST),
        .taskwait_out_tlast(Picos_OmpSs_Manager_taskwait_out_TLAST),
        .taskwait_out_tready(Picos_OmpSs_Manager_taskwait_out_TREADY),
        .taskwait_out_tvalid(Picos_OmpSs_Manager_taskwait_out_TVALID));
  matmul_design_S_AXI_GP_regslice_slr_0_1_0 S_AXI_GP_regslice_slr_0_1
       (.aclk(clk_1),
        .aresetn(rstn_1),
        .m_axi_araddr(S_AXI_GP_regslice_slr_0_1_M_AXI_ARADDR),
        .m_axi_arprot(S_AXI_GP_regslice_slr_0_1_M_AXI_ARPROT),
        .m_axi_arready(S_AXI_GP_regslice_slr_0_1_M_AXI_ARREADY),
        .m_axi_arvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_ARVALID),
        .m_axi_awaddr(S_AXI_GP_regslice_slr_0_1_M_AXI_AWADDR),
        .m_axi_awprot(S_AXI_GP_regslice_slr_0_1_M_AXI_AWPROT),
        .m_axi_awready(S_AXI_GP_regslice_slr_0_1_M_AXI_AWREADY),
        .m_axi_awvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_AWVALID),
        .m_axi_bready(S_AXI_GP_regslice_slr_0_1_M_AXI_BREADY),
        .m_axi_bresp(S_AXI_GP_regslice_slr_0_1_M_AXI_BRESP),
        .m_axi_bvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_BVALID),
        .m_axi_rdata(S_AXI_GP_regslice_slr_0_1_M_AXI_RDATA),
        .m_axi_rready(S_AXI_GP_regslice_slr_0_1_M_AXI_RREADY),
        .m_axi_rresp(S_AXI_GP_regslice_slr_0_1_M_AXI_RRESP),
        .m_axi_rvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_RVALID),
        .m_axi_wdata(S_AXI_GP_regslice_slr_0_1_M_AXI_WDATA),
        .m_axi_wready(S_AXI_GP_regslice_slr_0_1_M_AXI_WREADY),
        .m_axi_wstrb(S_AXI_GP_regslice_slr_0_1_M_AXI_WSTRB),
        .m_axi_wvalid(S_AXI_GP_regslice_slr_0_1_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_GP_1_ARADDR),
        .s_axi_arprot(S_AXI_GP_1_ARPROT),
        .s_axi_arready(S_AXI_GP_1_ARREADY),
        .s_axi_arvalid(S_AXI_GP_1_ARVALID),
        .s_axi_awaddr(S_AXI_GP_1_AWADDR),
        .s_axi_awprot(S_AXI_GP_1_AWPROT),
        .s_axi_awready(S_AXI_GP_1_AWREADY),
        .s_axi_awvalid(S_AXI_GP_1_AWVALID),
        .s_axi_bready(S_AXI_GP_1_BREADY),
        .s_axi_bresp(S_AXI_GP_1_BRESP),
        .s_axi_bvalid(S_AXI_GP_1_BVALID),
        .s_axi_rdata(S_AXI_GP_1_RDATA),
        .s_axi_rready(S_AXI_GP_1_RREADY),
        .s_axi_rresp(S_AXI_GP_1_RRESP),
        .s_axi_rvalid(S_AXI_GP_1_RVALID),
        .s_axi_wdata(S_AXI_GP_1_WDATA),
        .s_axi_wready(S_AXI_GP_1_WREADY),
        .s_axi_wstrb(S_AXI_GP_1_WSTRB),
        .s_axi_wvalid(S_AXI_GP_1_WVALID));
  matmul_design_axis_cmdin_TID_0 axis_cmdin_TID
       (.aclk(clk_1),
        .aresetn(managed_rstn_1),
        .m_axis_tdata(cmdin_out_1_TDATA),
        .m_axis_tdest(cmdin_out_1_TDEST),
        .m_axis_tid(cmdin_out_1_TID),
        .m_axis_tlast(cmdin_out_1_TLAST),
        .m_axis_tready(cmdin_out_1_TREADY),
        .m_axis_tvalid(cmdin_out_1_TVALID),
        .s_axis_tdata(Picos_OmpSs_Manager_cmdin_out_TDATA),
        .s_axis_tdest(Picos_OmpSs_Manager_cmdin_out_TDEST),
        .s_axis_tlast(Picos_OmpSs_Manager_cmdin_out_TLAST),
        .s_axis_tready(Picos_OmpSs_Manager_cmdin_out_TREADY),
        .s_axis_tvalid(Picos_OmpSs_Manager_cmdin_out_TVALID));
  matmul_design_axis_spawn_TID_0 axis_spawn_TID
       (.aclk(clk_1),
        .aresetn(managed_rstn_1),
        .m_axis_tdata(spawn_out_1_TDATA),
        .m_axis_tdest(spawn_out_1_TDEST),
        .m_axis_tid(spawn_out_1_TID),
        .m_axis_tlast(spawn_out_1_TLAST),
        .m_axis_tready(spawn_out_1_TREADY),
        .m_axis_tvalid(spawn_out_1_TVALID),
        .s_axis_tdata(Picos_OmpSs_Manager_spawn_out_TDATA),
        .s_axis_tdest(Picos_OmpSs_Manager_spawn_out_TDEST),
        .s_axis_tlast(Picos_OmpSs_Manager_spawn_out_TLAST),
        .s_axis_tready(Picos_OmpSs_Manager_spawn_out_TREADY),
        .s_axis_tvalid(Picos_OmpSs_Manager_spawn_out_TVALID));
  matmul_design_axis_taskwait_TID_0 axis_taskwait_TID
       (.aclk(clk_1),
        .aresetn(managed_rstn_1),
        .m_axis_tdata(taskwait_out_1_TDATA),
        .m_axis_tdest(taskwait_out_1_TDEST),
        .m_axis_tid(taskwait_out_1_TID),
        .m_axis_tlast(taskwait_out_1_TLAST),
        .m_axis_tready(taskwait_out_1_TREADY),
        .m_axis_tvalid(taskwait_out_1_TVALID),
        .s_axis_tdata(Picos_OmpSs_Manager_taskwait_out_TDATA),
        .s_axis_tdest(Picos_OmpSs_Manager_taskwait_out_TDEST),
        .s_axis_tlast(Picos_OmpSs_Manager_taskwait_out_TLAST),
        .s_axis_tready(Picos_OmpSs_Manager_taskwait_out_TREADY),
        .s_axis_tvalid(Picos_OmpSs_Manager_taskwait_out_TVALID));
  matmul_design_cmdInQueue_0 cmdInQueue
       (.addra(Picos_OmpSs_Manager_cmdInQueue_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cmdInQueue_BRAM_Ctrl_BRAM_PORTA_ADDR}),
        .clka(Picos_OmpSs_Manager_cmdInQueue_CLK),
        .clkb(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .dina(Picos_OmpSs_Manager_cmdInQueue_DIN),
        .dinb(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .douta(Picos_OmpSs_Manager_cmdInQueue_DOUT),
        .doutb(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .ena(Picos_OmpSs_Manager_cmdInQueue_EN),
        .enb(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .rstb(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .wea(Picos_OmpSs_Manager_cmdInQueue_WE),
        .web(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_WE));
  matmul_design_cmdInQueue_BRAM_Ctrl_0 cmdInQueue_BRAM_Ctrl
       (.bram_addr_a(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_ADDR),
        .bram_clk_a(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .bram_en_a(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .bram_rddata_a(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .bram_rst_a(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .bram_we_a(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_WE),
        .bram_wrdata_a(cmdInQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(GP_Inter_M00_AXI_ARADDR[12:0]),
        .s_axi_aresetn(rstn_1),
        .s_axi_arprot(GP_Inter_M00_AXI_ARPROT),
        .s_axi_arready(GP_Inter_M00_AXI_ARREADY),
        .s_axi_arvalid(GP_Inter_M00_AXI_ARVALID),
        .s_axi_awaddr(GP_Inter_M00_AXI_AWADDR[12:0]),
        .s_axi_awprot(GP_Inter_M00_AXI_AWPROT),
        .s_axi_awready(GP_Inter_M00_AXI_AWREADY),
        .s_axi_awvalid(GP_Inter_M00_AXI_AWVALID),
        .s_axi_bready(GP_Inter_M00_AXI_BREADY),
        .s_axi_bresp(GP_Inter_M00_AXI_BRESP),
        .s_axi_bvalid(GP_Inter_M00_AXI_BVALID),
        .s_axi_rdata(GP_Inter_M00_AXI_RDATA),
        .s_axi_rready(GP_Inter_M00_AXI_RREADY),
        .s_axi_rresp(GP_Inter_M00_AXI_RRESP),
        .s_axi_rvalid(GP_Inter_M00_AXI_RVALID),
        .s_axi_wdata(GP_Inter_M00_AXI_WDATA),
        .s_axi_wready(GP_Inter_M00_AXI_WREADY),
        .s_axi_wstrb(GP_Inter_M00_AXI_WSTRB),
        .s_axi_wvalid(GP_Inter_M00_AXI_WVALID));
  matmul_design_cmdOutQueue_0 cmdOutQueue
       (.addra(Picos_OmpSs_Manager_cmdOutQueue_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_ADDR}),
        .clka(Picos_OmpSs_Manager_cmdOutQueue_CLK),
        .clkb(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .dina(Picos_OmpSs_Manager_cmdOutQueue_DIN),
        .dinb(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .douta(Picos_OmpSs_Manager_cmdOutQueue_DOUT),
        .doutb(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .ena(Picos_OmpSs_Manager_cmdOutQueue_EN),
        .enb(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .rstb(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .wea(Picos_OmpSs_Manager_cmdOutQueue_WE),
        .web(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_WE));
  matmul_design_cmdOutQueue_BRAM_Ctrl_0 cmdOutQueue_BRAM_Ctrl
       (.bram_addr_a(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_ADDR),
        .bram_clk_a(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .bram_en_a(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .bram_rddata_a(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .bram_rst_a(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .bram_we_a(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_WE),
        .bram_wrdata_a(cmdOutQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(GP_Inter_M01_AXI_ARADDR[12:0]),
        .s_axi_aresetn(rstn_1),
        .s_axi_arprot(GP_Inter_M01_AXI_ARPROT),
        .s_axi_arready(GP_Inter_M01_AXI_ARREADY),
        .s_axi_arvalid(GP_Inter_M01_AXI_ARVALID),
        .s_axi_awaddr(GP_Inter_M01_AXI_AWADDR[12:0]),
        .s_axi_awprot(GP_Inter_M01_AXI_AWPROT),
        .s_axi_awready(GP_Inter_M01_AXI_AWREADY),
        .s_axi_awvalid(GP_Inter_M01_AXI_AWVALID),
        .s_axi_bready(GP_Inter_M01_AXI_BREADY),
        .s_axi_bresp(GP_Inter_M01_AXI_BRESP),
        .s_axi_bvalid(GP_Inter_M01_AXI_BVALID),
        .s_axi_rdata(GP_Inter_M01_AXI_RDATA),
        .s_axi_rready(GP_Inter_M01_AXI_RREADY),
        .s_axi_rresp(GP_Inter_M01_AXI_RRESP),
        .s_axi_rvalid(GP_Inter_M01_AXI_RVALID),
        .s_axi_wdata(GP_Inter_M01_AXI_WDATA),
        .s_axi_wready(GP_Inter_M01_AXI_WREADY),
        .s_axi_wstrb(GP_Inter_M01_AXI_WSTRB),
        .s_axi_wvalid(GP_Inter_M01_AXI_WVALID));
  hwr_inStream_imp_PF75E8 hwr_inStream
       (.S0_AXIS_tdata(Conn1_TDATA),
        .S0_AXIS_tdest(Conn1_TDEST),
        .S0_AXIS_tid(Conn1_TID),
        .S0_AXIS_tlast(Conn1_TLAST),
        .S0_AXIS_tready(Conn1_TREADY),
        .S0_AXIS_tvalid(Conn1_TVALID),
        .S1_AXIS_tdata(Conn3_TDATA),
        .S1_AXIS_tdest(Conn3_TDEST),
        .S1_AXIS_tid(Conn3_TID),
        .S1_AXIS_tlast(Conn3_TLAST),
        .S1_AXIS_tready(Conn3_TREADY),
        .S1_AXIS_tvalid(Conn3_TVALID),
        .clk(clk_1),
        .cmdout_in_tdata(hwr_inStream_cmdout_in_TDATA),
        .cmdout_in_tid(hwr_inStream_cmdout_in_TID),
        .cmdout_in_tready(hwr_inStream_cmdout_in_TREADY),
        .cmdout_in_tvalid(hwr_inStream_cmdout_in_TVALID),
        .rstn(rstn_1),
        .spawn_in_tdata(hwr_inStream_spawn_in_TDATA),
        .spawn_in_tid(hwr_inStream_spawn_in_TID),
        .spawn_in_tlast(hwr_inStream_spawn_in_TLAST),
        .spawn_in_tready(hwr_inStream_spawn_in_TREADY),
        .spawn_in_tvalid(hwr_inStream_spawn_in_TVALID),
        .taskwait_in_tdata(hwr_inStream_taskwait_in_TDATA),
        .taskwait_in_tid(hwr_inStream_taskwait_in_TID),
        .taskwait_in_tlast(hwr_inStream_taskwait_in_TLAST),
        .taskwait_in_tready(hwr_inStream_taskwait_in_TREADY),
        .taskwait_in_tvalid(hwr_inStream_taskwait_in_TVALID));
  hwr_outStream_imp_1DWZ3QS hwr_outStream
       (.M0_AXIS_tdata(Conn2_TDATA),
        .M0_AXIS_tid(Conn2_TID),
        .M0_AXIS_tready(Conn2_TREADY),
        .M0_AXIS_tvalid(Conn2_TVALID),
        .M1_AXIS_tdata(Conn4_TDATA),
        .M1_AXIS_tready(Conn4_TREADY),
        .M1_AXIS_tvalid(Conn4_TVALID),
        .clk(clk_1),
        .cmdin_out_tdata(cmdin_out_1_TDATA),
        .cmdin_out_tdest(cmdin_out_1_TDEST),
        .cmdin_out_tid(cmdin_out_1_TID),
        .cmdin_out_tlast(cmdin_out_1_TLAST),
        .cmdin_out_tready(cmdin_out_1_TREADY),
        .cmdin_out_tvalid(cmdin_out_1_TVALID),
        .rstn(rstn_1),
        .spawn_out_tdata(spawn_out_1_TDATA),
        .spawn_out_tdest(spawn_out_1_TDEST),
        .spawn_out_tid(spawn_out_1_TID),
        .spawn_out_tlast(spawn_out_1_TLAST),
        .spawn_out_tready(spawn_out_1_TREADY),
        .spawn_out_tvalid(spawn_out_1_TVALID),
        .taskwait_out_tdata(taskwait_out_1_TDATA),
        .taskwait_out_tdest(taskwait_out_1_TDEST),
        .taskwait_out_tid(taskwait_out_1_TID),
        .taskwait_out_tlast(taskwait_out_1_TLAST),
        .taskwait_out_tready(taskwait_out_1_TREADY),
        .taskwait_out_tvalid(taskwait_out_1_TVALID));
  matmul_design_spawnInQueue_0 spawnInQueue
       (.addra(Picos_OmpSs_Manager_spawnInQueue_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,spawnInQueue_BRAM_Ctrl_BRAM_PORTA_ADDR}),
        .clka(Picos_OmpSs_Manager_spawnInQueue_CLK),
        .clkb(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .dina(Picos_OmpSs_Manager_spawnInQueue_DIN),
        .dinb(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .douta(Picos_OmpSs_Manager_spawnInQueue_DOUT),
        .doutb(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .ena(Picos_OmpSs_Manager_spawnInQueue_EN),
        .enb(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .rstb(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .wea(Picos_OmpSs_Manager_spawnInQueue_WE),
        .web(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_WE));
  matmul_design_spawnInQueue_BRAM_Ctrl_0 spawnInQueue_BRAM_Ctrl
       (.bram_addr_a(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_ADDR),
        .bram_clk_a(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .bram_en_a(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .bram_rddata_a(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .bram_rst_a(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .bram_we_a(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_WE),
        .bram_wrdata_a(spawnInQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(GP_Inter_spawn_in_ARADDR[12:0]),
        .s_axi_aresetn(rstn_1),
        .s_axi_arprot(GP_Inter_spawn_in_ARPROT),
        .s_axi_arready(GP_Inter_spawn_in_ARREADY),
        .s_axi_arvalid(GP_Inter_spawn_in_ARVALID),
        .s_axi_awaddr(GP_Inter_spawn_in_AWADDR[12:0]),
        .s_axi_awprot(GP_Inter_spawn_in_AWPROT),
        .s_axi_awready(GP_Inter_spawn_in_AWREADY),
        .s_axi_awvalid(GP_Inter_spawn_in_AWVALID),
        .s_axi_bready(GP_Inter_spawn_in_BREADY),
        .s_axi_bresp(GP_Inter_spawn_in_BRESP),
        .s_axi_bvalid(GP_Inter_spawn_in_BVALID),
        .s_axi_rdata(GP_Inter_spawn_in_RDATA),
        .s_axi_rready(GP_Inter_spawn_in_RREADY),
        .s_axi_rresp(GP_Inter_spawn_in_RRESP),
        .s_axi_rvalid(GP_Inter_spawn_in_RVALID),
        .s_axi_wdata(GP_Inter_spawn_in_WDATA),
        .s_axi_wready(GP_Inter_spawn_in_WREADY),
        .s_axi_wstrb(GP_Inter_spawn_in_WSTRB),
        .s_axi_wvalid(GP_Inter_spawn_in_WVALID));
  matmul_design_spawnOutQueue_0 spawnOutQueue
       (.addra(Picos_OmpSs_Manager_spawnOutQueue_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_ADDR}),
        .clka(Picos_OmpSs_Manager_spawnOutQueue_CLK),
        .clkb(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .dina(Picos_OmpSs_Manager_spawnOutQueue_DIN),
        .dinb(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .douta(Picos_OmpSs_Manager_spawnOutQueue_DOUT),
        .doutb(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .ena(Picos_OmpSs_Manager_spawnOutQueue_EN),
        .enb(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .rstb(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .wea(Picos_OmpSs_Manager_spawnOutQueue_WE),
        .web(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_WE));
  matmul_design_spawnOutQueue_BRAM_Ctrl_0 spawnOutQueue_BRAM_Ctrl
       (.bram_addr_a(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_ADDR),
        .bram_clk_a(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_CLK),
        .bram_en_a(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_EN),
        .bram_rddata_a(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .bram_rst_a(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_RST),
        .bram_we_a(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_WE),
        .bram_wrdata_a(spawnOutQueue_BRAM_Ctrl_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(GP_Inter_spawn_out_ARADDR[12:0]),
        .s_axi_aresetn(rstn_1),
        .s_axi_arprot(GP_Inter_spawn_out_ARPROT),
        .s_axi_arready(GP_Inter_spawn_out_ARREADY),
        .s_axi_arvalid(GP_Inter_spawn_out_ARVALID),
        .s_axi_awaddr(GP_Inter_spawn_out_AWADDR[12:0]),
        .s_axi_awprot(GP_Inter_spawn_out_AWPROT),
        .s_axi_awready(GP_Inter_spawn_out_AWREADY),
        .s_axi_awvalid(GP_Inter_spawn_out_AWVALID),
        .s_axi_bready(GP_Inter_spawn_out_BREADY),
        .s_axi_bresp(GP_Inter_spawn_out_BRESP),
        .s_axi_bvalid(GP_Inter_spawn_out_BVALID),
        .s_axi_rdata(GP_Inter_spawn_out_RDATA),
        .s_axi_rready(GP_Inter_spawn_out_RREADY),
        .s_axi_rresp(GP_Inter_spawn_out_RRESP),
        .s_axi_rvalid(GP_Inter_spawn_out_RVALID),
        .s_axi_wdata(GP_Inter_spawn_out_WDATA),
        .s_axi_wready(GP_Inter_spawn_out_WREADY),
        .s_axi_wstrb(GP_Inter_spawn_out_WSTRB),
        .s_axi_wvalid(GP_Inter_spawn_out_WVALID));
endmodule

module QDMA_imp_ROTCTT
   (M_AXI_LITE_araddr,
    M_AXI_LITE_arprot,
    M_AXI_LITE_arready,
    M_AXI_LITE_arvalid,
    M_AXI_LITE_awaddr,
    M_AXI_LITE_awprot,
    M_AXI_LITE_awready,
    M_AXI_LITE_awvalid,
    M_AXI_LITE_bready,
    M_AXI_LITE_bresp,
    M_AXI_LITE_bvalid,
    M_AXI_LITE_rdata,
    M_AXI_LITE_rready,
    M_AXI_LITE_rresp,
    M_AXI_LITE_rvalid,
    M_AXI_LITE_wdata,
    M_AXI_LITE_wready,
    M_AXI_LITE_wstrb,
    M_AXI_LITE_wvalid,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    aclk,
    aresetn,
    pci_express_x8_rxn,
    pci_express_x8_rxp,
    pci_express_x8_txn,
    pci_express_x8_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output [31:0]M_AXI_LITE_araddr;
  output [2:0]M_AXI_LITE_arprot;
  input M_AXI_LITE_arready;
  output M_AXI_LITE_arvalid;
  output [31:0]M_AXI_LITE_awaddr;
  output [2:0]M_AXI_LITE_awprot;
  input M_AXI_LITE_awready;
  output M_AXI_LITE_awvalid;
  output M_AXI_LITE_bready;
  input [1:0]M_AXI_LITE_bresp;
  input M_AXI_LITE_bvalid;
  input [31:0]M_AXI_LITE_rdata;
  output M_AXI_LITE_rready;
  input [1:0]M_AXI_LITE_rresp;
  input M_AXI_LITE_rvalid;
  output [31:0]M_AXI_LITE_wdata;
  input M_AXI_LITE_wready;
  output [3:0]M_AXI_LITE_wstrb;
  output M_AXI_LITE_wvalid;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [31:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [31:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [63:0]M_AXI_wuser;
  output M_AXI_wvalid;
  output aclk;
  output aresetn;
  input [15:0]pci_express_x8_rxn;
  input [15:0]pci_express_x8_rxp;
  output [15:0]pci_express_x8_txn;
  output [15:0]pci_express_x8_txp;
  input pcie_perstn;
  input pcie_refclk_clk_n;
  input pcie_refclk_clk_p;

  wire [63:0]QDMA_M_AXI_ARADDR;
  wire [1:0]QDMA_M_AXI_ARBURST;
  wire [3:0]QDMA_M_AXI_ARCACHE;
  wire [3:0]QDMA_M_AXI_ARID;
  wire [7:0]QDMA_M_AXI_ARLEN;
  wire QDMA_M_AXI_ARLOCK;
  wire [2:0]QDMA_M_AXI_ARPROT;
  wire QDMA_M_AXI_ARREADY;
  wire [2:0]QDMA_M_AXI_ARSIZE;
  wire [31:0]QDMA_M_AXI_ARUSER;
  wire QDMA_M_AXI_ARVALID;
  wire [63:0]QDMA_M_AXI_AWADDR;
  wire [1:0]QDMA_M_AXI_AWBURST;
  wire [3:0]QDMA_M_AXI_AWCACHE;
  wire [3:0]QDMA_M_AXI_AWID;
  wire [7:0]QDMA_M_AXI_AWLEN;
  wire QDMA_M_AXI_AWLOCK;
  wire [2:0]QDMA_M_AXI_AWPROT;
  wire QDMA_M_AXI_AWREADY;
  wire [2:0]QDMA_M_AXI_AWSIZE;
  wire [31:0]QDMA_M_AXI_AWUSER;
  wire QDMA_M_AXI_AWVALID;
  wire [3:0]QDMA_M_AXI_BID;
  wire QDMA_M_AXI_BREADY;
  wire [1:0]QDMA_M_AXI_BRESP;
  wire QDMA_M_AXI_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_ARADDR;
  wire [2:0]QDMA_M_AXI_LITE_ARPROT;
  wire QDMA_M_AXI_LITE_ARREADY;
  wire QDMA_M_AXI_LITE_ARVALID;
  wire [31:0]QDMA_M_AXI_LITE_AWADDR;
  wire [2:0]QDMA_M_AXI_LITE_AWPROT;
  wire QDMA_M_AXI_LITE_AWREADY;
  wire QDMA_M_AXI_LITE_AWVALID;
  wire QDMA_M_AXI_LITE_BREADY;
  wire [1:0]QDMA_M_AXI_LITE_BRESP;
  wire QDMA_M_AXI_LITE_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_RDATA;
  wire QDMA_M_AXI_LITE_RREADY;
  wire [1:0]QDMA_M_AXI_LITE_RRESP;
  wire QDMA_M_AXI_LITE_RVALID;
  wire [31:0]QDMA_M_AXI_LITE_WDATA;
  wire QDMA_M_AXI_LITE_WREADY;
  wire [3:0]QDMA_M_AXI_LITE_WSTRB;
  wire QDMA_M_AXI_LITE_WVALID;
  wire [511:0]QDMA_M_AXI_RDATA;
  wire [3:0]QDMA_M_AXI_RID;
  wire QDMA_M_AXI_RLAST;
  wire QDMA_M_AXI_RREADY;
  wire [1:0]QDMA_M_AXI_RRESP;
  wire QDMA_M_AXI_RVALID;
  wire [511:0]QDMA_M_AXI_WDATA;
  wire QDMA_M_AXI_WLAST;
  wire QDMA_M_AXI_WREADY;
  wire [63:0]QDMA_M_AXI_WSTRB;
  wire [63:0]QDMA_M_AXI_WUSER;
  wire QDMA_M_AXI_WVALID;
  wire QDMA_axi_aclk;
  wire QDMA_axi_aresetn;
  wire [15:0]QDMA_pcie_mgt_rxn;
  wire [15:0]QDMA_pcie_mgt_rxp;
  wire [15:0]QDMA_pcie_mgt_txn;
  wire [15:0]QDMA_pcie_mgt_txp;
  wire [0:0]const_1_dout;
  wire pcie_perstn_1;
  wire pcie_refclk_1_CLK_N;
  wire pcie_refclk_1_CLK_P;
  wire [0:0]util_ds_buf_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_IBUF_OUT;

  assign M_AXI_LITE_araddr[31:0] = QDMA_M_AXI_LITE_ARADDR;
  assign M_AXI_LITE_arprot[2:0] = QDMA_M_AXI_LITE_ARPROT;
  assign M_AXI_LITE_arvalid = QDMA_M_AXI_LITE_ARVALID;
  assign M_AXI_LITE_awaddr[31:0] = QDMA_M_AXI_LITE_AWADDR;
  assign M_AXI_LITE_awprot[2:0] = QDMA_M_AXI_LITE_AWPROT;
  assign M_AXI_LITE_awvalid = QDMA_M_AXI_LITE_AWVALID;
  assign M_AXI_LITE_bready = QDMA_M_AXI_LITE_BREADY;
  assign M_AXI_LITE_rready = QDMA_M_AXI_LITE_RREADY;
  assign M_AXI_LITE_wdata[31:0] = QDMA_M_AXI_LITE_WDATA;
  assign M_AXI_LITE_wstrb[3:0] = QDMA_M_AXI_LITE_WSTRB;
  assign M_AXI_LITE_wvalid = QDMA_M_AXI_LITE_WVALID;
  assign M_AXI_araddr[63:0] = QDMA_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = QDMA_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = QDMA_M_AXI_ARCACHE;
  assign M_AXI_arid[3:0] = QDMA_M_AXI_ARID;
  assign M_AXI_arlen[7:0] = QDMA_M_AXI_ARLEN;
  assign M_AXI_arlock[0] = QDMA_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = QDMA_M_AXI_ARPROT;
  assign M_AXI_arsize[2:0] = QDMA_M_AXI_ARSIZE;
  assign M_AXI_aruser[31:0] = QDMA_M_AXI_ARUSER;
  assign M_AXI_arvalid = QDMA_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = QDMA_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = QDMA_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = QDMA_M_AXI_AWCACHE;
  assign M_AXI_awid[3:0] = QDMA_M_AXI_AWID;
  assign M_AXI_awlen[7:0] = QDMA_M_AXI_AWLEN;
  assign M_AXI_awlock[0] = QDMA_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = QDMA_M_AXI_AWPROT;
  assign M_AXI_awsize[2:0] = QDMA_M_AXI_AWSIZE;
  assign M_AXI_awuser[31:0] = QDMA_M_AXI_AWUSER;
  assign M_AXI_awvalid = QDMA_M_AXI_AWVALID;
  assign M_AXI_bready = QDMA_M_AXI_BREADY;
  assign M_AXI_rready = QDMA_M_AXI_RREADY;
  assign M_AXI_wdata[511:0] = QDMA_M_AXI_WDATA;
  assign M_AXI_wlast = QDMA_M_AXI_WLAST;
  assign M_AXI_wstrb[63:0] = QDMA_M_AXI_WSTRB;
  assign M_AXI_wuser[63:0] = QDMA_M_AXI_WUSER;
  assign M_AXI_wvalid = QDMA_M_AXI_WVALID;
  assign QDMA_M_AXI_ARREADY = M_AXI_arready;
  assign QDMA_M_AXI_AWREADY = M_AXI_awready;
  assign QDMA_M_AXI_BID = M_AXI_bid[3:0];
  assign QDMA_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign QDMA_M_AXI_BVALID = M_AXI_bvalid;
  assign QDMA_M_AXI_LITE_ARREADY = M_AXI_LITE_arready;
  assign QDMA_M_AXI_LITE_AWREADY = M_AXI_LITE_awready;
  assign QDMA_M_AXI_LITE_BRESP = M_AXI_LITE_bresp[1:0];
  assign QDMA_M_AXI_LITE_BVALID = M_AXI_LITE_bvalid;
  assign QDMA_M_AXI_LITE_RDATA = M_AXI_LITE_rdata[31:0];
  assign QDMA_M_AXI_LITE_RRESP = M_AXI_LITE_rresp[1:0];
  assign QDMA_M_AXI_LITE_RVALID = M_AXI_LITE_rvalid;
  assign QDMA_M_AXI_LITE_WREADY = M_AXI_LITE_wready;
  assign QDMA_M_AXI_RDATA = M_AXI_rdata[511:0];
  assign QDMA_M_AXI_RID = M_AXI_rid[3:0];
  assign QDMA_M_AXI_RLAST = M_AXI_rlast;
  assign QDMA_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign QDMA_M_AXI_RVALID = M_AXI_rvalid;
  assign QDMA_M_AXI_WREADY = M_AXI_wready;
  assign QDMA_pcie_mgt_rxn = pci_express_x8_rxn[15:0];
  assign QDMA_pcie_mgt_rxp = pci_express_x8_rxp[15:0];
  assign aclk = QDMA_axi_aclk;
  assign aresetn = QDMA_axi_aresetn;
  assign pci_express_x8_txn[15:0] = QDMA_pcie_mgt_txn;
  assign pci_express_x8_txp[15:0] = QDMA_pcie_mgt_txp;
  assign pcie_perstn_1 = pcie_perstn;
  assign pcie_refclk_1_CLK_N = pcie_refclk_clk_n;
  assign pcie_refclk_1_CLK_P = pcie_refclk_clk_p;
  matmul_design_QDMA_0 QDMA
       (.axi_aclk(QDMA_axi_aclk),
        .axi_aresetn(QDMA_axi_aresetn),
        .dsc_crdt_in_crdt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dsc_crdt_in_dir(1'b0),
        .dsc_crdt_in_fence(1'b0),
        .dsc_crdt_in_qid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dsc_crdt_in_vld(1'b0),
        .m_axi_araddr(QDMA_M_AXI_ARADDR),
        .m_axi_arburst(QDMA_M_AXI_ARBURST),
        .m_axi_arcache(QDMA_M_AXI_ARCACHE),
        .m_axi_arid(QDMA_M_AXI_ARID),
        .m_axi_arlen(QDMA_M_AXI_ARLEN),
        .m_axi_arlock(QDMA_M_AXI_ARLOCK),
        .m_axi_arprot(QDMA_M_AXI_ARPROT),
        .m_axi_arready(QDMA_M_AXI_ARREADY),
        .m_axi_arsize(QDMA_M_AXI_ARSIZE),
        .m_axi_aruser(QDMA_M_AXI_ARUSER),
        .m_axi_arvalid(QDMA_M_AXI_ARVALID),
        .m_axi_awaddr(QDMA_M_AXI_AWADDR),
        .m_axi_awburst(QDMA_M_AXI_AWBURST),
        .m_axi_awcache(QDMA_M_AXI_AWCACHE),
        .m_axi_awid(QDMA_M_AXI_AWID),
        .m_axi_awlen(QDMA_M_AXI_AWLEN),
        .m_axi_awlock(QDMA_M_AXI_AWLOCK),
        .m_axi_awprot(QDMA_M_AXI_AWPROT),
        .m_axi_awready(QDMA_M_AXI_AWREADY),
        .m_axi_awsize(QDMA_M_AXI_AWSIZE),
        .m_axi_awuser(QDMA_M_AXI_AWUSER),
        .m_axi_awvalid(QDMA_M_AXI_AWVALID),
        .m_axi_bid(QDMA_M_AXI_BID),
        .m_axi_bready(QDMA_M_AXI_BREADY),
        .m_axi_bresp(QDMA_M_AXI_BRESP),
        .m_axi_bvalid(QDMA_M_AXI_BVALID),
        .m_axi_rdata(QDMA_M_AXI_RDATA),
        .m_axi_rid(QDMA_M_AXI_RID),
        .m_axi_rlast(QDMA_M_AXI_RLAST),
        .m_axi_rready(QDMA_M_AXI_RREADY),
        .m_axi_rresp(QDMA_M_AXI_RRESP),
        .m_axi_rvalid(QDMA_M_AXI_RVALID),
        .m_axi_wdata(QDMA_M_AXI_WDATA),
        .m_axi_wlast(QDMA_M_AXI_WLAST),
        .m_axi_wready(QDMA_M_AXI_WREADY),
        .m_axi_wstrb(QDMA_M_AXI_WSTRB),
        .m_axi_wuser(QDMA_M_AXI_WUSER),
        .m_axi_wvalid(QDMA_M_AXI_WVALID),
        .m_axil_araddr(QDMA_M_AXI_LITE_ARADDR),
        .m_axil_arprot(QDMA_M_AXI_LITE_ARPROT),
        .m_axil_arready(QDMA_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(QDMA_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(QDMA_M_AXI_LITE_AWADDR),
        .m_axil_awprot(QDMA_M_AXI_LITE_AWPROT),
        .m_axil_awready(QDMA_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(QDMA_M_AXI_LITE_AWVALID),
        .m_axil_bready(QDMA_M_AXI_LITE_BREADY),
        .m_axil_bresp(QDMA_M_AXI_LITE_BRESP),
        .m_axil_bvalid(QDMA_M_AXI_LITE_BVALID),
        .m_axil_rdata(QDMA_M_AXI_LITE_RDATA),
        .m_axil_rready(QDMA_M_AXI_LITE_RREADY),
        .m_axil_rresp(QDMA_M_AXI_LITE_RRESP),
        .m_axil_rvalid(QDMA_M_AXI_LITE_RVALID),
        .m_axil_wdata(QDMA_M_AXI_LITE_WDATA),
        .m_axil_wready(QDMA_M_AXI_LITE_WREADY),
        .m_axil_wstrb(QDMA_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(QDMA_M_AXI_LITE_WVALID),
        .pci_exp_rxn(QDMA_pcie_mgt_rxn),
        .pci_exp_rxp(QDMA_pcie_mgt_rxp),
        .pci_exp_txn(QDMA_pcie_mgt_txn),
        .pci_exp_txp(QDMA_pcie_mgt_txp),
        .qsts_out_rdy(1'b0),
        .soft_reset_n(pcie_perstn_1),
        .sys_clk(util_ds_buf_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_IBUF_OUT),
        .sys_rst_n(pcie_perstn_1),
        .tm_dsc_sts_rdy(const_1_dout),
        .usr_flr_done_fnc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .usr_flr_done_vld(1'b0),
        .usr_irq_in_fnc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .usr_irq_in_vec({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .usr_irq_in_vld(1'b0));
  matmul_design_const_1_0 const_1
       (.dout(const_1_dout));
  matmul_design_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_N(pcie_refclk_1_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_IBUF_DS_ODIV2),
        .IBUF_DS_P(pcie_refclk_1_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
endmodule

module bridge_to_host_imp_FTMBBB
   (DDR_0_SDRAM_act_n,
    DDR_0_SDRAM_adr,
    DDR_0_SDRAM_ba,
    DDR_0_SDRAM_bg,
    DDR_0_SDRAM_ck_c,
    DDR_0_SDRAM_ck_t,
    DDR_0_SDRAM_cke,
    DDR_0_SDRAM_cs_n,
    DDR_0_SDRAM_dq,
    DDR_0_SDRAM_dqs_c,
    DDR_0_SDRAM_dqs_t,
    DDR_0_SDRAM_odt,
    DDR_0_SDRAM_par,
    DDR_0_SDRAM_reset_n,
    DDR_0_SYS_CLK_clk_n,
    DDR_0_SYS_CLK_clk_p,
    DDR_0_S_AXI_araddr,
    DDR_0_S_AXI_arburst,
    DDR_0_S_AXI_arcache,
    DDR_0_S_AXI_arid,
    DDR_0_S_AXI_arlen,
    DDR_0_S_AXI_arlock,
    DDR_0_S_AXI_arprot,
    DDR_0_S_AXI_arqos,
    DDR_0_S_AXI_arready,
    DDR_0_S_AXI_arregion,
    DDR_0_S_AXI_arsize,
    DDR_0_S_AXI_aruser,
    DDR_0_S_AXI_arvalid,
    DDR_0_S_AXI_awaddr,
    DDR_0_S_AXI_awburst,
    DDR_0_S_AXI_awcache,
    DDR_0_S_AXI_awid,
    DDR_0_S_AXI_awlen,
    DDR_0_S_AXI_awlock,
    DDR_0_S_AXI_awprot,
    DDR_0_S_AXI_awqos,
    DDR_0_S_AXI_awready,
    DDR_0_S_AXI_awregion,
    DDR_0_S_AXI_awsize,
    DDR_0_S_AXI_awuser,
    DDR_0_S_AXI_awvalid,
    DDR_0_S_AXI_bid,
    DDR_0_S_AXI_bready,
    DDR_0_S_AXI_bresp,
    DDR_0_S_AXI_bvalid,
    DDR_0_S_AXI_rdata,
    DDR_0_S_AXI_rid,
    DDR_0_S_AXI_rlast,
    DDR_0_S_AXI_rready,
    DDR_0_S_AXI_rresp,
    DDR_0_S_AXI_rvalid,
    DDR_0_S_AXI_wdata,
    DDR_0_S_AXI_wlast,
    DDR_0_S_AXI_wready,
    DDR_0_S_AXI_wstrb,
    DDR_0_S_AXI_wuser,
    DDR_0_S_AXI_wvalid,
    DDR_0_peripheral_aresetn,
    DDR_1_SDRAM_act_n,
    DDR_1_SDRAM_adr,
    DDR_1_SDRAM_ba,
    DDR_1_SDRAM_bg,
    DDR_1_SDRAM_ck_c,
    DDR_1_SDRAM_ck_t,
    DDR_1_SDRAM_cke,
    DDR_1_SDRAM_cs_n,
    DDR_1_SDRAM_dq,
    DDR_1_SDRAM_dqs_c,
    DDR_1_SDRAM_dqs_t,
    DDR_1_SDRAM_odt,
    DDR_1_SDRAM_par,
    DDR_1_SDRAM_reset_n,
    DDR_1_SYS_CLK_clk_n,
    DDR_1_SYS_CLK_clk_p,
    DDR_1_S_AXI_araddr,
    DDR_1_S_AXI_arburst,
    DDR_1_S_AXI_arcache,
    DDR_1_S_AXI_arid,
    DDR_1_S_AXI_arlen,
    DDR_1_S_AXI_arlock,
    DDR_1_S_AXI_arprot,
    DDR_1_S_AXI_arqos,
    DDR_1_S_AXI_arready,
    DDR_1_S_AXI_arregion,
    DDR_1_S_AXI_arsize,
    DDR_1_S_AXI_aruser,
    DDR_1_S_AXI_arvalid,
    DDR_1_S_AXI_awaddr,
    DDR_1_S_AXI_awburst,
    DDR_1_S_AXI_awcache,
    DDR_1_S_AXI_awid,
    DDR_1_S_AXI_awlen,
    DDR_1_S_AXI_awlock,
    DDR_1_S_AXI_awprot,
    DDR_1_S_AXI_awqos,
    DDR_1_S_AXI_awready,
    DDR_1_S_AXI_awregion,
    DDR_1_S_AXI_awsize,
    DDR_1_S_AXI_awuser,
    DDR_1_S_AXI_awvalid,
    DDR_1_S_AXI_bid,
    DDR_1_S_AXI_bready,
    DDR_1_S_AXI_bresp,
    DDR_1_S_AXI_bvalid,
    DDR_1_S_AXI_rdata,
    DDR_1_S_AXI_rid,
    DDR_1_S_AXI_rlast,
    DDR_1_S_AXI_rready,
    DDR_1_S_AXI_rresp,
    DDR_1_S_AXI_rvalid,
    DDR_1_S_AXI_wdata,
    DDR_1_S_AXI_wlast,
    DDR_1_S_AXI_wready,
    DDR_1_S_AXI_wstrb,
    DDR_1_S_AXI_wuser,
    DDR_1_S_AXI_wvalid,
    DDR_1_peripheral_aresetn,
    DDR_1_ui_clk,
    M_AXI_LITE_araddr,
    M_AXI_LITE_arprot,
    M_AXI_LITE_arready,
    M_AXI_LITE_arvalid,
    M_AXI_LITE_awaddr,
    M_AXI_LITE_awprot,
    M_AXI_LITE_awready,
    M_AXI_LITE_awvalid,
    M_AXI_LITE_bready,
    M_AXI_LITE_bresp,
    M_AXI_LITE_bvalid,
    M_AXI_LITE_rdata,
    M_AXI_LITE_rready,
    M_AXI_LITE_rresp,
    M_AXI_LITE_rvalid,
    M_AXI_LITE_wdata,
    M_AXI_LITE_wready,
    M_AXI_LITE_wstrb,
    M_AXI_LITE_wvalid,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    aclk,
    aresetn,
    clk_app,
    clk_app_rstn,
    pci_express_x8_rxn,
    pci_express_x8_rxp,
    pci_express_x8_txn,
    pci_express_x8_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    ui_clk);
  output DDR_0_SDRAM_act_n;
  output [16:0]DDR_0_SDRAM_adr;
  output [1:0]DDR_0_SDRAM_ba;
  output [1:0]DDR_0_SDRAM_bg;
  output DDR_0_SDRAM_ck_c;
  output DDR_0_SDRAM_ck_t;
  output DDR_0_SDRAM_cke;
  output DDR_0_SDRAM_cs_n;
  inout [71:0]DDR_0_SDRAM_dq;
  inout [17:0]DDR_0_SDRAM_dqs_c;
  inout [17:0]DDR_0_SDRAM_dqs_t;
  output DDR_0_SDRAM_odt;
  output DDR_0_SDRAM_par;
  output DDR_0_SDRAM_reset_n;
  input DDR_0_SYS_CLK_clk_n;
  input DDR_0_SYS_CLK_clk_p;
  input [33:0]DDR_0_S_AXI_araddr;
  input [1:0]DDR_0_S_AXI_arburst;
  input [3:0]DDR_0_S_AXI_arcache;
  input [6:0]DDR_0_S_AXI_arid;
  input [7:0]DDR_0_S_AXI_arlen;
  input [0:0]DDR_0_S_AXI_arlock;
  input [2:0]DDR_0_S_AXI_arprot;
  input [3:0]DDR_0_S_AXI_arqos;
  output DDR_0_S_AXI_arready;
  input [3:0]DDR_0_S_AXI_arregion;
  input [2:0]DDR_0_S_AXI_arsize;
  input [31:0]DDR_0_S_AXI_aruser;
  input DDR_0_S_AXI_arvalid;
  input [33:0]DDR_0_S_AXI_awaddr;
  input [1:0]DDR_0_S_AXI_awburst;
  input [3:0]DDR_0_S_AXI_awcache;
  input [6:0]DDR_0_S_AXI_awid;
  input [7:0]DDR_0_S_AXI_awlen;
  input [0:0]DDR_0_S_AXI_awlock;
  input [2:0]DDR_0_S_AXI_awprot;
  input [3:0]DDR_0_S_AXI_awqos;
  output DDR_0_S_AXI_awready;
  input [3:0]DDR_0_S_AXI_awregion;
  input [2:0]DDR_0_S_AXI_awsize;
  input [31:0]DDR_0_S_AXI_awuser;
  input DDR_0_S_AXI_awvalid;
  output [6:0]DDR_0_S_AXI_bid;
  input DDR_0_S_AXI_bready;
  output [1:0]DDR_0_S_AXI_bresp;
  output DDR_0_S_AXI_bvalid;
  output [511:0]DDR_0_S_AXI_rdata;
  output [6:0]DDR_0_S_AXI_rid;
  output DDR_0_S_AXI_rlast;
  input DDR_0_S_AXI_rready;
  output [1:0]DDR_0_S_AXI_rresp;
  output DDR_0_S_AXI_rvalid;
  input [511:0]DDR_0_S_AXI_wdata;
  input DDR_0_S_AXI_wlast;
  output DDR_0_S_AXI_wready;
  input [63:0]DDR_0_S_AXI_wstrb;
  input [63:0]DDR_0_S_AXI_wuser;
  input DDR_0_S_AXI_wvalid;
  output [0:0]DDR_0_peripheral_aresetn;
  output DDR_1_SDRAM_act_n;
  output [16:0]DDR_1_SDRAM_adr;
  output [1:0]DDR_1_SDRAM_ba;
  output [1:0]DDR_1_SDRAM_bg;
  output DDR_1_SDRAM_ck_c;
  output DDR_1_SDRAM_ck_t;
  output DDR_1_SDRAM_cke;
  output DDR_1_SDRAM_cs_n;
  inout [71:0]DDR_1_SDRAM_dq;
  inout [17:0]DDR_1_SDRAM_dqs_c;
  inout [17:0]DDR_1_SDRAM_dqs_t;
  output DDR_1_SDRAM_odt;
  output DDR_1_SDRAM_par;
  output DDR_1_SDRAM_reset_n;
  input DDR_1_SYS_CLK_clk_n;
  input DDR_1_SYS_CLK_clk_p;
  input [33:0]DDR_1_S_AXI_araddr;
  input [1:0]DDR_1_S_AXI_arburst;
  input [3:0]DDR_1_S_AXI_arcache;
  input [6:0]DDR_1_S_AXI_arid;
  input [7:0]DDR_1_S_AXI_arlen;
  input [0:0]DDR_1_S_AXI_arlock;
  input [2:0]DDR_1_S_AXI_arprot;
  input [3:0]DDR_1_S_AXI_arqos;
  output DDR_1_S_AXI_arready;
  input [3:0]DDR_1_S_AXI_arregion;
  input [2:0]DDR_1_S_AXI_arsize;
  input [31:0]DDR_1_S_AXI_aruser;
  input DDR_1_S_AXI_arvalid;
  input [33:0]DDR_1_S_AXI_awaddr;
  input [1:0]DDR_1_S_AXI_awburst;
  input [3:0]DDR_1_S_AXI_awcache;
  input [6:0]DDR_1_S_AXI_awid;
  input [7:0]DDR_1_S_AXI_awlen;
  input [0:0]DDR_1_S_AXI_awlock;
  input [2:0]DDR_1_S_AXI_awprot;
  input [3:0]DDR_1_S_AXI_awqos;
  output DDR_1_S_AXI_awready;
  input [3:0]DDR_1_S_AXI_awregion;
  input [2:0]DDR_1_S_AXI_awsize;
  input [31:0]DDR_1_S_AXI_awuser;
  input DDR_1_S_AXI_awvalid;
  output [6:0]DDR_1_S_AXI_bid;
  input DDR_1_S_AXI_bready;
  output [1:0]DDR_1_S_AXI_bresp;
  output DDR_1_S_AXI_bvalid;
  output [511:0]DDR_1_S_AXI_rdata;
  output [6:0]DDR_1_S_AXI_rid;
  output DDR_1_S_AXI_rlast;
  input DDR_1_S_AXI_rready;
  output [1:0]DDR_1_S_AXI_rresp;
  output DDR_1_S_AXI_rvalid;
  input [511:0]DDR_1_S_AXI_wdata;
  input DDR_1_S_AXI_wlast;
  output DDR_1_S_AXI_wready;
  input [63:0]DDR_1_S_AXI_wstrb;
  input [63:0]DDR_1_S_AXI_wuser;
  input DDR_1_S_AXI_wvalid;
  output [0:0]DDR_1_peripheral_aresetn;
  output DDR_1_ui_clk;
  output [31:0]M_AXI_LITE_araddr;
  output [2:0]M_AXI_LITE_arprot;
  input M_AXI_LITE_arready;
  output M_AXI_LITE_arvalid;
  output [31:0]M_AXI_LITE_awaddr;
  output [2:0]M_AXI_LITE_awprot;
  input M_AXI_LITE_awready;
  output M_AXI_LITE_awvalid;
  output M_AXI_LITE_bready;
  input [1:0]M_AXI_LITE_bresp;
  input M_AXI_LITE_bvalid;
  input [31:0]M_AXI_LITE_rdata;
  output M_AXI_LITE_rready;
  input [1:0]M_AXI_LITE_rresp;
  input M_AXI_LITE_rvalid;
  output [31:0]M_AXI_LITE_wdata;
  input M_AXI_LITE_wready;
  output [3:0]M_AXI_LITE_wstrb;
  output M_AXI_LITE_wvalid;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [31:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [31:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [63:0]M_AXI_wuser;
  output M_AXI_wvalid;
  output aclk;
  output aresetn;
  input clk_app;
  input clk_app_rstn;
  input [15:0]pci_express_x8_rxn;
  input [15:0]pci_express_x8_rxp;
  output [15:0]pci_express_x8_txn;
  output [15:0]pci_express_x8_txp;
  input pcie_perstn;
  input pcie_refclk_clk_n;
  input pcie_refclk_clk_p;
  output ui_clk;

  wire DDR_0_SYS_CLK_1_CLK_N;
  wire DDR_0_SYS_CLK_1_CLK_P;
  wire [33:0]DDR_0_S_AXI_1_ARADDR;
  wire [1:0]DDR_0_S_AXI_1_ARBURST;
  wire [3:0]DDR_0_S_AXI_1_ARCACHE;
  wire [6:0]DDR_0_S_AXI_1_ARID;
  wire [7:0]DDR_0_S_AXI_1_ARLEN;
  wire [0:0]DDR_0_S_AXI_1_ARLOCK;
  wire [2:0]DDR_0_S_AXI_1_ARPROT;
  wire [3:0]DDR_0_S_AXI_1_ARQOS;
  wire DDR_0_S_AXI_1_ARREADY;
  wire [3:0]DDR_0_S_AXI_1_ARREGION;
  wire [2:0]DDR_0_S_AXI_1_ARSIZE;
  wire [31:0]DDR_0_S_AXI_1_ARUSER;
  wire DDR_0_S_AXI_1_ARVALID;
  wire [33:0]DDR_0_S_AXI_1_AWADDR;
  wire [1:0]DDR_0_S_AXI_1_AWBURST;
  wire [3:0]DDR_0_S_AXI_1_AWCACHE;
  wire [6:0]DDR_0_S_AXI_1_AWID;
  wire [7:0]DDR_0_S_AXI_1_AWLEN;
  wire [0:0]DDR_0_S_AXI_1_AWLOCK;
  wire [2:0]DDR_0_S_AXI_1_AWPROT;
  wire [3:0]DDR_0_S_AXI_1_AWQOS;
  wire DDR_0_S_AXI_1_AWREADY;
  wire [3:0]DDR_0_S_AXI_1_AWREGION;
  wire [2:0]DDR_0_S_AXI_1_AWSIZE;
  wire [31:0]DDR_0_S_AXI_1_AWUSER;
  wire DDR_0_S_AXI_1_AWVALID;
  wire [6:0]DDR_0_S_AXI_1_BID;
  wire DDR_0_S_AXI_1_BREADY;
  wire [1:0]DDR_0_S_AXI_1_BRESP;
  wire DDR_0_S_AXI_1_BVALID;
  wire [511:0]DDR_0_S_AXI_1_RDATA;
  wire [6:0]DDR_0_S_AXI_1_RID;
  wire DDR_0_S_AXI_1_RLAST;
  wire DDR_0_S_AXI_1_RREADY;
  wire [1:0]DDR_0_S_AXI_1_RRESP;
  wire DDR_0_S_AXI_1_RVALID;
  wire [511:0]DDR_0_S_AXI_1_WDATA;
  wire DDR_0_S_AXI_1_WLAST;
  wire DDR_0_S_AXI_1_WREADY;
  wire [63:0]DDR_0_S_AXI_1_WSTRB;
  wire [63:0]DDR_0_S_AXI_1_WUSER;
  wire DDR_0_S_AXI_1_WVALID;
  wire DDR_1_SYS_CLK_1_CLK_N;
  wire DDR_1_SYS_CLK_1_CLK_P;
  wire [33:0]DDR_1_S_AXI_1_ARADDR;
  wire [1:0]DDR_1_S_AXI_1_ARBURST;
  wire [3:0]DDR_1_S_AXI_1_ARCACHE;
  wire [6:0]DDR_1_S_AXI_1_ARID;
  wire [7:0]DDR_1_S_AXI_1_ARLEN;
  wire [0:0]DDR_1_S_AXI_1_ARLOCK;
  wire [2:0]DDR_1_S_AXI_1_ARPROT;
  wire [3:0]DDR_1_S_AXI_1_ARQOS;
  wire DDR_1_S_AXI_1_ARREADY;
  wire [3:0]DDR_1_S_AXI_1_ARREGION;
  wire [2:0]DDR_1_S_AXI_1_ARSIZE;
  wire [31:0]DDR_1_S_AXI_1_ARUSER;
  wire DDR_1_S_AXI_1_ARVALID;
  wire [33:0]DDR_1_S_AXI_1_AWADDR;
  wire [1:0]DDR_1_S_AXI_1_AWBURST;
  wire [3:0]DDR_1_S_AXI_1_AWCACHE;
  wire [6:0]DDR_1_S_AXI_1_AWID;
  wire [7:0]DDR_1_S_AXI_1_AWLEN;
  wire [0:0]DDR_1_S_AXI_1_AWLOCK;
  wire [2:0]DDR_1_S_AXI_1_AWPROT;
  wire [3:0]DDR_1_S_AXI_1_AWQOS;
  wire DDR_1_S_AXI_1_AWREADY;
  wire [3:0]DDR_1_S_AXI_1_AWREGION;
  wire [2:0]DDR_1_S_AXI_1_AWSIZE;
  wire [31:0]DDR_1_S_AXI_1_AWUSER;
  wire DDR_1_S_AXI_1_AWVALID;
  wire [6:0]DDR_1_S_AXI_1_BID;
  wire DDR_1_S_AXI_1_BREADY;
  wire [1:0]DDR_1_S_AXI_1_BRESP;
  wire DDR_1_S_AXI_1_BVALID;
  wire [511:0]DDR_1_S_AXI_1_RDATA;
  wire [6:0]DDR_1_S_AXI_1_RID;
  wire DDR_1_S_AXI_1_RLAST;
  wire DDR_1_S_AXI_1_RREADY;
  wire [1:0]DDR_1_S_AXI_1_RRESP;
  wire DDR_1_S_AXI_1_RVALID;
  wire [511:0]DDR_1_S_AXI_1_WDATA;
  wire DDR_1_S_AXI_1_WLAST;
  wire DDR_1_S_AXI_1_WREADY;
  wire [63:0]DDR_1_S_AXI_1_WSTRB;
  wire [63:0]DDR_1_S_AXI_1_WUSER;
  wire DDR_1_S_AXI_1_WVALID;
  wire [63:0]QDMA_M_AXI_ARADDR;
  wire [1:0]QDMA_M_AXI_ARBURST;
  wire [3:0]QDMA_M_AXI_ARCACHE;
  wire [3:0]QDMA_M_AXI_ARID;
  wire [7:0]QDMA_M_AXI_ARLEN;
  wire [0:0]QDMA_M_AXI_ARLOCK;
  wire [2:0]QDMA_M_AXI_ARPROT;
  wire QDMA_M_AXI_ARREADY;
  wire [2:0]QDMA_M_AXI_ARSIZE;
  wire [31:0]QDMA_M_AXI_ARUSER;
  wire QDMA_M_AXI_ARVALID;
  wire [63:0]QDMA_M_AXI_AWADDR;
  wire [1:0]QDMA_M_AXI_AWBURST;
  wire [3:0]QDMA_M_AXI_AWCACHE;
  wire [3:0]QDMA_M_AXI_AWID;
  wire [7:0]QDMA_M_AXI_AWLEN;
  wire [0:0]QDMA_M_AXI_AWLOCK;
  wire [2:0]QDMA_M_AXI_AWPROT;
  wire QDMA_M_AXI_AWREADY;
  wire [2:0]QDMA_M_AXI_AWSIZE;
  wire [31:0]QDMA_M_AXI_AWUSER;
  wire QDMA_M_AXI_AWVALID;
  wire [3:0]QDMA_M_AXI_BID;
  wire QDMA_M_AXI_BREADY;
  wire [1:0]QDMA_M_AXI_BRESP;
  wire QDMA_M_AXI_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_ARADDR;
  wire [2:0]QDMA_M_AXI_LITE_ARPROT;
  wire QDMA_M_AXI_LITE_ARREADY;
  wire QDMA_M_AXI_LITE_ARVALID;
  wire [31:0]QDMA_M_AXI_LITE_AWADDR;
  wire [2:0]QDMA_M_AXI_LITE_AWPROT;
  wire QDMA_M_AXI_LITE_AWREADY;
  wire QDMA_M_AXI_LITE_AWVALID;
  wire QDMA_M_AXI_LITE_BREADY;
  wire [1:0]QDMA_M_AXI_LITE_BRESP;
  wire QDMA_M_AXI_LITE_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M00_AXI_ARADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_M00_AXI_ARPROT;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_ARREADY;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_ARVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M00_AXI_AWADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_M00_AXI_AWPROT;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_AWREADY;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_AWVALID;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_BREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_M00_AXI_BRESP;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M00_AXI_RDATA;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_RREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_M00_AXI_RRESP;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_RVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M00_AXI_WDATA;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_WREADY;
  wire [3:0]QDMA_M_AXI_LITE_Inter_M00_AXI_WSTRB;
  wire QDMA_M_AXI_LITE_Inter_M00_AXI_WVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M01_AXI_ARADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_M01_AXI_ARPROT;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_ARREADY;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_ARVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M01_AXI_AWADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_M01_AXI_AWPROT;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_AWREADY;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_AWVALID;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_BREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_M01_AXI_BRESP;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M01_AXI_RDATA;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_RREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_M01_AXI_RRESP;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_RVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M01_AXI_WDATA;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_WREADY;
  wire [3:0]QDMA_M_AXI_LITE_Inter_M01_AXI_WSTRB;
  wire QDMA_M_AXI_LITE_Inter_M01_AXI_WVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M02_AXI_ARADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_M02_AXI_ARPROT;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_ARREADY;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_ARVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M02_AXI_AWADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_M02_AXI_AWPROT;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_AWREADY;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_AWVALID;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_BREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_M02_AXI_BRESP;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M02_AXI_RDATA;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_RREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_M02_AXI_RRESP;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_RVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_M02_AXI_WDATA;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_WREADY;
  wire [3:0]QDMA_M_AXI_LITE_Inter_M02_AXI_WSTRB;
  wire QDMA_M_AXI_LITE_Inter_M02_AXI_WVALID;
  wire [31:0]QDMA_M_AXI_LITE_RDATA;
  wire QDMA_M_AXI_LITE_RREADY;
  wire [1:0]QDMA_M_AXI_LITE_RRESP;
  wire QDMA_M_AXI_LITE_RVALID;
  wire [31:0]QDMA_M_AXI_LITE_WDATA;
  wire QDMA_M_AXI_LITE_WREADY;
  wire [3:0]QDMA_M_AXI_LITE_WSTRB;
  wire QDMA_M_AXI_LITE_WVALID;
  wire [511:0]QDMA_M_AXI_RDATA;
  wire [3:0]QDMA_M_AXI_RID;
  wire QDMA_M_AXI_RLAST;
  wire QDMA_M_AXI_RREADY;
  wire [1:0]QDMA_M_AXI_RRESP;
  wire QDMA_M_AXI_RVALID;
  wire [511:0]QDMA_M_AXI_WDATA;
  wire QDMA_M_AXI_WLAST;
  wire QDMA_M_AXI_WREADY;
  wire [63:0]QDMA_M_AXI_WSTRB;
  wire [63:0]QDMA_M_AXI_WUSER;
  wire QDMA_M_AXI_WVALID;
  wire QDMA_aclk;
  wire QDMA_aresetn;
  wire [15:0]QDMA_pci_express_x8_rxn;
  wire [15:0]QDMA_pci_express_x8_rxp;
  wire [15:0]QDMA_pci_express_x8_txn;
  wire [15:0]QDMA_pci_express_x8_txp;
  wire clk_app_1;
  wire clk_app_rstn_1;
  wire memory_DDR_0_SDRAM_ACT_N;
  wire [16:0]memory_DDR_0_SDRAM_ADR;
  wire [1:0]memory_DDR_0_SDRAM_BA;
  wire [1:0]memory_DDR_0_SDRAM_BG;
  wire memory_DDR_0_SDRAM_CKE;
  wire memory_DDR_0_SDRAM_CK_C;
  wire memory_DDR_0_SDRAM_CK_T;
  wire memory_DDR_0_SDRAM_CS_N;
  wire [71:0]memory_DDR_0_SDRAM_DQ;
  wire [17:0]memory_DDR_0_SDRAM_DQS_C;
  wire [17:0]memory_DDR_0_SDRAM_DQS_T;
  wire memory_DDR_0_SDRAM_ODT;
  wire memory_DDR_0_SDRAM_PAR;
  wire memory_DDR_0_SDRAM_RESET_N;
  wire [0:0]memory_DDR_0_peripheral_aresetn;
  wire memory_DDR_0_ui_clk;
  wire memory_DDR_1_SDRAM_ACT_N;
  wire [16:0]memory_DDR_1_SDRAM_ADR;
  wire [1:0]memory_DDR_1_SDRAM_BA;
  wire [1:0]memory_DDR_1_SDRAM_BG;
  wire memory_DDR_1_SDRAM_CKE;
  wire memory_DDR_1_SDRAM_CK_C;
  wire memory_DDR_1_SDRAM_CK_T;
  wire memory_DDR_1_SDRAM_CS_N;
  wire [71:0]memory_DDR_1_SDRAM_DQ;
  wire [17:0]memory_DDR_1_SDRAM_DQS_C;
  wire [17:0]memory_DDR_1_SDRAM_DQS_T;
  wire memory_DDR_1_SDRAM_ODT;
  wire memory_DDR_1_SDRAM_PAR;
  wire memory_DDR_1_SDRAM_RESET_N;
  wire [0:0]memory_DDR_1_peripheral_aresetn;
  wire memory_DDR_1_ui_clk;
  wire pcie_perstn_1;
  wire pcie_refclk_1_CLK_N;
  wire pcie_refclk_1_CLK_P;

  assign DDR_0_SDRAM_act_n = memory_DDR_0_SDRAM_ACT_N;
  assign DDR_0_SDRAM_adr[16:0] = memory_DDR_0_SDRAM_ADR;
  assign DDR_0_SDRAM_ba[1:0] = memory_DDR_0_SDRAM_BA;
  assign DDR_0_SDRAM_bg[1:0] = memory_DDR_0_SDRAM_BG;
  assign DDR_0_SDRAM_ck_c = memory_DDR_0_SDRAM_CK_C;
  assign DDR_0_SDRAM_ck_t = memory_DDR_0_SDRAM_CK_T;
  assign DDR_0_SDRAM_cke = memory_DDR_0_SDRAM_CKE;
  assign DDR_0_SDRAM_cs_n = memory_DDR_0_SDRAM_CS_N;
  assign DDR_0_SDRAM_odt = memory_DDR_0_SDRAM_ODT;
  assign DDR_0_SDRAM_par = memory_DDR_0_SDRAM_PAR;
  assign DDR_0_SDRAM_reset_n = memory_DDR_0_SDRAM_RESET_N;
  assign DDR_0_SYS_CLK_1_CLK_N = DDR_0_SYS_CLK_clk_n;
  assign DDR_0_SYS_CLK_1_CLK_P = DDR_0_SYS_CLK_clk_p;
  assign DDR_0_S_AXI_1_ARADDR = DDR_0_S_AXI_araddr[33:0];
  assign DDR_0_S_AXI_1_ARBURST = DDR_0_S_AXI_arburst[1:0];
  assign DDR_0_S_AXI_1_ARCACHE = DDR_0_S_AXI_arcache[3:0];
  assign DDR_0_S_AXI_1_ARID = DDR_0_S_AXI_arid[6:0];
  assign DDR_0_S_AXI_1_ARLEN = DDR_0_S_AXI_arlen[7:0];
  assign DDR_0_S_AXI_1_ARLOCK = DDR_0_S_AXI_arlock[0];
  assign DDR_0_S_AXI_1_ARPROT = DDR_0_S_AXI_arprot[2:0];
  assign DDR_0_S_AXI_1_ARQOS = DDR_0_S_AXI_arqos[3:0];
  assign DDR_0_S_AXI_1_ARREGION = DDR_0_S_AXI_arregion[3:0];
  assign DDR_0_S_AXI_1_ARSIZE = DDR_0_S_AXI_arsize[2:0];
  assign DDR_0_S_AXI_1_ARUSER = DDR_0_S_AXI_aruser[31:0];
  assign DDR_0_S_AXI_1_ARVALID = DDR_0_S_AXI_arvalid;
  assign DDR_0_S_AXI_1_AWADDR = DDR_0_S_AXI_awaddr[33:0];
  assign DDR_0_S_AXI_1_AWBURST = DDR_0_S_AXI_awburst[1:0];
  assign DDR_0_S_AXI_1_AWCACHE = DDR_0_S_AXI_awcache[3:0];
  assign DDR_0_S_AXI_1_AWID = DDR_0_S_AXI_awid[6:0];
  assign DDR_0_S_AXI_1_AWLEN = DDR_0_S_AXI_awlen[7:0];
  assign DDR_0_S_AXI_1_AWLOCK = DDR_0_S_AXI_awlock[0];
  assign DDR_0_S_AXI_1_AWPROT = DDR_0_S_AXI_awprot[2:0];
  assign DDR_0_S_AXI_1_AWQOS = DDR_0_S_AXI_awqos[3:0];
  assign DDR_0_S_AXI_1_AWREGION = DDR_0_S_AXI_awregion[3:0];
  assign DDR_0_S_AXI_1_AWSIZE = DDR_0_S_AXI_awsize[2:0];
  assign DDR_0_S_AXI_1_AWUSER = DDR_0_S_AXI_awuser[31:0];
  assign DDR_0_S_AXI_1_AWVALID = DDR_0_S_AXI_awvalid;
  assign DDR_0_S_AXI_1_BREADY = DDR_0_S_AXI_bready;
  assign DDR_0_S_AXI_1_RREADY = DDR_0_S_AXI_rready;
  assign DDR_0_S_AXI_1_WDATA = DDR_0_S_AXI_wdata[511:0];
  assign DDR_0_S_AXI_1_WLAST = DDR_0_S_AXI_wlast;
  assign DDR_0_S_AXI_1_WSTRB = DDR_0_S_AXI_wstrb[63:0];
  assign DDR_0_S_AXI_1_WUSER = DDR_0_S_AXI_wuser[63:0];
  assign DDR_0_S_AXI_1_WVALID = DDR_0_S_AXI_wvalid;
  assign DDR_0_S_AXI_arready = DDR_0_S_AXI_1_ARREADY;
  assign DDR_0_S_AXI_awready = DDR_0_S_AXI_1_AWREADY;
  assign DDR_0_S_AXI_bid[6:0] = DDR_0_S_AXI_1_BID;
  assign DDR_0_S_AXI_bresp[1:0] = DDR_0_S_AXI_1_BRESP;
  assign DDR_0_S_AXI_bvalid = DDR_0_S_AXI_1_BVALID;
  assign DDR_0_S_AXI_rdata[511:0] = DDR_0_S_AXI_1_RDATA;
  assign DDR_0_S_AXI_rid[6:0] = DDR_0_S_AXI_1_RID;
  assign DDR_0_S_AXI_rlast = DDR_0_S_AXI_1_RLAST;
  assign DDR_0_S_AXI_rresp[1:0] = DDR_0_S_AXI_1_RRESP;
  assign DDR_0_S_AXI_rvalid = DDR_0_S_AXI_1_RVALID;
  assign DDR_0_S_AXI_wready = DDR_0_S_AXI_1_WREADY;
  assign DDR_0_peripheral_aresetn[0] = memory_DDR_0_peripheral_aresetn;
  assign DDR_1_SDRAM_act_n = memory_DDR_1_SDRAM_ACT_N;
  assign DDR_1_SDRAM_adr[16:0] = memory_DDR_1_SDRAM_ADR;
  assign DDR_1_SDRAM_ba[1:0] = memory_DDR_1_SDRAM_BA;
  assign DDR_1_SDRAM_bg[1:0] = memory_DDR_1_SDRAM_BG;
  assign DDR_1_SDRAM_ck_c = memory_DDR_1_SDRAM_CK_C;
  assign DDR_1_SDRAM_ck_t = memory_DDR_1_SDRAM_CK_T;
  assign DDR_1_SDRAM_cke = memory_DDR_1_SDRAM_CKE;
  assign DDR_1_SDRAM_cs_n = memory_DDR_1_SDRAM_CS_N;
  assign DDR_1_SDRAM_odt = memory_DDR_1_SDRAM_ODT;
  assign DDR_1_SDRAM_par = memory_DDR_1_SDRAM_PAR;
  assign DDR_1_SDRAM_reset_n = memory_DDR_1_SDRAM_RESET_N;
  assign DDR_1_SYS_CLK_1_CLK_N = DDR_1_SYS_CLK_clk_n;
  assign DDR_1_SYS_CLK_1_CLK_P = DDR_1_SYS_CLK_clk_p;
  assign DDR_1_S_AXI_1_ARADDR = DDR_1_S_AXI_araddr[33:0];
  assign DDR_1_S_AXI_1_ARBURST = DDR_1_S_AXI_arburst[1:0];
  assign DDR_1_S_AXI_1_ARCACHE = DDR_1_S_AXI_arcache[3:0];
  assign DDR_1_S_AXI_1_ARID = DDR_1_S_AXI_arid[6:0];
  assign DDR_1_S_AXI_1_ARLEN = DDR_1_S_AXI_arlen[7:0];
  assign DDR_1_S_AXI_1_ARLOCK = DDR_1_S_AXI_arlock[0];
  assign DDR_1_S_AXI_1_ARPROT = DDR_1_S_AXI_arprot[2:0];
  assign DDR_1_S_AXI_1_ARQOS = DDR_1_S_AXI_arqos[3:0];
  assign DDR_1_S_AXI_1_ARREGION = DDR_1_S_AXI_arregion[3:0];
  assign DDR_1_S_AXI_1_ARSIZE = DDR_1_S_AXI_arsize[2:0];
  assign DDR_1_S_AXI_1_ARUSER = DDR_1_S_AXI_aruser[31:0];
  assign DDR_1_S_AXI_1_ARVALID = DDR_1_S_AXI_arvalid;
  assign DDR_1_S_AXI_1_AWADDR = DDR_1_S_AXI_awaddr[33:0];
  assign DDR_1_S_AXI_1_AWBURST = DDR_1_S_AXI_awburst[1:0];
  assign DDR_1_S_AXI_1_AWCACHE = DDR_1_S_AXI_awcache[3:0];
  assign DDR_1_S_AXI_1_AWID = DDR_1_S_AXI_awid[6:0];
  assign DDR_1_S_AXI_1_AWLEN = DDR_1_S_AXI_awlen[7:0];
  assign DDR_1_S_AXI_1_AWLOCK = DDR_1_S_AXI_awlock[0];
  assign DDR_1_S_AXI_1_AWPROT = DDR_1_S_AXI_awprot[2:0];
  assign DDR_1_S_AXI_1_AWQOS = DDR_1_S_AXI_awqos[3:0];
  assign DDR_1_S_AXI_1_AWREGION = DDR_1_S_AXI_awregion[3:0];
  assign DDR_1_S_AXI_1_AWSIZE = DDR_1_S_AXI_awsize[2:0];
  assign DDR_1_S_AXI_1_AWUSER = DDR_1_S_AXI_awuser[31:0];
  assign DDR_1_S_AXI_1_AWVALID = DDR_1_S_AXI_awvalid;
  assign DDR_1_S_AXI_1_BREADY = DDR_1_S_AXI_bready;
  assign DDR_1_S_AXI_1_RREADY = DDR_1_S_AXI_rready;
  assign DDR_1_S_AXI_1_WDATA = DDR_1_S_AXI_wdata[511:0];
  assign DDR_1_S_AXI_1_WLAST = DDR_1_S_AXI_wlast;
  assign DDR_1_S_AXI_1_WSTRB = DDR_1_S_AXI_wstrb[63:0];
  assign DDR_1_S_AXI_1_WUSER = DDR_1_S_AXI_wuser[63:0];
  assign DDR_1_S_AXI_1_WVALID = DDR_1_S_AXI_wvalid;
  assign DDR_1_S_AXI_arready = DDR_1_S_AXI_1_ARREADY;
  assign DDR_1_S_AXI_awready = DDR_1_S_AXI_1_AWREADY;
  assign DDR_1_S_AXI_bid[6:0] = DDR_1_S_AXI_1_BID;
  assign DDR_1_S_AXI_bresp[1:0] = DDR_1_S_AXI_1_BRESP;
  assign DDR_1_S_AXI_bvalid = DDR_1_S_AXI_1_BVALID;
  assign DDR_1_S_AXI_rdata[511:0] = DDR_1_S_AXI_1_RDATA;
  assign DDR_1_S_AXI_rid[6:0] = DDR_1_S_AXI_1_RID;
  assign DDR_1_S_AXI_rlast = DDR_1_S_AXI_1_RLAST;
  assign DDR_1_S_AXI_rresp[1:0] = DDR_1_S_AXI_1_RRESP;
  assign DDR_1_S_AXI_rvalid = DDR_1_S_AXI_1_RVALID;
  assign DDR_1_S_AXI_wready = DDR_1_S_AXI_1_WREADY;
  assign DDR_1_peripheral_aresetn[0] = memory_DDR_1_peripheral_aresetn;
  assign DDR_1_ui_clk = memory_DDR_1_ui_clk;
  assign M_AXI_LITE_araddr[31:0] = QDMA_M_AXI_LITE_Inter_M02_AXI_ARADDR;
  assign M_AXI_LITE_arprot[2:0] = QDMA_M_AXI_LITE_Inter_M02_AXI_ARPROT;
  assign M_AXI_LITE_arvalid = QDMA_M_AXI_LITE_Inter_M02_AXI_ARVALID;
  assign M_AXI_LITE_awaddr[31:0] = QDMA_M_AXI_LITE_Inter_M02_AXI_AWADDR;
  assign M_AXI_LITE_awprot[2:0] = QDMA_M_AXI_LITE_Inter_M02_AXI_AWPROT;
  assign M_AXI_LITE_awvalid = QDMA_M_AXI_LITE_Inter_M02_AXI_AWVALID;
  assign M_AXI_LITE_bready = QDMA_M_AXI_LITE_Inter_M02_AXI_BREADY;
  assign M_AXI_LITE_rready = QDMA_M_AXI_LITE_Inter_M02_AXI_RREADY;
  assign M_AXI_LITE_wdata[31:0] = QDMA_M_AXI_LITE_Inter_M02_AXI_WDATA;
  assign M_AXI_LITE_wstrb[3:0] = QDMA_M_AXI_LITE_Inter_M02_AXI_WSTRB;
  assign M_AXI_LITE_wvalid = QDMA_M_AXI_LITE_Inter_M02_AXI_WVALID;
  assign M_AXI_araddr[63:0] = QDMA_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = QDMA_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = QDMA_M_AXI_ARCACHE;
  assign M_AXI_arid[3:0] = QDMA_M_AXI_ARID;
  assign M_AXI_arlen[7:0] = QDMA_M_AXI_ARLEN;
  assign M_AXI_arlock[0] = QDMA_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = QDMA_M_AXI_ARPROT;
  assign M_AXI_arsize[2:0] = QDMA_M_AXI_ARSIZE;
  assign M_AXI_aruser[31:0] = QDMA_M_AXI_ARUSER;
  assign M_AXI_arvalid = QDMA_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = QDMA_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = QDMA_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = QDMA_M_AXI_AWCACHE;
  assign M_AXI_awid[3:0] = QDMA_M_AXI_AWID;
  assign M_AXI_awlen[7:0] = QDMA_M_AXI_AWLEN;
  assign M_AXI_awlock[0] = QDMA_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = QDMA_M_AXI_AWPROT;
  assign M_AXI_awsize[2:0] = QDMA_M_AXI_AWSIZE;
  assign M_AXI_awuser[31:0] = QDMA_M_AXI_AWUSER;
  assign M_AXI_awvalid = QDMA_M_AXI_AWVALID;
  assign M_AXI_bready = QDMA_M_AXI_BREADY;
  assign M_AXI_rready = QDMA_M_AXI_RREADY;
  assign M_AXI_wdata[511:0] = QDMA_M_AXI_WDATA;
  assign M_AXI_wlast = QDMA_M_AXI_WLAST;
  assign M_AXI_wstrb[63:0] = QDMA_M_AXI_WSTRB;
  assign M_AXI_wuser[63:0] = QDMA_M_AXI_WUSER;
  assign M_AXI_wvalid = QDMA_M_AXI_WVALID;
  assign QDMA_M_AXI_ARREADY = M_AXI_arready;
  assign QDMA_M_AXI_AWREADY = M_AXI_awready;
  assign QDMA_M_AXI_BID = M_AXI_bid[3:0];
  assign QDMA_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign QDMA_M_AXI_BVALID = M_AXI_bvalid;
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_ARREADY = M_AXI_LITE_arready;
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_AWREADY = M_AXI_LITE_awready;
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_BRESP = M_AXI_LITE_bresp[1:0];
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_BVALID = M_AXI_LITE_bvalid;
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_RDATA = M_AXI_LITE_rdata[31:0];
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_RRESP = M_AXI_LITE_rresp[1:0];
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_RVALID = M_AXI_LITE_rvalid;
  assign QDMA_M_AXI_LITE_Inter_M02_AXI_WREADY = M_AXI_LITE_wready;
  assign QDMA_M_AXI_RDATA = M_AXI_rdata[511:0];
  assign QDMA_M_AXI_RID = M_AXI_rid[3:0];
  assign QDMA_M_AXI_RLAST = M_AXI_rlast;
  assign QDMA_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign QDMA_M_AXI_RVALID = M_AXI_rvalid;
  assign QDMA_M_AXI_WREADY = M_AXI_wready;
  assign QDMA_pci_express_x8_rxn = pci_express_x8_rxn[15:0];
  assign QDMA_pci_express_x8_rxp = pci_express_x8_rxp[15:0];
  assign aclk = QDMA_aclk;
  assign aresetn = QDMA_aresetn;
  assign clk_app_1 = clk_app;
  assign clk_app_rstn_1 = clk_app_rstn;
  assign pci_express_x8_txn[15:0] = QDMA_pci_express_x8_txn;
  assign pci_express_x8_txp[15:0] = QDMA_pci_express_x8_txp;
  assign pcie_perstn_1 = pcie_perstn;
  assign pcie_refclk_1_CLK_N = pcie_refclk_clk_n;
  assign pcie_refclk_1_CLK_P = pcie_refclk_clk_p;
  assign ui_clk = memory_DDR_0_ui_clk;
  QDMA_imp_ROTCTT QDMA
       (.M_AXI_LITE_araddr(QDMA_M_AXI_LITE_ARADDR),
        .M_AXI_LITE_arprot(QDMA_M_AXI_LITE_ARPROT),
        .M_AXI_LITE_arready(QDMA_M_AXI_LITE_ARREADY),
        .M_AXI_LITE_arvalid(QDMA_M_AXI_LITE_ARVALID),
        .M_AXI_LITE_awaddr(QDMA_M_AXI_LITE_AWADDR),
        .M_AXI_LITE_awprot(QDMA_M_AXI_LITE_AWPROT),
        .M_AXI_LITE_awready(QDMA_M_AXI_LITE_AWREADY),
        .M_AXI_LITE_awvalid(QDMA_M_AXI_LITE_AWVALID),
        .M_AXI_LITE_bready(QDMA_M_AXI_LITE_BREADY),
        .M_AXI_LITE_bresp(QDMA_M_AXI_LITE_BRESP),
        .M_AXI_LITE_bvalid(QDMA_M_AXI_LITE_BVALID),
        .M_AXI_LITE_rdata(QDMA_M_AXI_LITE_RDATA),
        .M_AXI_LITE_rready(QDMA_M_AXI_LITE_RREADY),
        .M_AXI_LITE_rresp(QDMA_M_AXI_LITE_RRESP),
        .M_AXI_LITE_rvalid(QDMA_M_AXI_LITE_RVALID),
        .M_AXI_LITE_wdata(QDMA_M_AXI_LITE_WDATA),
        .M_AXI_LITE_wready(QDMA_M_AXI_LITE_WREADY),
        .M_AXI_LITE_wstrb(QDMA_M_AXI_LITE_WSTRB),
        .M_AXI_LITE_wvalid(QDMA_M_AXI_LITE_WVALID),
        .M_AXI_araddr(QDMA_M_AXI_ARADDR),
        .M_AXI_arburst(QDMA_M_AXI_ARBURST),
        .M_AXI_arcache(QDMA_M_AXI_ARCACHE),
        .M_AXI_arid(QDMA_M_AXI_ARID),
        .M_AXI_arlen(QDMA_M_AXI_ARLEN),
        .M_AXI_arlock(QDMA_M_AXI_ARLOCK),
        .M_AXI_arprot(QDMA_M_AXI_ARPROT),
        .M_AXI_arready(QDMA_M_AXI_ARREADY),
        .M_AXI_arsize(QDMA_M_AXI_ARSIZE),
        .M_AXI_aruser(QDMA_M_AXI_ARUSER),
        .M_AXI_arvalid(QDMA_M_AXI_ARVALID),
        .M_AXI_awaddr(QDMA_M_AXI_AWADDR),
        .M_AXI_awburst(QDMA_M_AXI_AWBURST),
        .M_AXI_awcache(QDMA_M_AXI_AWCACHE),
        .M_AXI_awid(QDMA_M_AXI_AWID),
        .M_AXI_awlen(QDMA_M_AXI_AWLEN),
        .M_AXI_awlock(QDMA_M_AXI_AWLOCK),
        .M_AXI_awprot(QDMA_M_AXI_AWPROT),
        .M_AXI_awready(QDMA_M_AXI_AWREADY),
        .M_AXI_awsize(QDMA_M_AXI_AWSIZE),
        .M_AXI_awuser(QDMA_M_AXI_AWUSER),
        .M_AXI_awvalid(QDMA_M_AXI_AWVALID),
        .M_AXI_bid(QDMA_M_AXI_BID),
        .M_AXI_bready(QDMA_M_AXI_BREADY),
        .M_AXI_bresp(QDMA_M_AXI_BRESP),
        .M_AXI_bvalid(QDMA_M_AXI_BVALID),
        .M_AXI_rdata(QDMA_M_AXI_RDATA),
        .M_AXI_rid(QDMA_M_AXI_RID),
        .M_AXI_rlast(QDMA_M_AXI_RLAST),
        .M_AXI_rready(QDMA_M_AXI_RREADY),
        .M_AXI_rresp(QDMA_M_AXI_RRESP),
        .M_AXI_rvalid(QDMA_M_AXI_RVALID),
        .M_AXI_wdata(QDMA_M_AXI_WDATA),
        .M_AXI_wlast(QDMA_M_AXI_WLAST),
        .M_AXI_wready(QDMA_M_AXI_WREADY),
        .M_AXI_wstrb(QDMA_M_AXI_WSTRB),
        .M_AXI_wuser(QDMA_M_AXI_WUSER),
        .M_AXI_wvalid(QDMA_M_AXI_WVALID),
        .aclk(QDMA_aclk),
        .aresetn(QDMA_aresetn),
        .pci_express_x8_rxn(QDMA_pci_express_x8_rxn),
        .pci_express_x8_rxp(QDMA_pci_express_x8_rxp),
        .pci_express_x8_txn(QDMA_pci_express_x8_txn),
        .pci_express_x8_txp(QDMA_pci_express_x8_txp),
        .pcie_perstn(pcie_perstn_1),
        .pcie_refclk_clk_n(pcie_refclk_1_CLK_N),
        .pcie_refclk_clk_p(pcie_refclk_1_CLK_P));
  matmul_design_QDMA_M_AXI_LITE_Inter_0 QDMA_M_AXI_LITE_Inter
       (.ACLK(clk_app_1),
        .ARESETN(clk_app_rstn_1),
        .M00_ACLK(memory_DDR_0_ui_clk),
        .M00_ARESETN(memory_DDR_0_peripheral_aresetn),
        .M00_AXI_araddr(QDMA_M_AXI_LITE_Inter_M00_AXI_ARADDR),
        .M00_AXI_arprot(QDMA_M_AXI_LITE_Inter_M00_AXI_ARPROT),
        .M00_AXI_arready(QDMA_M_AXI_LITE_Inter_M00_AXI_ARREADY),
        .M00_AXI_arvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_ARVALID),
        .M00_AXI_awaddr(QDMA_M_AXI_LITE_Inter_M00_AXI_AWADDR),
        .M00_AXI_awprot(QDMA_M_AXI_LITE_Inter_M00_AXI_AWPROT),
        .M00_AXI_awready(QDMA_M_AXI_LITE_Inter_M00_AXI_AWREADY),
        .M00_AXI_awvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_AWVALID),
        .M00_AXI_bready(QDMA_M_AXI_LITE_Inter_M00_AXI_BREADY),
        .M00_AXI_bresp(QDMA_M_AXI_LITE_Inter_M00_AXI_BRESP),
        .M00_AXI_bvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_BVALID),
        .M00_AXI_rdata(QDMA_M_AXI_LITE_Inter_M00_AXI_RDATA),
        .M00_AXI_rready(QDMA_M_AXI_LITE_Inter_M00_AXI_RREADY),
        .M00_AXI_rresp(QDMA_M_AXI_LITE_Inter_M00_AXI_RRESP),
        .M00_AXI_rvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_RVALID),
        .M00_AXI_wdata(QDMA_M_AXI_LITE_Inter_M00_AXI_WDATA),
        .M00_AXI_wready(QDMA_M_AXI_LITE_Inter_M00_AXI_WREADY),
        .M00_AXI_wstrb(QDMA_M_AXI_LITE_Inter_M00_AXI_WSTRB),
        .M00_AXI_wvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_WVALID),
        .M01_ACLK(memory_DDR_1_ui_clk),
        .M01_ARESETN(memory_DDR_1_peripheral_aresetn),
        .M01_AXI_araddr(QDMA_M_AXI_LITE_Inter_M01_AXI_ARADDR),
        .M01_AXI_arprot(QDMA_M_AXI_LITE_Inter_M01_AXI_ARPROT),
        .M01_AXI_arready(QDMA_M_AXI_LITE_Inter_M01_AXI_ARREADY),
        .M01_AXI_arvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_ARVALID),
        .M01_AXI_awaddr(QDMA_M_AXI_LITE_Inter_M01_AXI_AWADDR),
        .M01_AXI_awprot(QDMA_M_AXI_LITE_Inter_M01_AXI_AWPROT),
        .M01_AXI_awready(QDMA_M_AXI_LITE_Inter_M01_AXI_AWREADY),
        .M01_AXI_awvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_AWVALID),
        .M01_AXI_bready(QDMA_M_AXI_LITE_Inter_M01_AXI_BREADY),
        .M01_AXI_bresp(QDMA_M_AXI_LITE_Inter_M01_AXI_BRESP),
        .M01_AXI_bvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_BVALID),
        .M01_AXI_rdata(QDMA_M_AXI_LITE_Inter_M01_AXI_RDATA),
        .M01_AXI_rready(QDMA_M_AXI_LITE_Inter_M01_AXI_RREADY),
        .M01_AXI_rresp(QDMA_M_AXI_LITE_Inter_M01_AXI_RRESP),
        .M01_AXI_rvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_RVALID),
        .M01_AXI_wdata(QDMA_M_AXI_LITE_Inter_M01_AXI_WDATA),
        .M01_AXI_wready(QDMA_M_AXI_LITE_Inter_M01_AXI_WREADY),
        .M01_AXI_wstrb(QDMA_M_AXI_LITE_Inter_M01_AXI_WSTRB),
        .M01_AXI_wvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_WVALID),
        .M02_ACLK(clk_app_1),
        .M02_ARESETN(clk_app_rstn_1),
        .M02_AXI_araddr(QDMA_M_AXI_LITE_Inter_M02_AXI_ARADDR),
        .M02_AXI_arprot(QDMA_M_AXI_LITE_Inter_M02_AXI_ARPROT),
        .M02_AXI_arready(QDMA_M_AXI_LITE_Inter_M02_AXI_ARREADY),
        .M02_AXI_arvalid(QDMA_M_AXI_LITE_Inter_M02_AXI_ARVALID),
        .M02_AXI_awaddr(QDMA_M_AXI_LITE_Inter_M02_AXI_AWADDR),
        .M02_AXI_awprot(QDMA_M_AXI_LITE_Inter_M02_AXI_AWPROT),
        .M02_AXI_awready(QDMA_M_AXI_LITE_Inter_M02_AXI_AWREADY),
        .M02_AXI_awvalid(QDMA_M_AXI_LITE_Inter_M02_AXI_AWVALID),
        .M02_AXI_bready(QDMA_M_AXI_LITE_Inter_M02_AXI_BREADY),
        .M02_AXI_bresp(QDMA_M_AXI_LITE_Inter_M02_AXI_BRESP),
        .M02_AXI_bvalid(QDMA_M_AXI_LITE_Inter_M02_AXI_BVALID),
        .M02_AXI_rdata(QDMA_M_AXI_LITE_Inter_M02_AXI_RDATA),
        .M02_AXI_rready(QDMA_M_AXI_LITE_Inter_M02_AXI_RREADY),
        .M02_AXI_rresp(QDMA_M_AXI_LITE_Inter_M02_AXI_RRESP),
        .M02_AXI_rvalid(QDMA_M_AXI_LITE_Inter_M02_AXI_RVALID),
        .M02_AXI_wdata(QDMA_M_AXI_LITE_Inter_M02_AXI_WDATA),
        .M02_AXI_wready(QDMA_M_AXI_LITE_Inter_M02_AXI_WREADY),
        .M02_AXI_wstrb(QDMA_M_AXI_LITE_Inter_M02_AXI_WSTRB),
        .M02_AXI_wvalid(QDMA_M_AXI_LITE_Inter_M02_AXI_WVALID),
        .S00_ACLK(QDMA_aclk),
        .S00_ARESETN(QDMA_aresetn),
        .S00_AXI_araddr(QDMA_M_AXI_LITE_ARADDR),
        .S00_AXI_arprot(QDMA_M_AXI_LITE_ARPROT),
        .S00_AXI_arready(QDMA_M_AXI_LITE_ARREADY),
        .S00_AXI_arvalid(QDMA_M_AXI_LITE_ARVALID),
        .S00_AXI_awaddr(QDMA_M_AXI_LITE_AWADDR),
        .S00_AXI_awprot(QDMA_M_AXI_LITE_AWPROT),
        .S00_AXI_awready(QDMA_M_AXI_LITE_AWREADY),
        .S00_AXI_awvalid(QDMA_M_AXI_LITE_AWVALID),
        .S00_AXI_bready(QDMA_M_AXI_LITE_BREADY),
        .S00_AXI_bresp(QDMA_M_AXI_LITE_BRESP),
        .S00_AXI_bvalid(QDMA_M_AXI_LITE_BVALID),
        .S00_AXI_rdata(QDMA_M_AXI_LITE_RDATA),
        .S00_AXI_rready(QDMA_M_AXI_LITE_RREADY),
        .S00_AXI_rresp(QDMA_M_AXI_LITE_RRESP),
        .S00_AXI_rvalid(QDMA_M_AXI_LITE_RVALID),
        .S00_AXI_wdata(QDMA_M_AXI_LITE_WDATA),
        .S00_AXI_wready(QDMA_M_AXI_LITE_WREADY),
        .S00_AXI_wstrb(QDMA_M_AXI_LITE_WSTRB),
        .S00_AXI_wvalid(QDMA_M_AXI_LITE_WVALID));
  memory_imp_YCXND9 memory
       (.DDR_0_SDRAM_act_n(memory_DDR_0_SDRAM_ACT_N),
        .DDR_0_SDRAM_adr(memory_DDR_0_SDRAM_ADR),
        .DDR_0_SDRAM_ba(memory_DDR_0_SDRAM_BA),
        .DDR_0_SDRAM_bg(memory_DDR_0_SDRAM_BG),
        .DDR_0_SDRAM_ck_c(memory_DDR_0_SDRAM_CK_C),
        .DDR_0_SDRAM_ck_t(memory_DDR_0_SDRAM_CK_T),
        .DDR_0_SDRAM_cke(memory_DDR_0_SDRAM_CKE),
        .DDR_0_SDRAM_cs_n(memory_DDR_0_SDRAM_CS_N),
        .DDR_0_SDRAM_dq(DDR_0_SDRAM_dq[71:0]),
        .DDR_0_SDRAM_dqs_c(DDR_0_SDRAM_dqs_c[17:0]),
        .DDR_0_SDRAM_dqs_t(DDR_0_SDRAM_dqs_t[17:0]),
        .DDR_0_SDRAM_odt(memory_DDR_0_SDRAM_ODT),
        .DDR_0_SDRAM_par(memory_DDR_0_SDRAM_PAR),
        .DDR_0_SDRAM_reset_n(memory_DDR_0_SDRAM_RESET_N),
        .DDR_0_SYS_CLK_clk_n(DDR_0_SYS_CLK_1_CLK_N),
        .DDR_0_SYS_CLK_clk_p(DDR_0_SYS_CLK_1_CLK_P),
        .DDR_0_S_AXI_CTRL_araddr(QDMA_M_AXI_LITE_Inter_M00_AXI_ARADDR),
        .DDR_0_S_AXI_CTRL_arprot(QDMA_M_AXI_LITE_Inter_M00_AXI_ARPROT),
        .DDR_0_S_AXI_CTRL_arready(QDMA_M_AXI_LITE_Inter_M00_AXI_ARREADY),
        .DDR_0_S_AXI_CTRL_arvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_ARVALID),
        .DDR_0_S_AXI_CTRL_awaddr(QDMA_M_AXI_LITE_Inter_M00_AXI_AWADDR),
        .DDR_0_S_AXI_CTRL_awprot(QDMA_M_AXI_LITE_Inter_M00_AXI_AWPROT),
        .DDR_0_S_AXI_CTRL_awready(QDMA_M_AXI_LITE_Inter_M00_AXI_AWREADY),
        .DDR_0_S_AXI_CTRL_awvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_AWVALID),
        .DDR_0_S_AXI_CTRL_bready(QDMA_M_AXI_LITE_Inter_M00_AXI_BREADY),
        .DDR_0_S_AXI_CTRL_bresp(QDMA_M_AXI_LITE_Inter_M00_AXI_BRESP),
        .DDR_0_S_AXI_CTRL_bvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_BVALID),
        .DDR_0_S_AXI_CTRL_rdata(QDMA_M_AXI_LITE_Inter_M00_AXI_RDATA),
        .DDR_0_S_AXI_CTRL_rready(QDMA_M_AXI_LITE_Inter_M00_AXI_RREADY),
        .DDR_0_S_AXI_CTRL_rresp(QDMA_M_AXI_LITE_Inter_M00_AXI_RRESP),
        .DDR_0_S_AXI_CTRL_rvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_RVALID),
        .DDR_0_S_AXI_CTRL_wdata(QDMA_M_AXI_LITE_Inter_M00_AXI_WDATA),
        .DDR_0_S_AXI_CTRL_wready(QDMA_M_AXI_LITE_Inter_M00_AXI_WREADY),
        .DDR_0_S_AXI_CTRL_wstrb(QDMA_M_AXI_LITE_Inter_M00_AXI_WSTRB),
        .DDR_0_S_AXI_CTRL_wvalid(QDMA_M_AXI_LITE_Inter_M00_AXI_WVALID),
        .DDR_0_S_AXI_araddr(DDR_0_S_AXI_1_ARADDR),
        .DDR_0_S_AXI_arburst(DDR_0_S_AXI_1_ARBURST),
        .DDR_0_S_AXI_arcache(DDR_0_S_AXI_1_ARCACHE),
        .DDR_0_S_AXI_arid(DDR_0_S_AXI_1_ARID),
        .DDR_0_S_AXI_arlen(DDR_0_S_AXI_1_ARLEN),
        .DDR_0_S_AXI_arlock(DDR_0_S_AXI_1_ARLOCK),
        .DDR_0_S_AXI_arprot(DDR_0_S_AXI_1_ARPROT),
        .DDR_0_S_AXI_arqos(DDR_0_S_AXI_1_ARQOS),
        .DDR_0_S_AXI_arready(DDR_0_S_AXI_1_ARREADY),
        .DDR_0_S_AXI_arregion(DDR_0_S_AXI_1_ARREGION),
        .DDR_0_S_AXI_arsize(DDR_0_S_AXI_1_ARSIZE),
        .DDR_0_S_AXI_aruser(DDR_0_S_AXI_1_ARUSER),
        .DDR_0_S_AXI_arvalid(DDR_0_S_AXI_1_ARVALID),
        .DDR_0_S_AXI_awaddr(DDR_0_S_AXI_1_AWADDR),
        .DDR_0_S_AXI_awburst(DDR_0_S_AXI_1_AWBURST),
        .DDR_0_S_AXI_awcache(DDR_0_S_AXI_1_AWCACHE),
        .DDR_0_S_AXI_awid(DDR_0_S_AXI_1_AWID),
        .DDR_0_S_AXI_awlen(DDR_0_S_AXI_1_AWLEN),
        .DDR_0_S_AXI_awlock(DDR_0_S_AXI_1_AWLOCK),
        .DDR_0_S_AXI_awprot(DDR_0_S_AXI_1_AWPROT),
        .DDR_0_S_AXI_awqos(DDR_0_S_AXI_1_AWQOS),
        .DDR_0_S_AXI_awready(DDR_0_S_AXI_1_AWREADY),
        .DDR_0_S_AXI_awregion(DDR_0_S_AXI_1_AWREGION),
        .DDR_0_S_AXI_awsize(DDR_0_S_AXI_1_AWSIZE),
        .DDR_0_S_AXI_awuser(DDR_0_S_AXI_1_AWUSER),
        .DDR_0_S_AXI_awvalid(DDR_0_S_AXI_1_AWVALID),
        .DDR_0_S_AXI_bid(DDR_0_S_AXI_1_BID),
        .DDR_0_S_AXI_bready(DDR_0_S_AXI_1_BREADY),
        .DDR_0_S_AXI_bresp(DDR_0_S_AXI_1_BRESP),
        .DDR_0_S_AXI_bvalid(DDR_0_S_AXI_1_BVALID),
        .DDR_0_S_AXI_rdata(DDR_0_S_AXI_1_RDATA),
        .DDR_0_S_AXI_rid(DDR_0_S_AXI_1_RID),
        .DDR_0_S_AXI_rlast(DDR_0_S_AXI_1_RLAST),
        .DDR_0_S_AXI_rready(DDR_0_S_AXI_1_RREADY),
        .DDR_0_S_AXI_rresp(DDR_0_S_AXI_1_RRESP),
        .DDR_0_S_AXI_rvalid(DDR_0_S_AXI_1_RVALID),
        .DDR_0_S_AXI_wdata(DDR_0_S_AXI_1_WDATA),
        .DDR_0_S_AXI_wlast(DDR_0_S_AXI_1_WLAST),
        .DDR_0_S_AXI_wready(DDR_0_S_AXI_1_WREADY),
        .DDR_0_S_AXI_wstrb(DDR_0_S_AXI_1_WSTRB),
        .DDR_0_S_AXI_wuser(DDR_0_S_AXI_1_WUSER),
        .DDR_0_S_AXI_wvalid(DDR_0_S_AXI_1_WVALID),
        .DDR_0_peripheral_aresetn(memory_DDR_0_peripheral_aresetn),
        .DDR_0_ui_clk(memory_DDR_0_ui_clk),
        .DDR_1_SDRAM_act_n(memory_DDR_1_SDRAM_ACT_N),
        .DDR_1_SDRAM_adr(memory_DDR_1_SDRAM_ADR),
        .DDR_1_SDRAM_ba(memory_DDR_1_SDRAM_BA),
        .DDR_1_SDRAM_bg(memory_DDR_1_SDRAM_BG),
        .DDR_1_SDRAM_ck_c(memory_DDR_1_SDRAM_CK_C),
        .DDR_1_SDRAM_ck_t(memory_DDR_1_SDRAM_CK_T),
        .DDR_1_SDRAM_cke(memory_DDR_1_SDRAM_CKE),
        .DDR_1_SDRAM_cs_n(memory_DDR_1_SDRAM_CS_N),
        .DDR_1_SDRAM_dq(DDR_1_SDRAM_dq[71:0]),
        .DDR_1_SDRAM_dqs_c(DDR_1_SDRAM_dqs_c[17:0]),
        .DDR_1_SDRAM_dqs_t(DDR_1_SDRAM_dqs_t[17:0]),
        .DDR_1_SDRAM_odt(memory_DDR_1_SDRAM_ODT),
        .DDR_1_SDRAM_par(memory_DDR_1_SDRAM_PAR),
        .DDR_1_SDRAM_reset_n(memory_DDR_1_SDRAM_RESET_N),
        .DDR_1_SYS_CLK_clk_n(DDR_1_SYS_CLK_1_CLK_N),
        .DDR_1_SYS_CLK_clk_p(DDR_1_SYS_CLK_1_CLK_P),
        .DDR_1_S_AXI_CTRL_araddr(QDMA_M_AXI_LITE_Inter_M01_AXI_ARADDR),
        .DDR_1_S_AXI_CTRL_arprot(QDMA_M_AXI_LITE_Inter_M01_AXI_ARPROT),
        .DDR_1_S_AXI_CTRL_arready(QDMA_M_AXI_LITE_Inter_M01_AXI_ARREADY),
        .DDR_1_S_AXI_CTRL_arvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_ARVALID),
        .DDR_1_S_AXI_CTRL_awaddr(QDMA_M_AXI_LITE_Inter_M01_AXI_AWADDR),
        .DDR_1_S_AXI_CTRL_awprot(QDMA_M_AXI_LITE_Inter_M01_AXI_AWPROT),
        .DDR_1_S_AXI_CTRL_awready(QDMA_M_AXI_LITE_Inter_M01_AXI_AWREADY),
        .DDR_1_S_AXI_CTRL_awvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_AWVALID),
        .DDR_1_S_AXI_CTRL_bready(QDMA_M_AXI_LITE_Inter_M01_AXI_BREADY),
        .DDR_1_S_AXI_CTRL_bresp(QDMA_M_AXI_LITE_Inter_M01_AXI_BRESP),
        .DDR_1_S_AXI_CTRL_bvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_BVALID),
        .DDR_1_S_AXI_CTRL_rdata(QDMA_M_AXI_LITE_Inter_M01_AXI_RDATA),
        .DDR_1_S_AXI_CTRL_rready(QDMA_M_AXI_LITE_Inter_M01_AXI_RREADY),
        .DDR_1_S_AXI_CTRL_rresp(QDMA_M_AXI_LITE_Inter_M01_AXI_RRESP),
        .DDR_1_S_AXI_CTRL_rvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_RVALID),
        .DDR_1_S_AXI_CTRL_wdata(QDMA_M_AXI_LITE_Inter_M01_AXI_WDATA),
        .DDR_1_S_AXI_CTRL_wready(QDMA_M_AXI_LITE_Inter_M01_AXI_WREADY),
        .DDR_1_S_AXI_CTRL_wstrb(QDMA_M_AXI_LITE_Inter_M01_AXI_WSTRB),
        .DDR_1_S_AXI_CTRL_wvalid(QDMA_M_AXI_LITE_Inter_M01_AXI_WVALID),
        .DDR_1_S_AXI_araddr(DDR_1_S_AXI_1_ARADDR),
        .DDR_1_S_AXI_arburst(DDR_1_S_AXI_1_ARBURST),
        .DDR_1_S_AXI_arcache(DDR_1_S_AXI_1_ARCACHE),
        .DDR_1_S_AXI_arid(DDR_1_S_AXI_1_ARID),
        .DDR_1_S_AXI_arlen(DDR_1_S_AXI_1_ARLEN),
        .DDR_1_S_AXI_arlock(DDR_1_S_AXI_1_ARLOCK),
        .DDR_1_S_AXI_arprot(DDR_1_S_AXI_1_ARPROT),
        .DDR_1_S_AXI_arqos(DDR_1_S_AXI_1_ARQOS),
        .DDR_1_S_AXI_arready(DDR_1_S_AXI_1_ARREADY),
        .DDR_1_S_AXI_arregion(DDR_1_S_AXI_1_ARREGION),
        .DDR_1_S_AXI_arsize(DDR_1_S_AXI_1_ARSIZE),
        .DDR_1_S_AXI_aruser(DDR_1_S_AXI_1_ARUSER),
        .DDR_1_S_AXI_arvalid(DDR_1_S_AXI_1_ARVALID),
        .DDR_1_S_AXI_awaddr(DDR_1_S_AXI_1_AWADDR),
        .DDR_1_S_AXI_awburst(DDR_1_S_AXI_1_AWBURST),
        .DDR_1_S_AXI_awcache(DDR_1_S_AXI_1_AWCACHE),
        .DDR_1_S_AXI_awid(DDR_1_S_AXI_1_AWID),
        .DDR_1_S_AXI_awlen(DDR_1_S_AXI_1_AWLEN),
        .DDR_1_S_AXI_awlock(DDR_1_S_AXI_1_AWLOCK),
        .DDR_1_S_AXI_awprot(DDR_1_S_AXI_1_AWPROT),
        .DDR_1_S_AXI_awqos(DDR_1_S_AXI_1_AWQOS),
        .DDR_1_S_AXI_awready(DDR_1_S_AXI_1_AWREADY),
        .DDR_1_S_AXI_awregion(DDR_1_S_AXI_1_AWREGION),
        .DDR_1_S_AXI_awsize(DDR_1_S_AXI_1_AWSIZE),
        .DDR_1_S_AXI_awuser(DDR_1_S_AXI_1_AWUSER),
        .DDR_1_S_AXI_awvalid(DDR_1_S_AXI_1_AWVALID),
        .DDR_1_S_AXI_bid(DDR_1_S_AXI_1_BID),
        .DDR_1_S_AXI_bready(DDR_1_S_AXI_1_BREADY),
        .DDR_1_S_AXI_bresp(DDR_1_S_AXI_1_BRESP),
        .DDR_1_S_AXI_bvalid(DDR_1_S_AXI_1_BVALID),
        .DDR_1_S_AXI_rdata(DDR_1_S_AXI_1_RDATA),
        .DDR_1_S_AXI_rid(DDR_1_S_AXI_1_RID),
        .DDR_1_S_AXI_rlast(DDR_1_S_AXI_1_RLAST),
        .DDR_1_S_AXI_rready(DDR_1_S_AXI_1_RREADY),
        .DDR_1_S_AXI_rresp(DDR_1_S_AXI_1_RRESP),
        .DDR_1_S_AXI_rvalid(DDR_1_S_AXI_1_RVALID),
        .DDR_1_S_AXI_wdata(DDR_1_S_AXI_1_WDATA),
        .DDR_1_S_AXI_wlast(DDR_1_S_AXI_1_WLAST),
        .DDR_1_S_AXI_wready(DDR_1_S_AXI_1_WREADY),
        .DDR_1_S_AXI_wstrb(DDR_1_S_AXI_1_WSTRB),
        .DDR_1_S_AXI_wuser(DDR_1_S_AXI_1_WUSER),
        .DDR_1_S_AXI_wvalid(DDR_1_S_AXI_1_WVALID),
        .DDR_1_peripheral_aresetn(memory_DDR_1_peripheral_aresetn),
        .DDR_1_ui_clk(memory_DDR_1_ui_clk),
        .DDR_rst(pcie_perstn_1));
endmodule

module hwr_inStream_imp_PF75E8
   (S0_AXIS_tdata,
    S0_AXIS_tdest,
    S0_AXIS_tid,
    S0_AXIS_tlast,
    S0_AXIS_tready,
    S0_AXIS_tvalid,
    S1_AXIS_tdata,
    S1_AXIS_tdest,
    S1_AXIS_tid,
    S1_AXIS_tlast,
    S1_AXIS_tready,
    S1_AXIS_tvalid,
    clk,
    cmdout_in_tdata,
    cmdout_in_tid,
    cmdout_in_tready,
    cmdout_in_tvalid,
    rstn,
    spawn_in_tdata,
    spawn_in_tid,
    spawn_in_tlast,
    spawn_in_tready,
    spawn_in_tvalid,
    taskwait_in_tdata,
    taskwait_in_tid,
    taskwait_in_tlast,
    taskwait_in_tready,
    taskwait_in_tvalid);
  input [63:0]S0_AXIS_tdata;
  input [1:0]S0_AXIS_tdest;
  input [0:0]S0_AXIS_tid;
  input S0_AXIS_tlast;
  output S0_AXIS_tready;
  input S0_AXIS_tvalid;
  input [63:0]S1_AXIS_tdata;
  input [1:0]S1_AXIS_tdest;
  input [0:0]S1_AXIS_tid;
  input S1_AXIS_tlast;
  output S1_AXIS_tready;
  input S1_AXIS_tvalid;
  input clk;
  output [63:0]cmdout_in_tdata;
  output [0:0]cmdout_in_tid;
  input cmdout_in_tready;
  output cmdout_in_tvalid;
  input rstn;
  output [63:0]spawn_in_tdata;
  output [0:0]spawn_in_tid;
  output spawn_in_tlast;
  input spawn_in_tready;
  output spawn_in_tvalid;
  output [63:0]taskwait_in_tdata;
  output [0:0]taskwait_in_tid;
  output taskwait_in_tlast;
  input taskwait_in_tready;
  output taskwait_in_tvalid;

  wire [63:0]S0_AXIS_1_TDATA;
  wire [1:0]S0_AXIS_1_TDEST;
  wire [0:0]S0_AXIS_1_TID;
  wire S0_AXIS_1_TLAST;
  wire S0_AXIS_1_TREADY;
  wire S0_AXIS_1_TVALID;
  wire [63:0]S1_AXIS_1_TDATA;
  wire [1:0]S1_AXIS_1_TDEST;
  wire [0:0]S1_AXIS_1_TID;
  wire S1_AXIS_1_TLAST;
  wire S1_AXIS_1_TREADY;
  wire S1_AXIS_1_TVALID;
  wire clk_1;
  wire [63:0]inS_common_Inter_lvl0_0_M00_AXIS_TDATA;
  wire [0:0]inS_common_Inter_lvl0_0_M00_AXIS_TID;
  wire inS_common_Inter_lvl0_0_M00_AXIS_TREADY;
  wire inS_common_Inter_lvl0_0_M00_AXIS_TVALID;
  wire [63:0]inS_ext_Inter_lvl0_0_M00_AXIS_TDATA;
  wire [1:0]inS_ext_Inter_lvl0_0_M00_AXIS_TDEST;
  wire [0:0]inS_ext_Inter_lvl0_0_M00_AXIS_TID;
  wire [0:0]inS_ext_Inter_lvl0_0_M00_AXIS_TLAST;
  wire [0:0]inS_ext_Inter_lvl0_0_M00_AXIS_TREADY;
  wire [0:0]inS_ext_Inter_lvl0_0_M00_AXIS_TVALID;
  wire [63:0]inS_ext_Inter_lvl0_0_M01_AXIS_TDATA;
  wire [0:0]inS_ext_Inter_lvl0_0_M01_AXIS_TID;
  wire inS_ext_Inter_lvl0_0_M01_AXIS_TLAST;
  wire inS_ext_Inter_lvl0_0_M01_AXIS_TREADY;
  wire inS_ext_Inter_lvl0_0_M01_AXIS_TVALID;
  wire [63:0]inS_ext_Inter_lvl0_0_M02_AXIS_TDATA;
  wire [0:0]inS_ext_Inter_lvl0_0_M02_AXIS_TID;
  wire inS_ext_Inter_lvl0_0_M02_AXIS_TLAST;
  wire inS_ext_Inter_lvl0_0_M02_AXIS_TREADY;
  wire inS_ext_Inter_lvl0_0_M02_AXIS_TVALID;
  wire rstn_1;

  assign S0_AXIS_1_TDATA = S0_AXIS_tdata[63:0];
  assign S0_AXIS_1_TDEST = S0_AXIS_tdest[1:0];
  assign S0_AXIS_1_TID = S0_AXIS_tid[0];
  assign S0_AXIS_1_TLAST = S0_AXIS_tlast;
  assign S0_AXIS_1_TVALID = S0_AXIS_tvalid;
  assign S0_AXIS_tready = S0_AXIS_1_TREADY;
  assign S1_AXIS_1_TDATA = S1_AXIS_tdata[63:0];
  assign S1_AXIS_1_TDEST = S1_AXIS_tdest[1:0];
  assign S1_AXIS_1_TID = S1_AXIS_tid[0];
  assign S1_AXIS_1_TLAST = S1_AXIS_tlast;
  assign S1_AXIS_1_TVALID = S1_AXIS_tvalid;
  assign S1_AXIS_tready = S1_AXIS_1_TREADY;
  assign clk_1 = clk;
  assign cmdout_in_tdata[63:0] = inS_common_Inter_lvl0_0_M00_AXIS_TDATA;
  assign cmdout_in_tid[0] = inS_common_Inter_lvl0_0_M00_AXIS_TID;
  assign cmdout_in_tvalid = inS_common_Inter_lvl0_0_M00_AXIS_TVALID;
  assign inS_common_Inter_lvl0_0_M00_AXIS_TREADY = cmdout_in_tready;
  assign inS_ext_Inter_lvl0_0_M01_AXIS_TREADY = spawn_in_tready;
  assign inS_ext_Inter_lvl0_0_M02_AXIS_TREADY = taskwait_in_tready;
  assign rstn_1 = rstn;
  assign spawn_in_tdata[63:0] = inS_ext_Inter_lvl0_0_M01_AXIS_TDATA;
  assign spawn_in_tid[0] = inS_ext_Inter_lvl0_0_M01_AXIS_TID;
  assign spawn_in_tlast = inS_ext_Inter_lvl0_0_M01_AXIS_TLAST;
  assign spawn_in_tvalid = inS_ext_Inter_lvl0_0_M01_AXIS_TVALID;
  assign taskwait_in_tdata[63:0] = inS_ext_Inter_lvl0_0_M02_AXIS_TDATA;
  assign taskwait_in_tid[0] = inS_ext_Inter_lvl0_0_M02_AXIS_TID;
  assign taskwait_in_tlast = inS_ext_Inter_lvl0_0_M02_AXIS_TLAST;
  assign taskwait_in_tvalid = inS_ext_Inter_lvl0_0_M02_AXIS_TVALID;
  matmul_design_inS_common_Inter_lvl0_0_0 inS_common_Inter_lvl0_0
       (.ACLK(clk_1),
        .ARESETN(rstn_1),
        .M00_AXIS_ACLK(clk_1),
        .M00_AXIS_ARESETN(rstn_1),
        .M00_AXIS_tdata(inS_common_Inter_lvl0_0_M00_AXIS_TDATA),
        .M00_AXIS_tid(inS_common_Inter_lvl0_0_M00_AXIS_TID),
        .M00_AXIS_tready(inS_common_Inter_lvl0_0_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(inS_common_Inter_lvl0_0_M00_AXIS_TVALID),
        .S00_ARB_REQ_SUPPRESS(1'b0),
        .S00_AXIS_ACLK(clk_1),
        .S00_AXIS_ARESETN(rstn_1),
        .S00_AXIS_tdata(inS_ext_Inter_lvl0_0_M00_AXIS_TDATA),
        .S00_AXIS_tdest(inS_ext_Inter_lvl0_0_M00_AXIS_TDEST),
        .S00_AXIS_tid(inS_ext_Inter_lvl0_0_M00_AXIS_TID),
        .S00_AXIS_tlast(inS_ext_Inter_lvl0_0_M00_AXIS_TLAST),
        .S00_AXIS_tready(inS_ext_Inter_lvl0_0_M00_AXIS_TREADY),
        .S00_AXIS_tvalid(inS_ext_Inter_lvl0_0_M00_AXIS_TVALID),
        .S01_ARB_REQ_SUPPRESS(1'b0),
        .S01_AXIS_ACLK(clk_1),
        .S01_AXIS_ARESETN(rstn_1),
        .S01_AXIS_tdata(S1_AXIS_1_TDATA),
        .S01_AXIS_tdest(S1_AXIS_1_TDEST),
        .S01_AXIS_tid(S1_AXIS_1_TID),
        .S01_AXIS_tlast(S1_AXIS_1_TLAST),
        .S01_AXIS_tready(S1_AXIS_1_TREADY),
        .S01_AXIS_tvalid(S1_AXIS_1_TVALID));
  matmul_design_inS_ext_Inter_lvl0_0_0 inS_ext_Inter_lvl0_0
       (.ACLK(clk_1),
        .ARESETN(rstn_1),
        .M00_AXIS_ACLK(clk_1),
        .M00_AXIS_ARESETN(rstn_1),
        .M00_AXIS_tdata(inS_ext_Inter_lvl0_0_M00_AXIS_TDATA),
        .M00_AXIS_tdest(inS_ext_Inter_lvl0_0_M00_AXIS_TDEST),
        .M00_AXIS_tid(inS_ext_Inter_lvl0_0_M00_AXIS_TID),
        .M00_AXIS_tlast(inS_ext_Inter_lvl0_0_M00_AXIS_TLAST),
        .M00_AXIS_tready(inS_ext_Inter_lvl0_0_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(inS_ext_Inter_lvl0_0_M00_AXIS_TVALID),
        .M01_AXIS_ACLK(clk_1),
        .M01_AXIS_ARESETN(rstn_1),
        .M01_AXIS_tdata(inS_ext_Inter_lvl0_0_M01_AXIS_TDATA),
        .M01_AXIS_tid(inS_ext_Inter_lvl0_0_M01_AXIS_TID),
        .M01_AXIS_tlast(inS_ext_Inter_lvl0_0_M01_AXIS_TLAST),
        .M01_AXIS_tready(inS_ext_Inter_lvl0_0_M01_AXIS_TREADY),
        .M01_AXIS_tvalid(inS_ext_Inter_lvl0_0_M01_AXIS_TVALID),
        .M02_AXIS_ACLK(clk_1),
        .M02_AXIS_ARESETN(rstn_1),
        .M02_AXIS_tdata(inS_ext_Inter_lvl0_0_M02_AXIS_TDATA),
        .M02_AXIS_tid(inS_ext_Inter_lvl0_0_M02_AXIS_TID),
        .M02_AXIS_tlast(inS_ext_Inter_lvl0_0_M02_AXIS_TLAST),
        .M02_AXIS_tready(inS_ext_Inter_lvl0_0_M02_AXIS_TREADY),
        .M02_AXIS_tvalid(inS_ext_Inter_lvl0_0_M02_AXIS_TVALID),
        .S00_AXIS_ACLK(clk_1),
        .S00_AXIS_ARESETN(rstn_1),
        .S00_AXIS_tdata(S0_AXIS_1_TDATA),
        .S00_AXIS_tdest(S0_AXIS_1_TDEST),
        .S00_AXIS_tid(S0_AXIS_1_TID),
        .S00_AXIS_tlast(S0_AXIS_1_TLAST),
        .S00_AXIS_tready(S0_AXIS_1_TREADY),
        .S00_AXIS_tvalid(S0_AXIS_1_TVALID));
endmodule

module hwr_outStream_imp_1DWZ3QS
   (M0_AXIS_tdata,
    M0_AXIS_tid,
    M0_AXIS_tready,
    M0_AXIS_tvalid,
    M1_AXIS_tdata,
    M1_AXIS_tready,
    M1_AXIS_tvalid,
    clk,
    cmdin_out_tdata,
    cmdin_out_tdest,
    cmdin_out_tid,
    cmdin_out_tlast,
    cmdin_out_tready,
    cmdin_out_tvalid,
    rstn,
    spawn_out_tdata,
    spawn_out_tdest,
    spawn_out_tid,
    spawn_out_tlast,
    spawn_out_tready,
    spawn_out_tvalid,
    taskwait_out_tdata,
    taskwait_out_tdest,
    taskwait_out_tid,
    taskwait_out_tlast,
    taskwait_out_tready,
    taskwait_out_tvalid);
  output [63:0]M0_AXIS_tdata;
  output [0:0]M0_AXIS_tid;
  input M0_AXIS_tready;
  output M0_AXIS_tvalid;
  output [63:0]M1_AXIS_tdata;
  input M1_AXIS_tready;
  output M1_AXIS_tvalid;
  input clk;
  input [63:0]cmdin_out_tdata;
  input [0:0]cmdin_out_tdest;
  input [0:0]cmdin_out_tid;
  input cmdin_out_tlast;
  output cmdin_out_tready;
  input cmdin_out_tvalid;
  input rstn;
  input [63:0]spawn_out_tdata;
  input [0:0]spawn_out_tdest;
  input [0:0]spawn_out_tid;
  input spawn_out_tlast;
  output spawn_out_tready;
  input spawn_out_tvalid;
  input [63:0]taskwait_out_tdata;
  input [0:0]taskwait_out_tdest;
  input [0:0]taskwait_out_tid;
  input taskwait_out_tlast;
  output taskwait_out_tready;
  input taskwait_out_tvalid;

  wire clk_1;
  wire [63:0]cmdin_out_1_TDATA;
  wire [0:0]cmdin_out_1_TDEST;
  wire [0:0]cmdin_out_1_TID;
  wire cmdin_out_1_TLAST;
  wire cmdin_out_1_TREADY;
  wire cmdin_out_1_TVALID;
  wire [63:0]outS_common_Inter_lvl0_0_M00_AXIS_TDATA;
  wire [0:0]outS_common_Inter_lvl0_0_M00_AXIS_TDEST;
  wire [0:0]outS_common_Inter_lvl0_0_M00_AXIS_TID;
  wire [0:0]outS_common_Inter_lvl0_0_M00_AXIS_TLAST;
  wire [0:0]outS_common_Inter_lvl0_0_M00_AXIS_TREADY;
  wire [0:0]outS_common_Inter_lvl0_0_M00_AXIS_TVALID;
  wire [63:0]outS_common_Inter_lvl0_0_M01_AXIS_TDATA;
  wire outS_common_Inter_lvl0_0_M01_AXIS_TREADY;
  wire outS_common_Inter_lvl0_0_M01_AXIS_TVALID;
  wire [63:0]outS_ext_Inter_lvl0_0_M00_AXIS_TDATA;
  wire [0:0]outS_ext_Inter_lvl0_0_M00_AXIS_TID;
  wire outS_ext_Inter_lvl0_0_M00_AXIS_TREADY;
  wire outS_ext_Inter_lvl0_0_M00_AXIS_TVALID;
  wire rstn_1;
  wire [63:0]spawn_out_1_TDATA;
  wire [0:0]spawn_out_1_TDEST;
  wire [0:0]spawn_out_1_TID;
  wire spawn_out_1_TLAST;
  wire spawn_out_1_TREADY;
  wire spawn_out_1_TVALID;
  wire [63:0]taskwait_out_1_TDATA;
  wire [0:0]taskwait_out_1_TDEST;
  wire [0:0]taskwait_out_1_TID;
  wire taskwait_out_1_TLAST;
  wire taskwait_out_1_TREADY;
  wire taskwait_out_1_TVALID;

  assign M0_AXIS_tdata[63:0] = outS_ext_Inter_lvl0_0_M00_AXIS_TDATA;
  assign M0_AXIS_tid[0] = outS_ext_Inter_lvl0_0_M00_AXIS_TID;
  assign M0_AXIS_tvalid = outS_ext_Inter_lvl0_0_M00_AXIS_TVALID;
  assign M1_AXIS_tdata[63:0] = outS_common_Inter_lvl0_0_M01_AXIS_TDATA;
  assign M1_AXIS_tvalid = outS_common_Inter_lvl0_0_M01_AXIS_TVALID;
  assign clk_1 = clk;
  assign cmdin_out_1_TDATA = cmdin_out_tdata[63:0];
  assign cmdin_out_1_TDEST = cmdin_out_tdest[0];
  assign cmdin_out_1_TID = cmdin_out_tid[0];
  assign cmdin_out_1_TLAST = cmdin_out_tlast;
  assign cmdin_out_1_TVALID = cmdin_out_tvalid;
  assign cmdin_out_tready = cmdin_out_1_TREADY;
  assign outS_common_Inter_lvl0_0_M01_AXIS_TREADY = M1_AXIS_tready;
  assign outS_ext_Inter_lvl0_0_M00_AXIS_TREADY = M0_AXIS_tready;
  assign rstn_1 = rstn;
  assign spawn_out_1_TDATA = spawn_out_tdata[63:0];
  assign spawn_out_1_TDEST = spawn_out_tdest[0];
  assign spawn_out_1_TID = spawn_out_tid[0];
  assign spawn_out_1_TLAST = spawn_out_tlast;
  assign spawn_out_1_TVALID = spawn_out_tvalid;
  assign spawn_out_tready = spawn_out_1_TREADY;
  assign taskwait_out_1_TDATA = taskwait_out_tdata[63:0];
  assign taskwait_out_1_TDEST = taskwait_out_tdest[0];
  assign taskwait_out_1_TID = taskwait_out_tid[0];
  assign taskwait_out_1_TLAST = taskwait_out_tlast;
  assign taskwait_out_1_TVALID = taskwait_out_tvalid;
  assign taskwait_out_tready = taskwait_out_1_TREADY;
  matmul_design_outS_common_Inter_lvl0_0_0 outS_common_Inter_lvl0_0
       (.ACLK(clk_1),
        .ARESETN(rstn_1),
        .M00_AXIS_ACLK(clk_1),
        .M00_AXIS_ARESETN(rstn_1),
        .M00_AXIS_tdata(outS_common_Inter_lvl0_0_M00_AXIS_TDATA),
        .M00_AXIS_tdest(outS_common_Inter_lvl0_0_M00_AXIS_TDEST),
        .M00_AXIS_tid(outS_common_Inter_lvl0_0_M00_AXIS_TID),
        .M00_AXIS_tlast(outS_common_Inter_lvl0_0_M00_AXIS_TLAST),
        .M00_AXIS_tready(outS_common_Inter_lvl0_0_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(outS_common_Inter_lvl0_0_M00_AXIS_TVALID),
        .M01_AXIS_ACLK(clk_1),
        .M01_AXIS_ARESETN(rstn_1),
        .M01_AXIS_tdata(outS_common_Inter_lvl0_0_M01_AXIS_TDATA),
        .M01_AXIS_tready(outS_common_Inter_lvl0_0_M01_AXIS_TREADY),
        .M01_AXIS_tvalid(outS_common_Inter_lvl0_0_M01_AXIS_TVALID),
        .S00_AXIS_ACLK(clk_1),
        .S00_AXIS_ARESETN(rstn_1),
        .S00_AXIS_tdata(cmdin_out_1_TDATA),
        .S00_AXIS_tdest(cmdin_out_1_TDEST),
        .S00_AXIS_tid(cmdin_out_1_TID),
        .S00_AXIS_tlast(cmdin_out_1_TLAST),
        .S00_AXIS_tready(cmdin_out_1_TREADY),
        .S00_AXIS_tvalid(cmdin_out_1_TVALID));
  matmul_design_outS_ext_Inter_lvl0_0_0 outS_ext_Inter_lvl0_0
       (.ACLK(clk_1),
        .ARESETN(rstn_1),
        .M00_AXIS_ACLK(clk_1),
        .M00_AXIS_ARESETN(rstn_1),
        .M00_AXIS_tdata(outS_ext_Inter_lvl0_0_M00_AXIS_TDATA),
        .M00_AXIS_tid(outS_ext_Inter_lvl0_0_M00_AXIS_TID),
        .M00_AXIS_tready(outS_ext_Inter_lvl0_0_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(outS_ext_Inter_lvl0_0_M00_AXIS_TVALID),
        .S00_ARB_REQ_SUPPRESS(1'b0),
        .S00_AXIS_ACLK(clk_1),
        .S00_AXIS_ARESETN(rstn_1),
        .S00_AXIS_tdata(spawn_out_1_TDATA),
        .S00_AXIS_tdest(spawn_out_1_TDEST),
        .S00_AXIS_tid(spawn_out_1_TID),
        .S00_AXIS_tlast(spawn_out_1_TLAST),
        .S00_AXIS_tready(spawn_out_1_TREADY),
        .S00_AXIS_tvalid(spawn_out_1_TVALID),
        .S01_ARB_REQ_SUPPRESS(1'b0),
        .S01_AXIS_ACLK(clk_1),
        .S01_AXIS_ARESETN(rstn_1),
        .S01_AXIS_tdata(taskwait_out_1_TDATA),
        .S01_AXIS_tdest(taskwait_out_1_TDEST),
        .S01_AXIS_tid(taskwait_out_1_TID),
        .S01_AXIS_tlast(taskwait_out_1_TLAST),
        .S01_AXIS_tready(taskwait_out_1_TREADY),
        .S01_AXIS_tvalid(taskwait_out_1_TVALID),
        .S02_ARB_REQ_SUPPRESS(1'b0),
        .S02_AXIS_ACLK(clk_1),
        .S02_AXIS_ARESETN(rstn_1),
        .S02_AXIS_tdata(outS_common_Inter_lvl0_0_M00_AXIS_TDATA),
        .S02_AXIS_tdest(outS_common_Inter_lvl0_0_M00_AXIS_TDEST),
        .S02_AXIS_tid(outS_common_Inter_lvl0_0_M00_AXIS_TID),
        .S02_AXIS_tlast(outS_common_Inter_lvl0_0_M00_AXIS_TLAST),
        .S02_AXIS_tready(outS_common_Inter_lvl0_0_M00_AXIS_TREADY),
        .S02_AXIS_tvalid(outS_common_Inter_lvl0_0_M00_AXIS_TVALID));
endmodule

module m00_couplers_imp_13G0G8Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [33:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [6:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [31:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [33:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [6:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [31:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [6:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [6:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [63:0]M_AXI_wuser;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [6:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [31:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [6:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [31:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [6:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [6:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input [63:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [33:0]auto_cc_to_m00_couplers_ARADDR;
  wire [1:0]auto_cc_to_m00_couplers_ARBURST;
  wire [3:0]auto_cc_to_m00_couplers_ARCACHE;
  wire [6:0]auto_cc_to_m00_couplers_ARID;
  wire [7:0]auto_cc_to_m00_couplers_ARLEN;
  wire [0:0]auto_cc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire [3:0]auto_cc_to_m00_couplers_ARQOS;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire [3:0]auto_cc_to_m00_couplers_ARREGION;
  wire [2:0]auto_cc_to_m00_couplers_ARSIZE;
  wire [31:0]auto_cc_to_m00_couplers_ARUSER;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [33:0]auto_cc_to_m00_couplers_AWADDR;
  wire [1:0]auto_cc_to_m00_couplers_AWBURST;
  wire [3:0]auto_cc_to_m00_couplers_AWCACHE;
  wire [6:0]auto_cc_to_m00_couplers_AWID;
  wire [7:0]auto_cc_to_m00_couplers_AWLEN;
  wire [0:0]auto_cc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire [3:0]auto_cc_to_m00_couplers_AWQOS;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire [3:0]auto_cc_to_m00_couplers_AWREGION;
  wire [2:0]auto_cc_to_m00_couplers_AWSIZE;
  wire [31:0]auto_cc_to_m00_couplers_AWUSER;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire [6:0]auto_cc_to_m00_couplers_BID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [511:0]auto_cc_to_m00_couplers_RDATA;
  wire [6:0]auto_cc_to_m00_couplers_RID;
  wire auto_cc_to_m00_couplers_RLAST;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [511:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WLAST;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [63:0]auto_cc_to_m00_couplers_WSTRB;
  wire [63:0]auto_cc_to_m00_couplers_WUSER;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [63:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [6:0]m00_couplers_to_auto_cc_ARID;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire [31:0]m00_couplers_to_auto_cc_ARUSER;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [63:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [6:0]m00_couplers_to_auto_cc_AWID;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire [31:0]m00_couplers_to_auto_cc_AWUSER;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire [6:0]m00_couplers_to_auto_cc_BID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [511:0]m00_couplers_to_auto_cc_RDATA;
  wire [6:0]m00_couplers_to_auto_cc_RID;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [511:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [63:0]m00_couplers_to_auto_cc_WSTRB;
  wire [63:0]m00_couplers_to_auto_cc_WUSER;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[33:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[6:0] = auto_cc_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_cc_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_cc_to_m00_couplers_ARSIZE;
  assign M_AXI_aruser[31:0] = auto_cc_to_m00_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[33:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[6:0] = auto_cc_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_cc_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_cc_to_m00_couplers_AWSIZE;
  assign M_AXI_awuser[31:0] = auto_cc_to_m00_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wuser[63:0] = auto_cc_to_m00_couplers_WUSER;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[6:0] = m00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[6:0] = m00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BID = M_AXI_bid[6:0];
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m00_couplers_RID = M_AXI_rid[6:0];
  assign auto_cc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARID = S_AXI_arid[6:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARUSER = S_AXI_aruser[31:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWID = S_AXI_awid[6:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWUSER = S_AXI_awuser[31:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_cc_WUSER = S_AXI_wuser[63:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  matmul_design_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arregion(auto_cc_to_m00_couplers_ARREGION),
        .m_axi_arsize(auto_cc_to_m00_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_m00_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awregion(auto_cc_to_m00_couplers_AWREGION),
        .m_axi_awsize(auto_cc_to_m00_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_m00_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m00_couplers_BID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m00_couplers_RID),
        .m_axi_rlast(auto_cc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wuser(auto_cc_to_m00_couplers_WUSER),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[33:0]),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[33:0]),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_cc_BID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_cc_RID),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wuser(m00_couplers_to_auto_cc_WUSER),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_14AWHED
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [0:0]S_AXIS_tvalid;

  wire [63:0]m00_couplers_to_m00_couplers_TDATA;
  wire [0:0]m00_couplers_to_m00_couplers_TDEST;
  wire [0:0]m00_couplers_to_m00_couplers_TID;
  wire [0:0]m00_couplers_to_m00_couplers_TLAST;
  wire [0:0]m00_couplers_to_m00_couplers_TREADY;
  wire [0:0]m00_couplers_to_m00_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = m00_couplers_to_m00_couplers_TDATA;
  assign M_AXIS_tdest[0] = m00_couplers_to_m00_couplers_TDEST;
  assign M_AXIS_tid[0] = m00_couplers_to_m00_couplers_TID;
  assign M_AXIS_tlast[0] = m00_couplers_to_m00_couplers_TLAST;
  assign M_AXIS_tvalid[0] = m00_couplers_to_m00_couplers_TVALID;
  assign S_AXIS_tready[0] = m00_couplers_to_m00_couplers_TREADY;
  assign m00_couplers_to_m00_couplers_TDATA = S_AXIS_tdata[63:0];
  assign m00_couplers_to_m00_couplers_TDEST = S_AXIS_tdest[0];
  assign m00_couplers_to_m00_couplers_TID = S_AXIS_tid[0];
  assign m00_couplers_to_m00_couplers_TLAST = S_AXIS_tlast[0];
  assign m00_couplers_to_m00_couplers_TREADY = M_AXIS_tready[0];
  assign m00_couplers_to_m00_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module m00_couplers_imp_1C5ADFW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_1P1BUWM
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [1:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [0:0]S_AXIS_tvalid;

  wire [63:0]m00_couplers_to_m00_couplers_TDATA;
  wire [1:0]m00_couplers_to_m00_couplers_TDEST;
  wire [0:0]m00_couplers_to_m00_couplers_TID;
  wire [0:0]m00_couplers_to_m00_couplers_TLAST;
  wire [0:0]m00_couplers_to_m00_couplers_TREADY;
  wire [0:0]m00_couplers_to_m00_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = m00_couplers_to_m00_couplers_TDATA;
  assign M_AXIS_tdest[1:0] = m00_couplers_to_m00_couplers_TDEST;
  assign M_AXIS_tid[0] = m00_couplers_to_m00_couplers_TID;
  assign M_AXIS_tlast[0] = m00_couplers_to_m00_couplers_TLAST;
  assign M_AXIS_tvalid[0] = m00_couplers_to_m00_couplers_TVALID;
  assign S_AXIS_tready[0] = m00_couplers_to_m00_couplers_TREADY;
  assign m00_couplers_to_m00_couplers_TDATA = S_AXIS_tdata[63:0];
  assign m00_couplers_to_m00_couplers_TDEST = S_AXIS_tdest[1:0];
  assign m00_couplers_to_m00_couplers_TID = S_AXIS_tid[0];
  assign m00_couplers_to_m00_couplers_TLAST = S_AXIS_tlast[0];
  assign m00_couplers_to_m00_couplers_TREADY = M_AXIS_tready[0];
  assign m00_couplers_to_m00_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module m00_couplers_imp_66FOQX
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tid,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tid;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
  wire [63:0]auto_ss_slidr_to_m00_couplers_TDATA;
  wire [0:0]auto_ss_slidr_to_m00_couplers_TID;
  wire auto_ss_slidr_to_m00_couplers_TREADY;
  wire auto_ss_slidr_to_m00_couplers_TVALID;
  wire [63:0]m00_couplers_to_auto_ss_slidr_TDATA;
  wire [0:0]m00_couplers_to_auto_ss_slidr_TDEST;
  wire [0:0]m00_couplers_to_auto_ss_slidr_TID;
  wire m00_couplers_to_auto_ss_slidr_TLAST;
  wire m00_couplers_to_auto_ss_slidr_TREADY;
  wire m00_couplers_to_auto_ss_slidr_TVALID;

  assign M_AXIS_tdata[63:0] = auto_ss_slidr_to_m00_couplers_TDATA;
  assign M_AXIS_tid[0] = auto_ss_slidr_to_m00_couplers_TID;
  assign M_AXIS_tvalid = auto_ss_slidr_to_m00_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = m00_couplers_to_auto_ss_slidr_TREADY;
  assign auto_ss_slidr_to_m00_couplers_TREADY = M_AXIS_tready;
  assign m00_couplers_to_auto_ss_slidr_TDATA = S_AXIS_tdata[63:0];
  assign m00_couplers_to_auto_ss_slidr_TDEST = S_AXIS_tdest[0];
  assign m00_couplers_to_auto_ss_slidr_TID = S_AXIS_tid[0];
  assign m00_couplers_to_auto_ss_slidr_TLAST = S_AXIS_tlast;
  assign m00_couplers_to_auto_ss_slidr_TVALID = S_AXIS_tvalid;
  matmul_design_auto_ss_slidr_3 auto_ss_slidr
       (.aclk(S_AXIS_ACLK_1),
        .aresetn(S_AXIS_ARESETN_1),
        .m_axis_tdata(auto_ss_slidr_to_m00_couplers_TDATA),
        .m_axis_tid(auto_ss_slidr_to_m00_couplers_TID),
        .m_axis_tready(auto_ss_slidr_to_m00_couplers_TREADY),
        .m_axis_tvalid(auto_ss_slidr_to_m00_couplers_TVALID),
        .s_axis_tdata(m00_couplers_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(m00_couplers_to_auto_ss_slidr_TDEST),
        .s_axis_tid(m00_couplers_to_auto_ss_slidr_TID),
        .s_axis_tlast(m00_couplers_to_auto_ss_slidr_TLAST),
        .s_axis_tready(m00_couplers_to_auto_ss_slidr_TREADY),
        .s_axis_tvalid(m00_couplers_to_auto_ss_slidr_TVALID));
endmodule

module m00_couplers_imp_GQEHCB
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tid,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tid;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
  wire [63:0]auto_ss_slidr_to_m00_couplers_TDATA;
  wire [0:0]auto_ss_slidr_to_m00_couplers_TID;
  wire auto_ss_slidr_to_m00_couplers_TREADY;
  wire auto_ss_slidr_to_m00_couplers_TVALID;
  wire [63:0]m00_couplers_to_auto_ss_slidr_TDATA;
  wire [1:0]m00_couplers_to_auto_ss_slidr_TDEST;
  wire [0:0]m00_couplers_to_auto_ss_slidr_TID;
  wire m00_couplers_to_auto_ss_slidr_TLAST;
  wire m00_couplers_to_auto_ss_slidr_TREADY;
  wire m00_couplers_to_auto_ss_slidr_TVALID;

  assign M_AXIS_tdata[63:0] = auto_ss_slidr_to_m00_couplers_TDATA;
  assign M_AXIS_tid[0] = auto_ss_slidr_to_m00_couplers_TID;
  assign M_AXIS_tvalid = auto_ss_slidr_to_m00_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = m00_couplers_to_auto_ss_slidr_TREADY;
  assign auto_ss_slidr_to_m00_couplers_TREADY = M_AXIS_tready;
  assign m00_couplers_to_auto_ss_slidr_TDATA = S_AXIS_tdata[63:0];
  assign m00_couplers_to_auto_ss_slidr_TDEST = S_AXIS_tdest[1:0];
  assign m00_couplers_to_auto_ss_slidr_TID = S_AXIS_tid[0];
  assign m00_couplers_to_auto_ss_slidr_TLAST = S_AXIS_tlast;
  assign m00_couplers_to_auto_ss_slidr_TVALID = S_AXIS_tvalid;
  matmul_design_auto_ss_slidr_0 auto_ss_slidr
       (.aclk(S_AXIS_ACLK_1),
        .aresetn(S_AXIS_ARESETN_1),
        .m_axis_tdata(auto_ss_slidr_to_m00_couplers_TDATA),
        .m_axis_tid(auto_ss_slidr_to_m00_couplers_TID),
        .m_axis_tready(auto_ss_slidr_to_m00_couplers_TREADY),
        .m_axis_tvalid(auto_ss_slidr_to_m00_couplers_TVALID),
        .s_axis_tdata(m00_couplers_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(m00_couplers_to_auto_ss_slidr_TDEST),
        .s_axis_tid(m00_couplers_to_auto_ss_slidr_TID),
        .s_axis_tlast(m00_couplers_to_auto_ss_slidr_TLAST),
        .s_axis_tready(m00_couplers_to_auto_ss_slidr_TREADY),
        .s_axis_tvalid(m00_couplers_to_auto_ss_slidr_TVALID));
endmodule

module m00_couplers_imp_K7YZB3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_couplers_ARADDR;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [31:0]auto_cc_to_m00_couplers_AWADDR;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [3:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  matmul_design_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_Y4R9UX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1MPCR1N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m01_couplers_ARADDR;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [31:0]auto_cc_to_m01_couplers_AWADDR;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  matmul_design_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_1Q9UVLP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_2TVEM9
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
  wire [63:0]auto_ss_slidr_to_m01_couplers_TDATA;
  wire auto_ss_slidr_to_m01_couplers_TREADY;
  wire auto_ss_slidr_to_m01_couplers_TVALID;
  wire [63:0]m01_couplers_to_auto_ss_slidr_TDATA;
  wire [0:0]m01_couplers_to_auto_ss_slidr_TDEST;
  wire [0:0]m01_couplers_to_auto_ss_slidr_TID;
  wire m01_couplers_to_auto_ss_slidr_TLAST;
  wire m01_couplers_to_auto_ss_slidr_TREADY;
  wire m01_couplers_to_auto_ss_slidr_TVALID;

  assign M_AXIS_tdata[63:0] = auto_ss_slidr_to_m01_couplers_TDATA;
  assign M_AXIS_tvalid = auto_ss_slidr_to_m01_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = m01_couplers_to_auto_ss_slidr_TREADY;
  assign auto_ss_slidr_to_m01_couplers_TREADY = M_AXIS_tready;
  assign m01_couplers_to_auto_ss_slidr_TDATA = S_AXIS_tdata[63:0];
  assign m01_couplers_to_auto_ss_slidr_TDEST = S_AXIS_tdest[0];
  assign m01_couplers_to_auto_ss_slidr_TID = S_AXIS_tid[0];
  assign m01_couplers_to_auto_ss_slidr_TLAST = S_AXIS_tlast;
  assign m01_couplers_to_auto_ss_slidr_TVALID = S_AXIS_tvalid;
  matmul_design_auto_ss_slidr_4 auto_ss_slidr
       (.aclk(S_AXIS_ACLK_1),
        .aresetn(S_AXIS_ARESETN_1),
        .m_axis_tdata(auto_ss_slidr_to_m01_couplers_TDATA),
        .m_axis_tready(auto_ss_slidr_to_m01_couplers_TREADY),
        .m_axis_tvalid(auto_ss_slidr_to_m01_couplers_TVALID),
        .s_axis_tdata(m01_couplers_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(m01_couplers_to_auto_ss_slidr_TDEST),
        .s_axis_tid(m01_couplers_to_auto_ss_slidr_TID),
        .s_axis_tlast(m01_couplers_to_auto_ss_slidr_TLAST),
        .s_axis_tready(m01_couplers_to_auto_ss_slidr_TREADY),
        .s_axis_tvalid(m01_couplers_to_auto_ss_slidr_TVALID));
endmodule

module m01_couplers_imp_5XAVTJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [33:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [6:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [31:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [33:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [6:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [31:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [6:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [6:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [63:0]M_AXI_wuser;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [6:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [31:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [6:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [31:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [6:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [6:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input [63:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [33:0]auto_cc_to_m01_couplers_ARADDR;
  wire [1:0]auto_cc_to_m01_couplers_ARBURST;
  wire [3:0]auto_cc_to_m01_couplers_ARCACHE;
  wire [6:0]auto_cc_to_m01_couplers_ARID;
  wire [7:0]auto_cc_to_m01_couplers_ARLEN;
  wire [0:0]auto_cc_to_m01_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire [3:0]auto_cc_to_m01_couplers_ARQOS;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire [3:0]auto_cc_to_m01_couplers_ARREGION;
  wire [2:0]auto_cc_to_m01_couplers_ARSIZE;
  wire [31:0]auto_cc_to_m01_couplers_ARUSER;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [33:0]auto_cc_to_m01_couplers_AWADDR;
  wire [1:0]auto_cc_to_m01_couplers_AWBURST;
  wire [3:0]auto_cc_to_m01_couplers_AWCACHE;
  wire [6:0]auto_cc_to_m01_couplers_AWID;
  wire [7:0]auto_cc_to_m01_couplers_AWLEN;
  wire [0:0]auto_cc_to_m01_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire [3:0]auto_cc_to_m01_couplers_AWQOS;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire [3:0]auto_cc_to_m01_couplers_AWREGION;
  wire [2:0]auto_cc_to_m01_couplers_AWSIZE;
  wire [31:0]auto_cc_to_m01_couplers_AWUSER;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire [6:0]auto_cc_to_m01_couplers_BID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [511:0]auto_cc_to_m01_couplers_RDATA;
  wire [6:0]auto_cc_to_m01_couplers_RID;
  wire auto_cc_to_m01_couplers_RLAST;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [511:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WLAST;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [63:0]auto_cc_to_m01_couplers_WSTRB;
  wire [63:0]auto_cc_to_m01_couplers_WUSER;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [63:0]m01_couplers_to_auto_cc_ARADDR;
  wire [1:0]m01_couplers_to_auto_cc_ARBURST;
  wire [3:0]m01_couplers_to_auto_cc_ARCACHE;
  wire [6:0]m01_couplers_to_auto_cc_ARID;
  wire [7:0]m01_couplers_to_auto_cc_ARLEN;
  wire [0:0]m01_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire [3:0]m01_couplers_to_auto_cc_ARQOS;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire [3:0]m01_couplers_to_auto_cc_ARREGION;
  wire [2:0]m01_couplers_to_auto_cc_ARSIZE;
  wire [31:0]m01_couplers_to_auto_cc_ARUSER;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [63:0]m01_couplers_to_auto_cc_AWADDR;
  wire [1:0]m01_couplers_to_auto_cc_AWBURST;
  wire [3:0]m01_couplers_to_auto_cc_AWCACHE;
  wire [6:0]m01_couplers_to_auto_cc_AWID;
  wire [7:0]m01_couplers_to_auto_cc_AWLEN;
  wire [0:0]m01_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire [3:0]m01_couplers_to_auto_cc_AWQOS;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire [3:0]m01_couplers_to_auto_cc_AWREGION;
  wire [2:0]m01_couplers_to_auto_cc_AWSIZE;
  wire [31:0]m01_couplers_to_auto_cc_AWUSER;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire [6:0]m01_couplers_to_auto_cc_BID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [511:0]m01_couplers_to_auto_cc_RDATA;
  wire [6:0]m01_couplers_to_auto_cc_RID;
  wire m01_couplers_to_auto_cc_RLAST;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [511:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WLAST;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [63:0]m01_couplers_to_auto_cc_WSTRB;
  wire [63:0]m01_couplers_to_auto_cc_WUSER;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[33:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[6:0] = auto_cc_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m01_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_cc_to_m01_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_cc_to_m01_couplers_ARSIZE;
  assign M_AXI_aruser[31:0] = auto_cc_to_m01_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[33:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[6:0] = auto_cc_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m01_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_cc_to_m01_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_cc_to_m01_couplers_AWSIZE;
  assign M_AXI_awuser[31:0] = auto_cc_to_m01_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wuser[63:0] = auto_cc_to_m01_couplers_WUSER;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[6:0] = m01_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[6:0] = m01_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BID = M_AXI_bid[6:0];
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m01_couplers_RID = M_AXI_rid[6:0];
  assign auto_cc_to_m01_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m01_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_cc_ARID = S_AXI_arid[6:0];
  assign m01_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_cc_ARUSER = S_AXI_aruser[31:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m01_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_cc_AWID = S_AXI_awid[6:0];
  assign m01_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_cc_AWUSER = S_AXI_awuser[31:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m01_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m01_couplers_to_auto_cc_WUSER = S_AXI_wuser[63:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  matmul_design_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m01_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m01_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m01_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m01_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m01_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m01_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arregion(auto_cc_to_m01_couplers_ARREGION),
        .m_axi_arsize(auto_cc_to_m01_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_m01_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m01_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m01_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m01_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m01_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m01_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m01_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awregion(auto_cc_to_m01_couplers_AWREGION),
        .m_axi_awsize(auto_cc_to_m01_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_m01_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m01_couplers_BID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m01_couplers_RID),
        .m_axi_rlast(auto_cc_to_m01_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m01_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wuser(auto_cc_to_m01_couplers_WUSER),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[33:0]),
        .s_axi_arburst(m01_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m01_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m01_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m01_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[33:0]),
        .s_axi_awburst(m01_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m01_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m01_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_cc_BID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m01_couplers_to_auto_cc_RID),
        .s_axi_rlast(m01_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wuser(m01_couplers_to_auto_cc_WUSER),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_F8Z61K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_HWM676
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tid;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
  wire [63:0]auto_ss_slidr_to_m01_couplers_TDATA;
  wire [0:0]auto_ss_slidr_to_m01_couplers_TID;
  wire auto_ss_slidr_to_m01_couplers_TLAST;
  wire auto_ss_slidr_to_m01_couplers_TREADY;
  wire auto_ss_slidr_to_m01_couplers_TVALID;
  wire [63:0]m01_couplers_to_auto_ss_slidr_TDATA;
  wire [1:0]m01_couplers_to_auto_ss_slidr_TDEST;
  wire [0:0]m01_couplers_to_auto_ss_slidr_TID;
  wire m01_couplers_to_auto_ss_slidr_TLAST;
  wire m01_couplers_to_auto_ss_slidr_TREADY;
  wire m01_couplers_to_auto_ss_slidr_TVALID;

  assign M_AXIS_tdata[63:0] = auto_ss_slidr_to_m01_couplers_TDATA;
  assign M_AXIS_tid[0] = auto_ss_slidr_to_m01_couplers_TID;
  assign M_AXIS_tlast = auto_ss_slidr_to_m01_couplers_TLAST;
  assign M_AXIS_tvalid = auto_ss_slidr_to_m01_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = m01_couplers_to_auto_ss_slidr_TREADY;
  assign auto_ss_slidr_to_m01_couplers_TREADY = M_AXIS_tready;
  assign m01_couplers_to_auto_ss_slidr_TDATA = S_AXIS_tdata[63:0];
  assign m01_couplers_to_auto_ss_slidr_TDEST = S_AXIS_tdest[1:0];
  assign m01_couplers_to_auto_ss_slidr_TID = S_AXIS_tid[0];
  assign m01_couplers_to_auto_ss_slidr_TLAST = S_AXIS_tlast;
  assign m01_couplers_to_auto_ss_slidr_TVALID = S_AXIS_tvalid;
  matmul_design_auto_ss_slidr_1 auto_ss_slidr
       (.aclk(S_AXIS_ACLK_1),
        .aresetn(S_AXIS_ARESETN_1),
        .m_axis_tdata(auto_ss_slidr_to_m01_couplers_TDATA),
        .m_axis_tid(auto_ss_slidr_to_m01_couplers_TID),
        .m_axis_tlast(auto_ss_slidr_to_m01_couplers_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m01_couplers_TREADY),
        .m_axis_tvalid(auto_ss_slidr_to_m01_couplers_TVALID),
        .s_axis_tdata(m01_couplers_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(m01_couplers_to_auto_ss_slidr_TDEST),
        .s_axis_tid(m01_couplers_to_auto_ss_slidr_TID),
        .s_axis_tlast(m01_couplers_to_auto_ss_slidr_TLAST),
        .s_axis_tready(m01_couplers_to_auto_ss_slidr_TREADY),
        .s_axis_tvalid(m01_couplers_to_auto_ss_slidr_TVALID));
endmodule

module m02_couplers_imp_15S4Y0W
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_19WTADY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_F3OJ4V
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tid;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire S_AXIS_ACLK_1;
  wire S_AXIS_ARESETN_1;
  wire [63:0]auto_ss_slidr_to_m02_couplers_TDATA;
  wire [0:0]auto_ss_slidr_to_m02_couplers_TID;
  wire auto_ss_slidr_to_m02_couplers_TLAST;
  wire auto_ss_slidr_to_m02_couplers_TREADY;
  wire auto_ss_slidr_to_m02_couplers_TVALID;
  wire [63:0]m02_couplers_to_auto_ss_slidr_TDATA;
  wire [1:0]m02_couplers_to_auto_ss_slidr_TDEST;
  wire [0:0]m02_couplers_to_auto_ss_slidr_TID;
  wire m02_couplers_to_auto_ss_slidr_TLAST;
  wire m02_couplers_to_auto_ss_slidr_TREADY;
  wire m02_couplers_to_auto_ss_slidr_TVALID;

  assign M_AXIS_tdata[63:0] = auto_ss_slidr_to_m02_couplers_TDATA;
  assign M_AXIS_tid[0] = auto_ss_slidr_to_m02_couplers_TID;
  assign M_AXIS_tlast = auto_ss_slidr_to_m02_couplers_TLAST;
  assign M_AXIS_tvalid = auto_ss_slidr_to_m02_couplers_TVALID;
  assign S_AXIS_ACLK_1 = S_AXIS_ACLK;
  assign S_AXIS_ARESETN_1 = S_AXIS_ARESETN;
  assign S_AXIS_tready = m02_couplers_to_auto_ss_slidr_TREADY;
  assign auto_ss_slidr_to_m02_couplers_TREADY = M_AXIS_tready;
  assign m02_couplers_to_auto_ss_slidr_TDATA = S_AXIS_tdata[63:0];
  assign m02_couplers_to_auto_ss_slidr_TDEST = S_AXIS_tdest[1:0];
  assign m02_couplers_to_auto_ss_slidr_TID = S_AXIS_tid[0];
  assign m02_couplers_to_auto_ss_slidr_TLAST = S_AXIS_tlast;
  assign m02_couplers_to_auto_ss_slidr_TVALID = S_AXIS_tvalid;
  matmul_design_auto_ss_slidr_2 auto_ss_slidr
       (.aclk(S_AXIS_ACLK_1),
        .aresetn(S_AXIS_ARESETN_1),
        .m_axis_tdata(auto_ss_slidr_to_m02_couplers_TDATA),
        .m_axis_tid(auto_ss_slidr_to_m02_couplers_TID),
        .m_axis_tlast(auto_ss_slidr_to_m02_couplers_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m02_couplers_TREADY),
        .m_axis_tvalid(auto_ss_slidr_to_m02_couplers_TVALID),
        .s_axis_tdata(m02_couplers_to_auto_ss_slidr_TDATA),
        .s_axis_tdest(m02_couplers_to_auto_ss_slidr_TDEST),
        .s_axis_tid(m02_couplers_to_auto_ss_slidr_TID),
        .s_axis_tlast(m02_couplers_to_auto_ss_slidr_TLAST),
        .s_axis_tready(m02_couplers_to_auto_ss_slidr_TREADY),
        .s_axis_tvalid(m02_couplers_to_auto_ss_slidr_TVALID));
endmodule

module m02_couplers_imp_HRXAW5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1OVEU29
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module matmulBlock_0_imp_HH94YJ
   (aclk,
    inStream_tdata,
    inStream_tready,
    inStream_tvalid,
    managed_aresetn,
    memport_araddr,
    memport_arburst,
    memport_arcache,
    memport_arid,
    memport_arlen,
    memport_arlock,
    memport_arprot,
    memport_arqos,
    memport_arready,
    memport_arregion,
    memport_arsize,
    memport_arvalid,
    memport_awaddr,
    memport_awburst,
    memport_awcache,
    memport_awid,
    memport_awlen,
    memport_awlock,
    memport_awprot,
    memport_awqos,
    memport_awready,
    memport_awregion,
    memport_awsize,
    memport_awvalid,
    memport_bid,
    memport_bready,
    memport_bresp,
    memport_bvalid,
    memport_rdata,
    memport_rid,
    memport_rlast,
    memport_rready,
    memport_rresp,
    memport_rvalid,
    memport_wdata,
    memport_wlast,
    memport_wready,
    memport_wstrb,
    memport_wvalid,
    outStream_tdata,
    outStream_tdest,
    outStream_tid,
    outStream_tlast,
    outStream_tready,
    outStream_tvalid);
  input aclk;
  input [63:0]inStream_tdata;
  output inStream_tready;
  input inStream_tvalid;
  input managed_aresetn;
  output [63:0]memport_araddr;
  output [1:0]memport_arburst;
  output [3:0]memport_arcache;
  output [0:0]memport_arid;
  output [7:0]memport_arlen;
  output [1:0]memport_arlock;
  output [2:0]memport_arprot;
  output [3:0]memport_arqos;
  input memport_arready;
  output [3:0]memport_arregion;
  output [2:0]memport_arsize;
  output memport_arvalid;
  output [63:0]memport_awaddr;
  output [1:0]memport_awburst;
  output [3:0]memport_awcache;
  output [0:0]memport_awid;
  output [7:0]memport_awlen;
  output [1:0]memport_awlock;
  output [2:0]memport_awprot;
  output [3:0]memport_awqos;
  input memport_awready;
  output [3:0]memport_awregion;
  output [2:0]memport_awsize;
  output memport_awvalid;
  input [0:0]memport_bid;
  output memport_bready;
  input [1:0]memport_bresp;
  input memport_bvalid;
  input [127:0]memport_rdata;
  input [0:0]memport_rid;
  input memport_rlast;
  output memport_rready;
  input [1:0]memport_rresp;
  input memport_rvalid;
  output [127:0]memport_wdata;
  output memport_wlast;
  input memport_wready;
  output [15:0]memport_wstrb;
  output memport_wvalid;
  output [63:0]outStream_tdata;
  output [1:0]outStream_tdest;
  output [0:0]outStream_tid;
  output outStream_tlast;
  input outStream_tready;
  output outStream_tvalid;

  wire [63:0]accID_M_AXIS_TDATA;
  wire [1:0]accID_M_AXIS_TDEST;
  wire [0:0]accID_M_AXIS_TID;
  wire accID_M_AXIS_TLAST;
  wire accID_M_AXIS_TREADY;
  wire accID_M_AXIS_TVALID;
  wire aclk_1;
  wire [63:0]inStream_1_TDATA;
  wire inStream_1_TREADY;
  wire inStream_1_TVALID;
  wire managed_aresetn_1;
  wire [63:0]matmulBlock_ompss_m_axi_mcxx_memport_ARADDR;
  wire [1:0]matmulBlock_ompss_m_axi_mcxx_memport_ARBURST;
  wire [3:0]matmulBlock_ompss_m_axi_mcxx_memport_ARCACHE;
  wire [0:0]matmulBlock_ompss_m_axi_mcxx_memport_ARID;
  wire [7:0]matmulBlock_ompss_m_axi_mcxx_memport_ARLEN;
  wire [1:0]matmulBlock_ompss_m_axi_mcxx_memport_ARLOCK;
  wire [2:0]matmulBlock_ompss_m_axi_mcxx_memport_ARPROT;
  wire [3:0]matmulBlock_ompss_m_axi_mcxx_memport_ARQOS;
  wire matmulBlock_ompss_m_axi_mcxx_memport_ARREADY;
  wire [3:0]matmulBlock_ompss_m_axi_mcxx_memport_ARREGION;
  wire [2:0]matmulBlock_ompss_m_axi_mcxx_memport_ARSIZE;
  wire matmulBlock_ompss_m_axi_mcxx_memport_ARVALID;
  wire [63:0]matmulBlock_ompss_m_axi_mcxx_memport_AWADDR;
  wire [1:0]matmulBlock_ompss_m_axi_mcxx_memport_AWBURST;
  wire [3:0]matmulBlock_ompss_m_axi_mcxx_memport_AWCACHE;
  wire [0:0]matmulBlock_ompss_m_axi_mcxx_memport_AWID;
  wire [7:0]matmulBlock_ompss_m_axi_mcxx_memport_AWLEN;
  wire [1:0]matmulBlock_ompss_m_axi_mcxx_memport_AWLOCK;
  wire [2:0]matmulBlock_ompss_m_axi_mcxx_memport_AWPROT;
  wire [3:0]matmulBlock_ompss_m_axi_mcxx_memport_AWQOS;
  wire matmulBlock_ompss_m_axi_mcxx_memport_AWREADY;
  wire [3:0]matmulBlock_ompss_m_axi_mcxx_memport_AWREGION;
  wire [2:0]matmulBlock_ompss_m_axi_mcxx_memport_AWSIZE;
  wire matmulBlock_ompss_m_axi_mcxx_memport_AWVALID;
  wire [0:0]matmulBlock_ompss_m_axi_mcxx_memport_BID;
  wire matmulBlock_ompss_m_axi_mcxx_memport_BREADY;
  wire [1:0]matmulBlock_ompss_m_axi_mcxx_memport_BRESP;
  wire matmulBlock_ompss_m_axi_mcxx_memport_BVALID;
  wire [127:0]matmulBlock_ompss_m_axi_mcxx_memport_RDATA;
  wire [0:0]matmulBlock_ompss_m_axi_mcxx_memport_RID;
  wire matmulBlock_ompss_m_axi_mcxx_memport_RLAST;
  wire matmulBlock_ompss_m_axi_mcxx_memport_RREADY;
  wire [1:0]matmulBlock_ompss_m_axi_mcxx_memport_RRESP;
  wire matmulBlock_ompss_m_axi_mcxx_memport_RVALID;
  wire [127:0]matmulBlock_ompss_m_axi_mcxx_memport_WDATA;
  wire matmulBlock_ompss_m_axi_mcxx_memport_WLAST;
  wire matmulBlock_ompss_m_axi_mcxx_memport_WREADY;
  wire [15:0]matmulBlock_ompss_m_axi_mcxx_memport_WSTRB;
  wire matmulBlock_ompss_m_axi_mcxx_memport_WVALID;
  wire [63:0]matmulBlock_ompss_mcxx_outPort_TDATA;
  wire [1:0]matmulBlock_ompss_mcxx_outPort_TDEST;
  wire [0:0]matmulBlock_ompss_mcxx_outPort_TLAST;
  wire matmulBlock_ompss_mcxx_outPort_TREADY;
  wire matmulBlock_ompss_mcxx_outPort_TVALID;

  assign accID_M_AXIS_TREADY = outStream_tready;
  assign aclk_1 = aclk;
  assign inStream_1_TDATA = inStream_tdata[63:0];
  assign inStream_1_TVALID = inStream_tvalid;
  assign inStream_tready = inStream_1_TREADY;
  assign managed_aresetn_1 = managed_aresetn;
  assign matmulBlock_ompss_m_axi_mcxx_memport_ARREADY = memport_arready;
  assign matmulBlock_ompss_m_axi_mcxx_memport_AWREADY = memport_awready;
  assign matmulBlock_ompss_m_axi_mcxx_memport_BID = memport_bid[0];
  assign matmulBlock_ompss_m_axi_mcxx_memport_BRESP = memport_bresp[1:0];
  assign matmulBlock_ompss_m_axi_mcxx_memport_BVALID = memport_bvalid;
  assign matmulBlock_ompss_m_axi_mcxx_memport_RDATA = memport_rdata[127:0];
  assign matmulBlock_ompss_m_axi_mcxx_memport_RID = memport_rid[0];
  assign matmulBlock_ompss_m_axi_mcxx_memport_RLAST = memport_rlast;
  assign matmulBlock_ompss_m_axi_mcxx_memport_RRESP = memport_rresp[1:0];
  assign matmulBlock_ompss_m_axi_mcxx_memport_RVALID = memport_rvalid;
  assign matmulBlock_ompss_m_axi_mcxx_memport_WREADY = memport_wready;
  assign memport_araddr[63:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARADDR;
  assign memport_arburst[1:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARBURST;
  assign memport_arcache[3:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARCACHE;
  assign memport_arid[0] = matmulBlock_ompss_m_axi_mcxx_memport_ARID;
  assign memport_arlen[7:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARLEN;
  assign memport_arlock[1:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARLOCK;
  assign memport_arprot[2:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARPROT;
  assign memport_arqos[3:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARQOS;
  assign memport_arregion[3:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARREGION;
  assign memport_arsize[2:0] = matmulBlock_ompss_m_axi_mcxx_memport_ARSIZE;
  assign memport_arvalid = matmulBlock_ompss_m_axi_mcxx_memport_ARVALID;
  assign memport_awaddr[63:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWADDR;
  assign memport_awburst[1:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWBURST;
  assign memport_awcache[3:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWCACHE;
  assign memport_awid[0] = matmulBlock_ompss_m_axi_mcxx_memport_AWID;
  assign memport_awlen[7:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWLEN;
  assign memport_awlock[1:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWLOCK;
  assign memport_awprot[2:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWPROT;
  assign memport_awqos[3:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWQOS;
  assign memport_awregion[3:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWREGION;
  assign memport_awsize[2:0] = matmulBlock_ompss_m_axi_mcxx_memport_AWSIZE;
  assign memport_awvalid = matmulBlock_ompss_m_axi_mcxx_memport_AWVALID;
  assign memport_bready = matmulBlock_ompss_m_axi_mcxx_memport_BREADY;
  assign memport_rready = matmulBlock_ompss_m_axi_mcxx_memport_RREADY;
  assign memport_wdata[127:0] = matmulBlock_ompss_m_axi_mcxx_memport_WDATA;
  assign memport_wlast = matmulBlock_ompss_m_axi_mcxx_memport_WLAST;
  assign memport_wstrb[15:0] = matmulBlock_ompss_m_axi_mcxx_memport_WSTRB;
  assign memport_wvalid = matmulBlock_ompss_m_axi_mcxx_memport_WVALID;
  assign outStream_tdata[63:0] = accID_M_AXIS_TDATA;
  assign outStream_tdest[1:0] = accID_M_AXIS_TDEST;
  assign outStream_tid[0] = accID_M_AXIS_TID;
  assign outStream_tlast = accID_M_AXIS_TLAST;
  assign outStream_tvalid = accID_M_AXIS_TVALID;
  matmul_design_accID_1 accID
       (.M_AXIS_tdata(accID_M_AXIS_TDATA),
        .M_AXIS_tdest(accID_M_AXIS_TDEST),
        .M_AXIS_tid(accID_M_AXIS_TID),
        .M_AXIS_tlast(accID_M_AXIS_TLAST),
        .M_AXIS_tready(accID_M_AXIS_TREADY),
        .M_AXIS_tvalid(accID_M_AXIS_TVALID),
        .S_AXIS_tdata(matmulBlock_ompss_mcxx_outPort_TDATA),
        .S_AXIS_tdest(matmulBlock_ompss_mcxx_outPort_TDEST),
        .S_AXIS_tlast(matmulBlock_ompss_mcxx_outPort_TLAST),
        .S_AXIS_tready(matmulBlock_ompss_mcxx_outPort_TREADY),
        .S_AXIS_tvalid(matmulBlock_ompss_mcxx_outPort_TVALID),
        .aresetn(managed_aresetn_1),
        .clk(aclk_1));
  matmul_design_matmulBlock_ompss_0 matmulBlock_ompss
       (.ap_clk(aclk_1),
        .ap_rst_n(managed_aresetn_1),
        .m_axi_mcxx_memport_ARADDR(matmulBlock_ompss_m_axi_mcxx_memport_ARADDR),
        .m_axi_mcxx_memport_ARBURST(matmulBlock_ompss_m_axi_mcxx_memport_ARBURST),
        .m_axi_mcxx_memport_ARCACHE(matmulBlock_ompss_m_axi_mcxx_memport_ARCACHE),
        .m_axi_mcxx_memport_ARID(matmulBlock_ompss_m_axi_mcxx_memport_ARID),
        .m_axi_mcxx_memport_ARLEN(matmulBlock_ompss_m_axi_mcxx_memport_ARLEN),
        .m_axi_mcxx_memport_ARLOCK(matmulBlock_ompss_m_axi_mcxx_memport_ARLOCK),
        .m_axi_mcxx_memport_ARPROT(matmulBlock_ompss_m_axi_mcxx_memport_ARPROT),
        .m_axi_mcxx_memport_ARQOS(matmulBlock_ompss_m_axi_mcxx_memport_ARQOS),
        .m_axi_mcxx_memport_ARREADY(matmulBlock_ompss_m_axi_mcxx_memport_ARREADY),
        .m_axi_mcxx_memport_ARREGION(matmulBlock_ompss_m_axi_mcxx_memport_ARREGION),
        .m_axi_mcxx_memport_ARSIZE(matmulBlock_ompss_m_axi_mcxx_memport_ARSIZE),
        .m_axi_mcxx_memport_ARVALID(matmulBlock_ompss_m_axi_mcxx_memport_ARVALID),
        .m_axi_mcxx_memport_AWADDR(matmulBlock_ompss_m_axi_mcxx_memport_AWADDR),
        .m_axi_mcxx_memport_AWBURST(matmulBlock_ompss_m_axi_mcxx_memport_AWBURST),
        .m_axi_mcxx_memport_AWCACHE(matmulBlock_ompss_m_axi_mcxx_memport_AWCACHE),
        .m_axi_mcxx_memport_AWID(matmulBlock_ompss_m_axi_mcxx_memport_AWID),
        .m_axi_mcxx_memport_AWLEN(matmulBlock_ompss_m_axi_mcxx_memport_AWLEN),
        .m_axi_mcxx_memport_AWLOCK(matmulBlock_ompss_m_axi_mcxx_memport_AWLOCK),
        .m_axi_mcxx_memport_AWPROT(matmulBlock_ompss_m_axi_mcxx_memport_AWPROT),
        .m_axi_mcxx_memport_AWQOS(matmulBlock_ompss_m_axi_mcxx_memport_AWQOS),
        .m_axi_mcxx_memport_AWREADY(matmulBlock_ompss_m_axi_mcxx_memport_AWREADY),
        .m_axi_mcxx_memport_AWREGION(matmulBlock_ompss_m_axi_mcxx_memport_AWREGION),
        .m_axi_mcxx_memport_AWSIZE(matmulBlock_ompss_m_axi_mcxx_memport_AWSIZE),
        .m_axi_mcxx_memport_AWVALID(matmulBlock_ompss_m_axi_mcxx_memport_AWVALID),
        .m_axi_mcxx_memport_BID(matmulBlock_ompss_m_axi_mcxx_memport_BID),
        .m_axi_mcxx_memport_BREADY(matmulBlock_ompss_m_axi_mcxx_memport_BREADY),
        .m_axi_mcxx_memport_BRESP(matmulBlock_ompss_m_axi_mcxx_memport_BRESP),
        .m_axi_mcxx_memport_BVALID(matmulBlock_ompss_m_axi_mcxx_memport_BVALID),
        .m_axi_mcxx_memport_RDATA(matmulBlock_ompss_m_axi_mcxx_memport_RDATA),
        .m_axi_mcxx_memport_RID(matmulBlock_ompss_m_axi_mcxx_memport_RID),
        .m_axi_mcxx_memport_RLAST(matmulBlock_ompss_m_axi_mcxx_memport_RLAST),
        .m_axi_mcxx_memport_RREADY(matmulBlock_ompss_m_axi_mcxx_memport_RREADY),
        .m_axi_mcxx_memport_RRESP(matmulBlock_ompss_m_axi_mcxx_memport_RRESP),
        .m_axi_mcxx_memport_RVALID(matmulBlock_ompss_m_axi_mcxx_memport_RVALID),
        .m_axi_mcxx_memport_WDATA(matmulBlock_ompss_m_axi_mcxx_memport_WDATA),
        .m_axi_mcxx_memport_WLAST(matmulBlock_ompss_m_axi_mcxx_memport_WLAST),
        .m_axi_mcxx_memport_WREADY(matmulBlock_ompss_m_axi_mcxx_memport_WREADY),
        .m_axi_mcxx_memport_WSTRB(matmulBlock_ompss_m_axi_mcxx_memport_WSTRB),
        .m_axi_mcxx_memport_WVALID(matmulBlock_ompss_m_axi_mcxx_memport_WVALID),
        .mcxx_inPort_TDATA(inStream_1_TDATA),
        .mcxx_inPort_TREADY(inStream_1_TREADY),
        .mcxx_inPort_TVALID(inStream_1_TVALID),
        .mcxx_outPort_TDATA(matmulBlock_ompss_mcxx_outPort_TDATA),
        .mcxx_outPort_TDEST(matmulBlock_ompss_mcxx_outPort_TDEST),
        .mcxx_outPort_TLAST(matmulBlock_ompss_mcxx_outPort_TLAST),
        .mcxx_outPort_TREADY(matmulBlock_ompss_mcxx_outPort_TREADY),
        .mcxx_outPort_TVALID(matmulBlock_ompss_mcxx_outPort_TVALID));
endmodule

module matmulFPGA_0_imp_1CD7ROQ
   (a_araddr,
    a_arburst,
    a_arcache,
    a_arid,
    a_arlen,
    a_arlock,
    a_arprot,
    a_arqos,
    a_arready,
    a_arregion,
    a_arsize,
    a_arvalid,
    a_rdata,
    a_rid,
    a_rlast,
    a_rready,
    a_rresp,
    a_rvalid,
    aclk,
    b_araddr,
    b_arburst,
    b_arcache,
    b_arid,
    b_arlen,
    b_arlock,
    b_arprot,
    b_arqos,
    b_arready,
    b_arregion,
    b_arsize,
    b_arvalid,
    b_rdata,
    b_rid,
    b_rlast,
    b_rready,
    b_rresp,
    b_rvalid,
    c_araddr,
    c_arburst,
    c_arcache,
    c_arid,
    c_arlen,
    c_arlock,
    c_arprot,
    c_arqos,
    c_arready,
    c_arregion,
    c_arsize,
    c_arvalid,
    c_rdata,
    c_rid,
    c_rlast,
    c_rready,
    c_rresp,
    c_rvalid,
    inStream_tdata,
    inStream_tid,
    inStream_tready,
    inStream_tvalid,
    managed_aresetn,
    outStream_tdata,
    outStream_tdest,
    outStream_tid,
    outStream_tlast,
    outStream_tready,
    outStream_tvalid);
  output [63:0]a_araddr;
  output [1:0]a_arburst;
  output [3:0]a_arcache;
  output [0:0]a_arid;
  output [7:0]a_arlen;
  output [1:0]a_arlock;
  output [2:0]a_arprot;
  output [3:0]a_arqos;
  input a_arready;
  output [3:0]a_arregion;
  output [2:0]a_arsize;
  output a_arvalid;
  input [31:0]a_rdata;
  input [0:0]a_rid;
  input a_rlast;
  output a_rready;
  input [1:0]a_rresp;
  input a_rvalid;
  input aclk;
  output [63:0]b_araddr;
  output [1:0]b_arburst;
  output [3:0]b_arcache;
  output [0:0]b_arid;
  output [7:0]b_arlen;
  output [1:0]b_arlock;
  output [2:0]b_arprot;
  output [3:0]b_arqos;
  input b_arready;
  output [3:0]b_arregion;
  output [2:0]b_arsize;
  output b_arvalid;
  input [31:0]b_rdata;
  input [0:0]b_rid;
  input b_rlast;
  output b_rready;
  input [1:0]b_rresp;
  input b_rvalid;
  output [63:0]c_araddr;
  output [1:0]c_arburst;
  output [3:0]c_arcache;
  output [0:0]c_arid;
  output [7:0]c_arlen;
  output [1:0]c_arlock;
  output [2:0]c_arprot;
  output [3:0]c_arqos;
  input c_arready;
  output [3:0]c_arregion;
  output [2:0]c_arsize;
  output c_arvalid;
  input [31:0]c_rdata;
  input [0:0]c_rid;
  input c_rlast;
  output c_rready;
  input [1:0]c_rresp;
  input c_rvalid;
  input [63:0]inStream_tdata;
  input [0:0]inStream_tid;
  output inStream_tready;
  input inStream_tvalid;
  input managed_aresetn;
  output [63:0]outStream_tdata;
  output [1:0]outStream_tdest;
  output [0:0]outStream_tid;
  output outStream_tlast;
  input outStream_tready;
  output outStream_tvalid;

  wire [63:0]accID_M_AXIS_TDATA;
  wire [1:0]accID_M_AXIS_TDEST;
  wire [0:0]accID_M_AXIS_TID;
  wire accID_M_AXIS_TLAST;
  wire accID_M_AXIS_TREADY;
  wire accID_M_AXIS_TVALID;
  wire aclk_1;
  wire [63:0]axis_tid_demux_m0_TDATA;
  wire axis_tid_demux_m0_TREADY;
  wire axis_tid_demux_m0_TVALID;
  wire [63:0]axis_tid_demux_m1_TDATA;
  wire axis_tid_demux_m1_TREADY;
  wire axis_tid_demux_m1_TVALID;
  wire [63:0]inStream_1_TDATA;
  wire [0:0]inStream_1_TID;
  wire inStream_1_TREADY;
  wire inStream_1_TVALID;
  wire managed_aresetn_1;
  wire [63:0]matmulFPGA_ompss_m_axi_mcxx_a_ARADDR;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_a_ARBURST;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_a_ARCACHE;
  wire [0:0]matmulFPGA_ompss_m_axi_mcxx_a_ARID;
  wire [7:0]matmulFPGA_ompss_m_axi_mcxx_a_ARLEN;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_a_ARLOCK;
  wire [2:0]matmulFPGA_ompss_m_axi_mcxx_a_ARPROT;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_a_ARQOS;
  wire matmulFPGA_ompss_m_axi_mcxx_a_ARREADY;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_a_ARREGION;
  wire [2:0]matmulFPGA_ompss_m_axi_mcxx_a_ARSIZE;
  wire matmulFPGA_ompss_m_axi_mcxx_a_ARVALID;
  wire [31:0]matmulFPGA_ompss_m_axi_mcxx_a_RDATA;
  wire [0:0]matmulFPGA_ompss_m_axi_mcxx_a_RID;
  wire matmulFPGA_ompss_m_axi_mcxx_a_RLAST;
  wire matmulFPGA_ompss_m_axi_mcxx_a_RREADY;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_a_RRESP;
  wire matmulFPGA_ompss_m_axi_mcxx_a_RVALID;
  wire [63:0]matmulFPGA_ompss_m_axi_mcxx_b_ARADDR;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_b_ARBURST;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_b_ARCACHE;
  wire [0:0]matmulFPGA_ompss_m_axi_mcxx_b_ARID;
  wire [7:0]matmulFPGA_ompss_m_axi_mcxx_b_ARLEN;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_b_ARLOCK;
  wire [2:0]matmulFPGA_ompss_m_axi_mcxx_b_ARPROT;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_b_ARQOS;
  wire matmulFPGA_ompss_m_axi_mcxx_b_ARREADY;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_b_ARREGION;
  wire [2:0]matmulFPGA_ompss_m_axi_mcxx_b_ARSIZE;
  wire matmulFPGA_ompss_m_axi_mcxx_b_ARVALID;
  wire [31:0]matmulFPGA_ompss_m_axi_mcxx_b_RDATA;
  wire [0:0]matmulFPGA_ompss_m_axi_mcxx_b_RID;
  wire matmulFPGA_ompss_m_axi_mcxx_b_RLAST;
  wire matmulFPGA_ompss_m_axi_mcxx_b_RREADY;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_b_RRESP;
  wire matmulFPGA_ompss_m_axi_mcxx_b_RVALID;
  wire [63:0]matmulFPGA_ompss_m_axi_mcxx_c_ARADDR;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_c_ARBURST;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_c_ARCACHE;
  wire [0:0]matmulFPGA_ompss_m_axi_mcxx_c_ARID;
  wire [7:0]matmulFPGA_ompss_m_axi_mcxx_c_ARLEN;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_c_ARLOCK;
  wire [2:0]matmulFPGA_ompss_m_axi_mcxx_c_ARPROT;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_c_ARQOS;
  wire matmulFPGA_ompss_m_axi_mcxx_c_ARREADY;
  wire [3:0]matmulFPGA_ompss_m_axi_mcxx_c_ARREGION;
  wire [2:0]matmulFPGA_ompss_m_axi_mcxx_c_ARSIZE;
  wire matmulFPGA_ompss_m_axi_mcxx_c_ARVALID;
  wire [31:0]matmulFPGA_ompss_m_axi_mcxx_c_RDATA;
  wire [0:0]matmulFPGA_ompss_m_axi_mcxx_c_RID;
  wire matmulFPGA_ompss_m_axi_mcxx_c_RLAST;
  wire matmulFPGA_ompss_m_axi_mcxx_c_RREADY;
  wire [1:0]matmulFPGA_ompss_m_axi_mcxx_c_RRESP;
  wire matmulFPGA_ompss_m_axi_mcxx_c_RVALID;
  wire [63:0]matmulFPGA_ompss_mcxx_outPort_TDATA;
  wire [1:0]matmulFPGA_ompss_mcxx_outPort_TDEST;
  wire [0:0]matmulFPGA_ompss_mcxx_outPort_TLAST;
  wire matmulFPGA_ompss_mcxx_outPort_TREADY;
  wire matmulFPGA_ompss_mcxx_outPort_TVALID;
  wire [7:0]new_task_spawner_ack_out_TDATA;
  wire new_task_spawner_ack_out_TREADY;
  wire new_task_spawner_ack_out_TVALID;
  wire [63:0]new_task_spawner_stream_out_TDATA;
  wire [1:0]new_task_spawner_stream_out_TDEST;
  wire new_task_spawner_stream_out_TLAST;
  wire new_task_spawner_stream_out_TREADY;
  wire new_task_spawner_stream_out_TVALID;

  assign a_araddr[63:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARADDR;
  assign a_arburst[1:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARBURST;
  assign a_arcache[3:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARCACHE;
  assign a_arid[0] = matmulFPGA_ompss_m_axi_mcxx_a_ARID;
  assign a_arlen[7:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARLEN;
  assign a_arlock[1:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARLOCK;
  assign a_arprot[2:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARPROT;
  assign a_arqos[3:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARQOS;
  assign a_arregion[3:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARREGION;
  assign a_arsize[2:0] = matmulFPGA_ompss_m_axi_mcxx_a_ARSIZE;
  assign a_arvalid = matmulFPGA_ompss_m_axi_mcxx_a_ARVALID;
  assign a_rready = matmulFPGA_ompss_m_axi_mcxx_a_RREADY;
  assign accID_M_AXIS_TREADY = outStream_tready;
  assign aclk_1 = aclk;
  assign b_araddr[63:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARADDR;
  assign b_arburst[1:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARBURST;
  assign b_arcache[3:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARCACHE;
  assign b_arid[0] = matmulFPGA_ompss_m_axi_mcxx_b_ARID;
  assign b_arlen[7:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARLEN;
  assign b_arlock[1:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARLOCK;
  assign b_arprot[2:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARPROT;
  assign b_arqos[3:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARQOS;
  assign b_arregion[3:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARREGION;
  assign b_arsize[2:0] = matmulFPGA_ompss_m_axi_mcxx_b_ARSIZE;
  assign b_arvalid = matmulFPGA_ompss_m_axi_mcxx_b_ARVALID;
  assign b_rready = matmulFPGA_ompss_m_axi_mcxx_b_RREADY;
  assign c_araddr[63:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARADDR;
  assign c_arburst[1:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARBURST;
  assign c_arcache[3:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARCACHE;
  assign c_arid[0] = matmulFPGA_ompss_m_axi_mcxx_c_ARID;
  assign c_arlen[7:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARLEN;
  assign c_arlock[1:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARLOCK;
  assign c_arprot[2:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARPROT;
  assign c_arqos[3:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARQOS;
  assign c_arregion[3:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARREGION;
  assign c_arsize[2:0] = matmulFPGA_ompss_m_axi_mcxx_c_ARSIZE;
  assign c_arvalid = matmulFPGA_ompss_m_axi_mcxx_c_ARVALID;
  assign c_rready = matmulFPGA_ompss_m_axi_mcxx_c_RREADY;
  assign inStream_1_TDATA = inStream_tdata[63:0];
  assign inStream_1_TID = inStream_tid[0];
  assign inStream_1_TVALID = inStream_tvalid;
  assign inStream_tready = inStream_1_TREADY;
  assign managed_aresetn_1 = managed_aresetn;
  assign matmulFPGA_ompss_m_axi_mcxx_a_ARREADY = a_arready;
  assign matmulFPGA_ompss_m_axi_mcxx_a_RDATA = a_rdata[31:0];
  assign matmulFPGA_ompss_m_axi_mcxx_a_RID = a_rid[0];
  assign matmulFPGA_ompss_m_axi_mcxx_a_RLAST = a_rlast;
  assign matmulFPGA_ompss_m_axi_mcxx_a_RRESP = a_rresp[1:0];
  assign matmulFPGA_ompss_m_axi_mcxx_a_RVALID = a_rvalid;
  assign matmulFPGA_ompss_m_axi_mcxx_b_ARREADY = b_arready;
  assign matmulFPGA_ompss_m_axi_mcxx_b_RDATA = b_rdata[31:0];
  assign matmulFPGA_ompss_m_axi_mcxx_b_RID = b_rid[0];
  assign matmulFPGA_ompss_m_axi_mcxx_b_RLAST = b_rlast;
  assign matmulFPGA_ompss_m_axi_mcxx_b_RRESP = b_rresp[1:0];
  assign matmulFPGA_ompss_m_axi_mcxx_b_RVALID = b_rvalid;
  assign matmulFPGA_ompss_m_axi_mcxx_c_ARREADY = c_arready;
  assign matmulFPGA_ompss_m_axi_mcxx_c_RDATA = c_rdata[31:0];
  assign matmulFPGA_ompss_m_axi_mcxx_c_RID = c_rid[0];
  assign matmulFPGA_ompss_m_axi_mcxx_c_RLAST = c_rlast;
  assign matmulFPGA_ompss_m_axi_mcxx_c_RRESP = c_rresp[1:0];
  assign matmulFPGA_ompss_m_axi_mcxx_c_RVALID = c_rvalid;
  assign outStream_tdata[63:0] = accID_M_AXIS_TDATA;
  assign outStream_tdest[1:0] = accID_M_AXIS_TDEST;
  assign outStream_tid[0] = accID_M_AXIS_TID;
  assign outStream_tlast = accID_M_AXIS_TLAST;
  assign outStream_tvalid = accID_M_AXIS_TVALID;
  matmul_design_accID_0 accID
       (.M_AXIS_tdata(accID_M_AXIS_TDATA),
        .M_AXIS_tdest(accID_M_AXIS_TDEST),
        .M_AXIS_tid(accID_M_AXIS_TID),
        .M_AXIS_tlast(accID_M_AXIS_TLAST),
        .M_AXIS_tready(accID_M_AXIS_TREADY),
        .M_AXIS_tvalid(accID_M_AXIS_TVALID),
        .S_AXIS_tdata(new_task_spawner_stream_out_TDATA),
        .S_AXIS_tdest(new_task_spawner_stream_out_TDEST),
        .S_AXIS_tlast(new_task_spawner_stream_out_TLAST),
        .S_AXIS_tready(new_task_spawner_stream_out_TREADY),
        .S_AXIS_tvalid(new_task_spawner_stream_out_TVALID),
        .aresetn(managed_aresetn_1),
        .clk(aclk_1));
  matmul_design_axis_tid_demux_0 axis_tid_demux
       (.clk(aclk_1),
        .m0_tdata(axis_tid_demux_m0_TDATA),
        .m0_tready(axis_tid_demux_m0_TREADY),
        .m0_tvalid(axis_tid_demux_m0_TVALID),
        .m1_tdata(axis_tid_demux_m1_TDATA),
        .m1_tready(axis_tid_demux_m1_TREADY),
        .m1_tvalid(axis_tid_demux_m1_TVALID),
        .s_tdata(inStream_1_TDATA),
        .s_tid(inStream_1_TID),
        .s_tready(inStream_1_TREADY),
        .s_tvalid(inStream_1_TVALID));
  matmul_design_matmulFPGA_ompss_0 matmulFPGA_ompss
       (.ap_clk(aclk_1),
        .ap_rst_n(managed_aresetn_1),
        .m_axi_mcxx_a_ARADDR(matmulFPGA_ompss_m_axi_mcxx_a_ARADDR),
        .m_axi_mcxx_a_ARBURST(matmulFPGA_ompss_m_axi_mcxx_a_ARBURST),
        .m_axi_mcxx_a_ARCACHE(matmulFPGA_ompss_m_axi_mcxx_a_ARCACHE),
        .m_axi_mcxx_a_ARID(matmulFPGA_ompss_m_axi_mcxx_a_ARID),
        .m_axi_mcxx_a_ARLEN(matmulFPGA_ompss_m_axi_mcxx_a_ARLEN),
        .m_axi_mcxx_a_ARLOCK(matmulFPGA_ompss_m_axi_mcxx_a_ARLOCK),
        .m_axi_mcxx_a_ARPROT(matmulFPGA_ompss_m_axi_mcxx_a_ARPROT),
        .m_axi_mcxx_a_ARQOS(matmulFPGA_ompss_m_axi_mcxx_a_ARQOS),
        .m_axi_mcxx_a_ARREADY(matmulFPGA_ompss_m_axi_mcxx_a_ARREADY),
        .m_axi_mcxx_a_ARREGION(matmulFPGA_ompss_m_axi_mcxx_a_ARREGION),
        .m_axi_mcxx_a_ARSIZE(matmulFPGA_ompss_m_axi_mcxx_a_ARSIZE),
        .m_axi_mcxx_a_ARVALID(matmulFPGA_ompss_m_axi_mcxx_a_ARVALID),
        .m_axi_mcxx_a_AWREADY(1'b0),
        .m_axi_mcxx_a_BID(1'b0),
        .m_axi_mcxx_a_BRESP({1'b0,1'b0}),
        .m_axi_mcxx_a_BVALID(1'b0),
        .m_axi_mcxx_a_RDATA(matmulFPGA_ompss_m_axi_mcxx_a_RDATA),
        .m_axi_mcxx_a_RID(matmulFPGA_ompss_m_axi_mcxx_a_RID),
        .m_axi_mcxx_a_RLAST(matmulFPGA_ompss_m_axi_mcxx_a_RLAST),
        .m_axi_mcxx_a_RREADY(matmulFPGA_ompss_m_axi_mcxx_a_RREADY),
        .m_axi_mcxx_a_RRESP(matmulFPGA_ompss_m_axi_mcxx_a_RRESP),
        .m_axi_mcxx_a_RVALID(matmulFPGA_ompss_m_axi_mcxx_a_RVALID),
        .m_axi_mcxx_a_WREADY(1'b0),
        .m_axi_mcxx_b_ARADDR(matmulFPGA_ompss_m_axi_mcxx_b_ARADDR),
        .m_axi_mcxx_b_ARBURST(matmulFPGA_ompss_m_axi_mcxx_b_ARBURST),
        .m_axi_mcxx_b_ARCACHE(matmulFPGA_ompss_m_axi_mcxx_b_ARCACHE),
        .m_axi_mcxx_b_ARID(matmulFPGA_ompss_m_axi_mcxx_b_ARID),
        .m_axi_mcxx_b_ARLEN(matmulFPGA_ompss_m_axi_mcxx_b_ARLEN),
        .m_axi_mcxx_b_ARLOCK(matmulFPGA_ompss_m_axi_mcxx_b_ARLOCK),
        .m_axi_mcxx_b_ARPROT(matmulFPGA_ompss_m_axi_mcxx_b_ARPROT),
        .m_axi_mcxx_b_ARQOS(matmulFPGA_ompss_m_axi_mcxx_b_ARQOS),
        .m_axi_mcxx_b_ARREADY(matmulFPGA_ompss_m_axi_mcxx_b_ARREADY),
        .m_axi_mcxx_b_ARREGION(matmulFPGA_ompss_m_axi_mcxx_b_ARREGION),
        .m_axi_mcxx_b_ARSIZE(matmulFPGA_ompss_m_axi_mcxx_b_ARSIZE),
        .m_axi_mcxx_b_ARVALID(matmulFPGA_ompss_m_axi_mcxx_b_ARVALID),
        .m_axi_mcxx_b_AWREADY(1'b0),
        .m_axi_mcxx_b_BID(1'b0),
        .m_axi_mcxx_b_BRESP({1'b0,1'b0}),
        .m_axi_mcxx_b_BVALID(1'b0),
        .m_axi_mcxx_b_RDATA(matmulFPGA_ompss_m_axi_mcxx_b_RDATA),
        .m_axi_mcxx_b_RID(matmulFPGA_ompss_m_axi_mcxx_b_RID),
        .m_axi_mcxx_b_RLAST(matmulFPGA_ompss_m_axi_mcxx_b_RLAST),
        .m_axi_mcxx_b_RREADY(matmulFPGA_ompss_m_axi_mcxx_b_RREADY),
        .m_axi_mcxx_b_RRESP(matmulFPGA_ompss_m_axi_mcxx_b_RRESP),
        .m_axi_mcxx_b_RVALID(matmulFPGA_ompss_m_axi_mcxx_b_RVALID),
        .m_axi_mcxx_b_WREADY(1'b0),
        .m_axi_mcxx_c_ARADDR(matmulFPGA_ompss_m_axi_mcxx_c_ARADDR),
        .m_axi_mcxx_c_ARBURST(matmulFPGA_ompss_m_axi_mcxx_c_ARBURST),
        .m_axi_mcxx_c_ARCACHE(matmulFPGA_ompss_m_axi_mcxx_c_ARCACHE),
        .m_axi_mcxx_c_ARID(matmulFPGA_ompss_m_axi_mcxx_c_ARID),
        .m_axi_mcxx_c_ARLEN(matmulFPGA_ompss_m_axi_mcxx_c_ARLEN),
        .m_axi_mcxx_c_ARLOCK(matmulFPGA_ompss_m_axi_mcxx_c_ARLOCK),
        .m_axi_mcxx_c_ARPROT(matmulFPGA_ompss_m_axi_mcxx_c_ARPROT),
        .m_axi_mcxx_c_ARQOS(matmulFPGA_ompss_m_axi_mcxx_c_ARQOS),
        .m_axi_mcxx_c_ARREADY(matmulFPGA_ompss_m_axi_mcxx_c_ARREADY),
        .m_axi_mcxx_c_ARREGION(matmulFPGA_ompss_m_axi_mcxx_c_ARREGION),
        .m_axi_mcxx_c_ARSIZE(matmulFPGA_ompss_m_axi_mcxx_c_ARSIZE),
        .m_axi_mcxx_c_ARVALID(matmulFPGA_ompss_m_axi_mcxx_c_ARVALID),
        .m_axi_mcxx_c_AWREADY(1'b0),
        .m_axi_mcxx_c_BID(1'b0),
        .m_axi_mcxx_c_BRESP({1'b0,1'b0}),
        .m_axi_mcxx_c_BVALID(1'b0),
        .m_axi_mcxx_c_RDATA(matmulFPGA_ompss_m_axi_mcxx_c_RDATA),
        .m_axi_mcxx_c_RID(matmulFPGA_ompss_m_axi_mcxx_c_RID),
        .m_axi_mcxx_c_RLAST(matmulFPGA_ompss_m_axi_mcxx_c_RLAST),
        .m_axi_mcxx_c_RREADY(matmulFPGA_ompss_m_axi_mcxx_c_RREADY),
        .m_axi_mcxx_c_RRESP(matmulFPGA_ompss_m_axi_mcxx_c_RRESP),
        .m_axi_mcxx_c_RVALID(matmulFPGA_ompss_m_axi_mcxx_c_RVALID),
        .m_axi_mcxx_c_WREADY(1'b0),
        .mcxx_inPort_TDATA(axis_tid_demux_m0_TDATA),
        .mcxx_inPort_TREADY(axis_tid_demux_m0_TREADY),
        .mcxx_inPort_TVALID(axis_tid_demux_m0_TVALID),
        .mcxx_outPort_TDATA(matmulFPGA_ompss_mcxx_outPort_TDATA),
        .mcxx_outPort_TDEST(matmulFPGA_ompss_mcxx_outPort_TDEST),
        .mcxx_outPort_TLAST(matmulFPGA_ompss_mcxx_outPort_TLAST),
        .mcxx_outPort_TREADY(matmulFPGA_ompss_mcxx_outPort_TREADY),
        .mcxx_outPort_TVALID(matmulFPGA_ompss_mcxx_outPort_TVALID),
        .mcxx_spawnInPort_TDATA(new_task_spawner_ack_out_TDATA),
        .mcxx_spawnInPort_TREADY(new_task_spawner_ack_out_TREADY),
        .mcxx_spawnInPort_TVALID(new_task_spawner_ack_out_TVALID));
  matmul_design_new_task_spawner_0 new_task_spawner
       (.ack_in_tdata(axis_tid_demux_m1_TDATA),
        .ack_in_tready(axis_tid_demux_m1_TREADY),
        .ack_in_tvalid(axis_tid_demux_m1_TVALID),
        .ack_out_tdata(new_task_spawner_ack_out_TDATA),
        .ack_out_tready(new_task_spawner_ack_out_TREADY),
        .ack_out_tvalid(new_task_spawner_ack_out_TVALID),
        .clk(aclk_1),
        .rstn(managed_aresetn_1),
        .stream_in_tdata(matmulFPGA_ompss_mcxx_outPort_TDATA),
        .stream_in_tdest(matmulFPGA_ompss_mcxx_outPort_TDEST),
        .stream_in_tlast(matmulFPGA_ompss_mcxx_outPort_TLAST),
        .stream_in_tready(matmulFPGA_ompss_mcxx_outPort_TREADY),
        .stream_in_tvalid(matmulFPGA_ompss_mcxx_outPort_TVALID),
        .stream_out_tdata(new_task_spawner_stream_out_TDATA),
        .stream_out_tdest(new_task_spawner_stream_out_TDEST),
        .stream_out_tlast(new_task_spawner_stream_out_TLAST),
        .stream_out_tready(new_task_spawner_stream_out_TREADY),
        .stream_out_tvalid(new_task_spawner_stream_out_TVALID));
endmodule

(* CORE_GENERATION_INFO = "matmul_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=matmul_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=119,numReposBlks=66,numNonXlnxBlks=4,numHierBlks=53,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "matmul_design.hwdef" *) 
module matmul_design
   (HBM_CATTRIP,
    ddr4_sdram_c0_act_n,
    ddr4_sdram_c0_adr,
    ddr4_sdram_c0_ba,
    ddr4_sdram_c0_bg,
    ddr4_sdram_c0_ck_c,
    ddr4_sdram_c0_ck_t,
    ddr4_sdram_c0_cke,
    ddr4_sdram_c0_cs_n,
    ddr4_sdram_c0_dq,
    ddr4_sdram_c0_dqs_c,
    ddr4_sdram_c0_dqs_t,
    ddr4_sdram_c0_odt,
    ddr4_sdram_c0_par,
    ddr4_sdram_c0_reset_n,
    ddr4_sdram_c1_act_n,
    ddr4_sdram_c1_adr,
    ddr4_sdram_c1_ba,
    ddr4_sdram_c1_bg,
    ddr4_sdram_c1_ck_c,
    ddr4_sdram_c1_ck_t,
    ddr4_sdram_c1_cke,
    ddr4_sdram_c1_cs_n,
    ddr4_sdram_c1_dq,
    ddr4_sdram_c1_dqs_c,
    ddr4_sdram_c1_dqs_t,
    ddr4_sdram_c1_odt,
    ddr4_sdram_c1_par,
    ddr4_sdram_c1_reset_n,
    pci_express_x8_rxn,
    pci_express_x8_rxp,
    pci_express_x8_txn,
    pci_express_x8_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    sysclk0_clk_n,
    sysclk0_clk_p,
    sysclk1_clk_n,
    sysclk1_clk_p);
  output [0:0]HBM_CATTRIP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_sdram_c0, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, SLOT Single, TIMEPERIOD_PS 833" *) output ddr4_sdram_c0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 ADR" *) output [16:0]ddr4_sdram_c0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 BA" *) output [1:0]ddr4_sdram_c0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 BG" *) output [1:0]ddr4_sdram_c0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CK_C" *) output ddr4_sdram_c0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CK_T" *) output ddr4_sdram_c0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CKE" *) output ddr4_sdram_c0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 CS_N" *) output ddr4_sdram_c0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 DQ" *) inout [71:0]ddr4_sdram_c0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 DQS_C" *) inout [17:0]ddr4_sdram_c0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 DQS_T" *) inout [17:0]ddr4_sdram_c0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 ODT" *) output ddr4_sdram_c0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 PAR" *) output ddr4_sdram_c0_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c0 RESET_N" *) output ddr4_sdram_c0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_sdram_c1, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, SLOT Single, TIMEPERIOD_PS 833" *) output ddr4_sdram_c1_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 ADR" *) output [16:0]ddr4_sdram_c1_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 BA" *) output [1:0]ddr4_sdram_c1_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 BG" *) output [1:0]ddr4_sdram_c1_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CK_C" *) output ddr4_sdram_c1_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CK_T" *) output ddr4_sdram_c1_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CKE" *) output ddr4_sdram_c1_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CS_N" *) output ddr4_sdram_c1_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 DQ" *) inout [71:0]ddr4_sdram_c1_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 DQS_C" *) inout [17:0]ddr4_sdram_c1_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 DQS_T" *) inout [17:0]ddr4_sdram_c1_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 ODT" *) output ddr4_sdram_c1_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 PAR" *) output ddr4_sdram_c1_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 RESET_N" *) output ddr4_sdram_c1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x8 rxn" *) input [15:0]pci_express_x8_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x8 rxp" *) input [15:0]pci_express_x8_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x8 txn" *) output [15:0]pci_express_x8_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x8 txp" *) output [15:0]pci_express_x8_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input pcie_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sysclk0, CAN_DEBUG false, FREQ_HZ 100000000" *) input sysclk0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk0 CLK_P" *) input sysclk0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sysclk1, CAN_DEBUG false, FREQ_HZ 100000000" *) input sysclk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk1 CLK_P" *) input sysclk1_clk_p;

  wire [0:0]HBM_CATTRIP_constant_dout;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]S_AXI_GP_1_ARADDR;
  wire [2:0]S_AXI_GP_1_ARPROT;
  wire S_AXI_GP_1_ARREADY;
  wire S_AXI_GP_1_ARVALID;
  wire [31:0]S_AXI_GP_1_AWADDR;
  wire [2:0]S_AXI_GP_1_AWPROT;
  wire S_AXI_GP_1_AWREADY;
  wire S_AXI_GP_1_AWVALID;
  wire S_AXI_GP_1_BREADY;
  wire [1:0]S_AXI_GP_1_BRESP;
  wire S_AXI_GP_1_BVALID;
  wire [31:0]S_AXI_GP_1_RDATA;
  wire S_AXI_GP_1_RREADY;
  wire [1:0]S_AXI_GP_1_RRESP;
  wire S_AXI_GP_1_RVALID;
  wire [31:0]S_AXI_GP_1_WDATA;
  wire S_AXI_GP_1_WREADY;
  wire [3:0]S_AXI_GP_1_WSTRB;
  wire S_AXI_GP_1_WVALID;
  wire [11:0]bitInfo_BRAM_Ctrl_BRAM_PORTA_ADDR;
  wire bitInfo_BRAM_Ctrl_BRAM_PORTA_CLK;
  wire [31:0]bitInfo_BRAM_Ctrl_BRAM_PORTA_DIN;
  wire [31:0]bitInfo_BRAM_Ctrl_BRAM_PORTA_DOUT;
  wire bitInfo_BRAM_Ctrl_BRAM_PORTA_EN;
  wire [3:0]bitInfo_BRAM_Ctrl_BRAM_PORTA_WE;
  wire [63:0]bridge_to_host_M_AXI_ARADDR;
  wire [1:0]bridge_to_host_M_AXI_ARBURST;
  wire [3:0]bridge_to_host_M_AXI_ARCACHE;
  wire [3:0]bridge_to_host_M_AXI_ARID;
  wire [7:0]bridge_to_host_M_AXI_ARLEN;
  wire [0:0]bridge_to_host_M_AXI_ARLOCK;
  wire [2:0]bridge_to_host_M_AXI_ARPROT;
  wire bridge_to_host_M_AXI_ARREADY;
  wire [2:0]bridge_to_host_M_AXI_ARSIZE;
  wire [31:0]bridge_to_host_M_AXI_ARUSER;
  wire bridge_to_host_M_AXI_ARVALID;
  wire [63:0]bridge_to_host_M_AXI_AWADDR;
  wire [1:0]bridge_to_host_M_AXI_AWBURST;
  wire [3:0]bridge_to_host_M_AXI_AWCACHE;
  wire [3:0]bridge_to_host_M_AXI_AWID;
  wire [7:0]bridge_to_host_M_AXI_AWLEN;
  wire [0:0]bridge_to_host_M_AXI_AWLOCK;
  wire [2:0]bridge_to_host_M_AXI_AWPROT;
  wire bridge_to_host_M_AXI_AWREADY;
  wire [2:0]bridge_to_host_M_AXI_AWSIZE;
  wire [31:0]bridge_to_host_M_AXI_AWUSER;
  wire bridge_to_host_M_AXI_AWVALID;
  wire [3:0]bridge_to_host_M_AXI_BID;
  wire bridge_to_host_M_AXI_BREADY;
  wire [1:0]bridge_to_host_M_AXI_BRESP;
  wire bridge_to_host_M_AXI_BVALID;
  wire [31:0]bridge_to_host_M_AXI_LITE_ARADDR;
  wire [2:0]bridge_to_host_M_AXI_LITE_ARPROT;
  wire bridge_to_host_M_AXI_LITE_ARREADY;
  wire bridge_to_host_M_AXI_LITE_ARVALID;
  wire [31:0]bridge_to_host_M_AXI_LITE_AWADDR;
  wire [2:0]bridge_to_host_M_AXI_LITE_AWPROT;
  wire bridge_to_host_M_AXI_LITE_AWREADY;
  wire bridge_to_host_M_AXI_LITE_AWVALID;
  wire bridge_to_host_M_AXI_LITE_BREADY;
  wire [1:0]bridge_to_host_M_AXI_LITE_BRESP;
  wire bridge_to_host_M_AXI_LITE_BVALID;
  wire [31:0]bridge_to_host_M_AXI_LITE_RDATA;
  wire bridge_to_host_M_AXI_LITE_RREADY;
  wire [1:0]bridge_to_host_M_AXI_LITE_RRESP;
  wire bridge_to_host_M_AXI_LITE_RVALID;
  wire [31:0]bridge_to_host_M_AXI_LITE_WDATA;
  wire bridge_to_host_M_AXI_LITE_WREADY;
  wire [3:0]bridge_to_host_M_AXI_LITE_WSTRB;
  wire bridge_to_host_M_AXI_LITE_WVALID;
  wire [511:0]bridge_to_host_M_AXI_RDATA;
  wire [3:0]bridge_to_host_M_AXI_RID;
  wire bridge_to_host_M_AXI_RLAST;
  wire bridge_to_host_M_AXI_RREADY;
  wire [1:0]bridge_to_host_M_AXI_RRESP;
  wire bridge_to_host_M_AXI_RVALID;
  wire [511:0]bridge_to_host_M_AXI_WDATA;
  wire bridge_to_host_M_AXI_WLAST;
  wire bridge_to_host_M_AXI_WREADY;
  wire [63:0]bridge_to_host_M_AXI_WSTRB;
  wire [63:0]bridge_to_host_M_AXI_WUSER;
  wire bridge_to_host_M_AXI_WVALID;
  wire bridge_to_host_ddr4_sdram_c0_ACT_N;
  wire [16:0]bridge_to_host_ddr4_sdram_c0_ADR;
  wire [1:0]bridge_to_host_ddr4_sdram_c0_BA;
  wire [1:0]bridge_to_host_ddr4_sdram_c0_BG;
  wire bridge_to_host_ddr4_sdram_c0_CKE;
  wire bridge_to_host_ddr4_sdram_c0_CK_C;
  wire bridge_to_host_ddr4_sdram_c0_CK_T;
  wire bridge_to_host_ddr4_sdram_c0_CS_N;
  wire [71:0]bridge_to_host_ddr4_sdram_c0_DQ;
  wire [17:0]bridge_to_host_ddr4_sdram_c0_DQS_C;
  wire [17:0]bridge_to_host_ddr4_sdram_c0_DQS_T;
  wire bridge_to_host_ddr4_sdram_c0_ODT;
  wire bridge_to_host_ddr4_sdram_c0_PAR;
  wire bridge_to_host_ddr4_sdram_c0_RESET_N;
  wire bridge_to_host_ddr4_sdram_c1_ACT_N;
  wire [16:0]bridge_to_host_ddr4_sdram_c1_ADR;
  wire [1:0]bridge_to_host_ddr4_sdram_c1_BA;
  wire [1:0]bridge_to_host_ddr4_sdram_c1_BG;
  wire bridge_to_host_ddr4_sdram_c1_CKE;
  wire bridge_to_host_ddr4_sdram_c1_CK_C;
  wire bridge_to_host_ddr4_sdram_c1_CK_T;
  wire bridge_to_host_ddr4_sdram_c1_CS_N;
  wire [71:0]bridge_to_host_ddr4_sdram_c1_DQ;
  wire [17:0]bridge_to_host_ddr4_sdram_c1_DQS_C;
  wire [17:0]bridge_to_host_ddr4_sdram_c1_DQS_T;
  wire bridge_to_host_ddr4_sdram_c1_ODT;
  wire bridge_to_host_ddr4_sdram_c1_PAR;
  wire bridge_to_host_ddr4_sdram_c1_RESET_N;
  wire bridge_to_host_ui_clk;
  wire clk_app_1;
  wire [0:0]clk_app_rstn_1;
  wire clock_generator_locked;
  wire [63:0]inStream_1_TDATA;
  wire [0:0]inStream_1_TID;
  wire inStream_1_TREADY;
  wire inStream_1_TVALID;
  wire [63:0]inStream_2_TDATA;
  wire inStream_2_TREADY;
  wire inStream_2_TVALID;
  wire [0:0]managed_reset_gpio_io_o;
  wire [0:0]managed_rstn_1;
  wire [31:0]master_Inter_0_M00_AXI_ARADDR;
  wire [2:0]master_Inter_0_M00_AXI_ARPROT;
  wire master_Inter_0_M00_AXI_ARREADY;
  wire [0:0]master_Inter_0_M00_AXI_ARVALID;
  wire [31:0]master_Inter_0_M00_AXI_AWADDR;
  wire [2:0]master_Inter_0_M00_AXI_AWPROT;
  wire master_Inter_0_M00_AXI_AWREADY;
  wire [0:0]master_Inter_0_M00_AXI_AWVALID;
  wire [0:0]master_Inter_0_M00_AXI_BREADY;
  wire [1:0]master_Inter_0_M00_AXI_BRESP;
  wire master_Inter_0_M00_AXI_BVALID;
  wire [31:0]master_Inter_0_M00_AXI_RDATA;
  wire [0:0]master_Inter_0_M00_AXI_RREADY;
  wire [1:0]master_Inter_0_M00_AXI_RRESP;
  wire master_Inter_0_M00_AXI_RVALID;
  wire [31:0]master_Inter_0_M00_AXI_WDATA;
  wire master_Inter_0_M00_AXI_WREADY;
  wire [3:0]master_Inter_0_M00_AXI_WSTRB;
  wire [0:0]master_Inter_0_M00_AXI_WVALID;
  wire [31:0]master_Inter_0_M01_AXI_ARADDR;
  wire master_Inter_0_M01_AXI_ARREADY;
  wire [0:0]master_Inter_0_M01_AXI_ARVALID;
  wire [31:0]master_Inter_0_M01_AXI_AWADDR;
  wire master_Inter_0_M01_AXI_AWREADY;
  wire [0:0]master_Inter_0_M01_AXI_AWVALID;
  wire [0:0]master_Inter_0_M01_AXI_BREADY;
  wire [1:0]master_Inter_0_M01_AXI_BRESP;
  wire master_Inter_0_M01_AXI_BVALID;
  wire [31:0]master_Inter_0_M01_AXI_RDATA;
  wire [0:0]master_Inter_0_M01_AXI_RREADY;
  wire [1:0]master_Inter_0_M01_AXI_RRESP;
  wire master_Inter_0_M01_AXI_RVALID;
  wire [31:0]master_Inter_0_M01_AXI_WDATA;
  wire master_Inter_0_M01_AXI_WREADY;
  wire [3:0]master_Inter_0_M01_AXI_WSTRB;
  wire [0:0]master_Inter_0_M01_AXI_WVALID;
  wire [63:0]matmulBlock_0_memport_ARADDR;
  wire [1:0]matmulBlock_0_memport_ARBURST;
  wire [3:0]matmulBlock_0_memport_ARCACHE;
  wire [0:0]matmulBlock_0_memport_ARID;
  wire [7:0]matmulBlock_0_memport_ARLEN;
  wire [1:0]matmulBlock_0_memport_ARLOCK;
  wire [2:0]matmulBlock_0_memport_ARPROT;
  wire [3:0]matmulBlock_0_memport_ARQOS;
  wire matmulBlock_0_memport_ARREADY;
  wire [3:0]matmulBlock_0_memport_ARREGION;
  wire [2:0]matmulBlock_0_memport_ARSIZE;
  wire matmulBlock_0_memport_ARVALID;
  wire [63:0]matmulBlock_0_memport_AWADDR;
  wire [1:0]matmulBlock_0_memport_AWBURST;
  wire [3:0]matmulBlock_0_memport_AWCACHE;
  wire [0:0]matmulBlock_0_memport_AWID;
  wire [7:0]matmulBlock_0_memport_AWLEN;
  wire [1:0]matmulBlock_0_memport_AWLOCK;
  wire [2:0]matmulBlock_0_memport_AWPROT;
  wire [3:0]matmulBlock_0_memport_AWQOS;
  wire matmulBlock_0_memport_AWREADY;
  wire [3:0]matmulBlock_0_memport_AWREGION;
  wire [2:0]matmulBlock_0_memport_AWSIZE;
  wire matmulBlock_0_memport_AWVALID;
  wire [0:0]matmulBlock_0_memport_BID;
  wire matmulBlock_0_memport_BREADY;
  wire [1:0]matmulBlock_0_memport_BRESP;
  wire matmulBlock_0_memport_BVALID;
  wire [127:0]matmulBlock_0_memport_RDATA;
  wire [0:0]matmulBlock_0_memport_RID;
  wire matmulBlock_0_memport_RLAST;
  wire matmulBlock_0_memport_RREADY;
  wire [1:0]matmulBlock_0_memport_RRESP;
  wire matmulBlock_0_memport_RVALID;
  wire [127:0]matmulBlock_0_memport_WDATA;
  wire matmulBlock_0_memport_WLAST;
  wire matmulBlock_0_memport_WREADY;
  wire [15:0]matmulBlock_0_memport_WSTRB;
  wire matmulBlock_0_memport_WVALID;
  wire [63:0]matmulBlock_0_outStream_TDATA;
  wire [1:0]matmulBlock_0_outStream_TDEST;
  wire [0:0]matmulBlock_0_outStream_TID;
  wire matmulBlock_0_outStream_TLAST;
  wire matmulBlock_0_outStream_TREADY;
  wire matmulBlock_0_outStream_TVALID;
  wire [63:0]matmulFPGA_0_a_ARADDR;
  wire [1:0]matmulFPGA_0_a_ARBURST;
  wire [3:0]matmulFPGA_0_a_ARCACHE;
  wire [0:0]matmulFPGA_0_a_ARID;
  wire [7:0]matmulFPGA_0_a_ARLEN;
  wire [1:0]matmulFPGA_0_a_ARLOCK;
  wire [2:0]matmulFPGA_0_a_ARPROT;
  wire [3:0]matmulFPGA_0_a_ARQOS;
  wire matmulFPGA_0_a_ARREADY;
  wire [3:0]matmulFPGA_0_a_ARREGION;
  wire [2:0]matmulFPGA_0_a_ARSIZE;
  wire matmulFPGA_0_a_ARVALID;
  wire [31:0]matmulFPGA_0_a_RDATA;
  wire [0:0]matmulFPGA_0_a_RID;
  wire matmulFPGA_0_a_RLAST;
  wire matmulFPGA_0_a_RREADY;
  wire [1:0]matmulFPGA_0_a_RRESP;
  wire matmulFPGA_0_a_RVALID;
  wire [63:0]matmulFPGA_0_b_ARADDR;
  wire [1:0]matmulFPGA_0_b_ARBURST;
  wire [3:0]matmulFPGA_0_b_ARCACHE;
  wire [0:0]matmulFPGA_0_b_ARID;
  wire [7:0]matmulFPGA_0_b_ARLEN;
  wire [1:0]matmulFPGA_0_b_ARLOCK;
  wire [2:0]matmulFPGA_0_b_ARPROT;
  wire [3:0]matmulFPGA_0_b_ARQOS;
  wire matmulFPGA_0_b_ARREADY;
  wire [3:0]matmulFPGA_0_b_ARREGION;
  wire [2:0]matmulFPGA_0_b_ARSIZE;
  wire matmulFPGA_0_b_ARVALID;
  wire [31:0]matmulFPGA_0_b_RDATA;
  wire [0:0]matmulFPGA_0_b_RID;
  wire matmulFPGA_0_b_RLAST;
  wire matmulFPGA_0_b_RREADY;
  wire [1:0]matmulFPGA_0_b_RRESP;
  wire matmulFPGA_0_b_RVALID;
  wire [63:0]matmulFPGA_0_c_ARADDR;
  wire [1:0]matmulFPGA_0_c_ARBURST;
  wire [3:0]matmulFPGA_0_c_ARCACHE;
  wire [0:0]matmulFPGA_0_c_ARID;
  wire [7:0]matmulFPGA_0_c_ARLEN;
  wire [1:0]matmulFPGA_0_c_ARLOCK;
  wire [2:0]matmulFPGA_0_c_ARPROT;
  wire [3:0]matmulFPGA_0_c_ARQOS;
  wire matmulFPGA_0_c_ARREADY;
  wire [3:0]matmulFPGA_0_c_ARREGION;
  wire [2:0]matmulFPGA_0_c_ARSIZE;
  wire matmulFPGA_0_c_ARVALID;
  wire [31:0]matmulFPGA_0_c_RDATA;
  wire [0:0]matmulFPGA_0_c_RID;
  wire matmulFPGA_0_c_RLAST;
  wire matmulFPGA_0_c_RREADY;
  wire [1:0]matmulFPGA_0_c_RRESP;
  wire matmulFPGA_0_c_RVALID;
  wire [63:0]matmulFPGA_0_outStream_TDATA;
  wire [1:0]matmulFPGA_0_outStream_TDEST;
  wire [0:0]matmulFPGA_0_outStream_TID;
  wire matmulFPGA_0_outStream_TLAST;
  wire matmulFPGA_0_outStream_TREADY;
  wire matmulFPGA_0_outStream_TVALID;
  wire pcie_perstn_1;
  wire pcie_refclk_1_CLK_N;
  wire pcie_refclk_1_CLK_P;
  wire [15:0]qdma_0_pcie_mgt_rxn;
  wire [15:0]qdma_0_pcie_mgt_rxp;
  wire [15:0]qdma_0_pcie_mgt_txn;
  wire [15:0]qdma_0_pcie_mgt_txp;
  wire [33:0]slave_Inter_0_M00_AXI_ARADDR;
  wire [1:0]slave_Inter_0_M00_AXI_ARBURST;
  wire [3:0]slave_Inter_0_M00_AXI_ARCACHE;
  wire [6:0]slave_Inter_0_M00_AXI_ARID;
  wire [7:0]slave_Inter_0_M00_AXI_ARLEN;
  wire [0:0]slave_Inter_0_M00_AXI_ARLOCK;
  wire [2:0]slave_Inter_0_M00_AXI_ARPROT;
  wire [3:0]slave_Inter_0_M00_AXI_ARQOS;
  wire slave_Inter_0_M00_AXI_ARREADY;
  wire [3:0]slave_Inter_0_M00_AXI_ARREGION;
  wire [2:0]slave_Inter_0_M00_AXI_ARSIZE;
  wire [31:0]slave_Inter_0_M00_AXI_ARUSER;
  wire slave_Inter_0_M00_AXI_ARVALID;
  wire [33:0]slave_Inter_0_M00_AXI_AWADDR;
  wire [1:0]slave_Inter_0_M00_AXI_AWBURST;
  wire [3:0]slave_Inter_0_M00_AXI_AWCACHE;
  wire [6:0]slave_Inter_0_M00_AXI_AWID;
  wire [7:0]slave_Inter_0_M00_AXI_AWLEN;
  wire [0:0]slave_Inter_0_M00_AXI_AWLOCK;
  wire [2:0]slave_Inter_0_M00_AXI_AWPROT;
  wire [3:0]slave_Inter_0_M00_AXI_AWQOS;
  wire slave_Inter_0_M00_AXI_AWREADY;
  wire [3:0]slave_Inter_0_M00_AXI_AWREGION;
  wire [2:0]slave_Inter_0_M00_AXI_AWSIZE;
  wire [31:0]slave_Inter_0_M00_AXI_AWUSER;
  wire slave_Inter_0_M00_AXI_AWVALID;
  wire [6:0]slave_Inter_0_M00_AXI_BID;
  wire slave_Inter_0_M00_AXI_BREADY;
  wire [1:0]slave_Inter_0_M00_AXI_BRESP;
  wire slave_Inter_0_M00_AXI_BVALID;
  wire [511:0]slave_Inter_0_M00_AXI_RDATA;
  wire [6:0]slave_Inter_0_M00_AXI_RID;
  wire slave_Inter_0_M00_AXI_RLAST;
  wire slave_Inter_0_M00_AXI_RREADY;
  wire [1:0]slave_Inter_0_M00_AXI_RRESP;
  wire slave_Inter_0_M00_AXI_RVALID;
  wire [511:0]slave_Inter_0_M00_AXI_WDATA;
  wire slave_Inter_0_M00_AXI_WLAST;
  wire slave_Inter_0_M00_AXI_WREADY;
  wire [63:0]slave_Inter_0_M00_AXI_WSTRB;
  wire [63:0]slave_Inter_0_M00_AXI_WUSER;
  wire slave_Inter_0_M00_AXI_WVALID;
  wire [33:0]slave_Inter_0_M01_AXI_ARADDR;
  wire [1:0]slave_Inter_0_M01_AXI_ARBURST;
  wire [3:0]slave_Inter_0_M01_AXI_ARCACHE;
  wire [6:0]slave_Inter_0_M01_AXI_ARID;
  wire [7:0]slave_Inter_0_M01_AXI_ARLEN;
  wire [0:0]slave_Inter_0_M01_AXI_ARLOCK;
  wire [2:0]slave_Inter_0_M01_AXI_ARPROT;
  wire [3:0]slave_Inter_0_M01_AXI_ARQOS;
  wire slave_Inter_0_M01_AXI_ARREADY;
  wire [3:0]slave_Inter_0_M01_AXI_ARREGION;
  wire [2:0]slave_Inter_0_M01_AXI_ARSIZE;
  wire [31:0]slave_Inter_0_M01_AXI_ARUSER;
  wire slave_Inter_0_M01_AXI_ARVALID;
  wire [33:0]slave_Inter_0_M01_AXI_AWADDR;
  wire [1:0]slave_Inter_0_M01_AXI_AWBURST;
  wire [3:0]slave_Inter_0_M01_AXI_AWCACHE;
  wire [6:0]slave_Inter_0_M01_AXI_AWID;
  wire [7:0]slave_Inter_0_M01_AXI_AWLEN;
  wire [0:0]slave_Inter_0_M01_AXI_AWLOCK;
  wire [2:0]slave_Inter_0_M01_AXI_AWPROT;
  wire [3:0]slave_Inter_0_M01_AXI_AWQOS;
  wire slave_Inter_0_M01_AXI_AWREADY;
  wire [3:0]slave_Inter_0_M01_AXI_AWREGION;
  wire [2:0]slave_Inter_0_M01_AXI_AWSIZE;
  wire [31:0]slave_Inter_0_M01_AXI_AWUSER;
  wire slave_Inter_0_M01_AXI_AWVALID;
  wire [6:0]slave_Inter_0_M01_AXI_BID;
  wire slave_Inter_0_M01_AXI_BREADY;
  wire [1:0]slave_Inter_0_M01_AXI_BRESP;
  wire slave_Inter_0_M01_AXI_BVALID;
  wire [511:0]slave_Inter_0_M01_AXI_RDATA;
  wire [6:0]slave_Inter_0_M01_AXI_RID;
  wire slave_Inter_0_M01_AXI_RLAST;
  wire slave_Inter_0_M01_AXI_RREADY;
  wire [1:0]slave_Inter_0_M01_AXI_RRESP;
  wire slave_Inter_0_M01_AXI_RVALID;
  wire [511:0]slave_Inter_0_M01_AXI_WDATA;
  wire slave_Inter_0_M01_AXI_WLAST;
  wire slave_Inter_0_M01_AXI_WREADY;
  wire [63:0]slave_Inter_0_M01_AXI_WSTRB;
  wire [63:0]slave_Inter_0_M01_AXI_WUSER;
  wire slave_Inter_0_M01_AXI_WVALID;
  wire sysclk0_1_CLK_N;
  wire sysclk0_1_CLK_P;
  wire sysclk1_1_CLK_N;
  wire sysclk1_1_CLK_P;

  assign HBM_CATTRIP[0] = HBM_CATTRIP_constant_dout;
  assign ddr4_sdram_c0_act_n = bridge_to_host_ddr4_sdram_c0_ACT_N;
  assign ddr4_sdram_c0_adr[16:0] = bridge_to_host_ddr4_sdram_c0_ADR;
  assign ddr4_sdram_c0_ba[1:0] = bridge_to_host_ddr4_sdram_c0_BA;
  assign ddr4_sdram_c0_bg[1:0] = bridge_to_host_ddr4_sdram_c0_BG;
  assign ddr4_sdram_c0_ck_c = bridge_to_host_ddr4_sdram_c0_CK_C;
  assign ddr4_sdram_c0_ck_t = bridge_to_host_ddr4_sdram_c0_CK_T;
  assign ddr4_sdram_c0_cke = bridge_to_host_ddr4_sdram_c0_CKE;
  assign ddr4_sdram_c0_cs_n = bridge_to_host_ddr4_sdram_c0_CS_N;
  assign ddr4_sdram_c0_odt = bridge_to_host_ddr4_sdram_c0_ODT;
  assign ddr4_sdram_c0_par = bridge_to_host_ddr4_sdram_c0_PAR;
  assign ddr4_sdram_c0_reset_n = bridge_to_host_ddr4_sdram_c0_RESET_N;
  assign ddr4_sdram_c1_act_n = bridge_to_host_ddr4_sdram_c1_ACT_N;
  assign ddr4_sdram_c1_adr[16:0] = bridge_to_host_ddr4_sdram_c1_ADR;
  assign ddr4_sdram_c1_ba[1:0] = bridge_to_host_ddr4_sdram_c1_BA;
  assign ddr4_sdram_c1_bg[1:0] = bridge_to_host_ddr4_sdram_c1_BG;
  assign ddr4_sdram_c1_ck_c = bridge_to_host_ddr4_sdram_c1_CK_C;
  assign ddr4_sdram_c1_ck_t = bridge_to_host_ddr4_sdram_c1_CK_T;
  assign ddr4_sdram_c1_cke = bridge_to_host_ddr4_sdram_c1_CKE;
  assign ddr4_sdram_c1_cs_n = bridge_to_host_ddr4_sdram_c1_CS_N;
  assign ddr4_sdram_c1_odt = bridge_to_host_ddr4_sdram_c1_ODT;
  assign ddr4_sdram_c1_par = bridge_to_host_ddr4_sdram_c1_PAR;
  assign ddr4_sdram_c1_reset_n = bridge_to_host_ddr4_sdram_c1_RESET_N;
  assign pci_express_x8_txn[15:0] = qdma_0_pcie_mgt_txn;
  assign pci_express_x8_txp[15:0] = qdma_0_pcie_mgt_txp;
  assign pcie_perstn_1 = pcie_perstn;
  assign pcie_refclk_1_CLK_N = pcie_refclk_clk_n;
  assign pcie_refclk_1_CLK_P = pcie_refclk_clk_p;
  assign qdma_0_pcie_mgt_rxn = pci_express_x8_rxn[15:0];
  assign qdma_0_pcie_mgt_rxp = pci_express_x8_rxp[15:0];
  assign sysclk0_1_CLK_N = sysclk0_clk_n;
  assign sysclk0_1_CLK_P = sysclk0_clk_p;
  assign sysclk1_1_CLK_N = sysclk1_clk_n;
  assign sysclk1_1_CLK_P = sysclk1_clk_p;
  matmul_design_HBM_CATTRIP_constant_0 HBM_CATTRIP_constant
       (.dout(HBM_CATTRIP_constant_dout));
  Hardware_Runtime_imp_9F7XNO Hardware_Runtime
       (.M0_AXIS_tdata(inStream_1_TDATA),
        .M0_AXIS_tid(inStream_1_TID),
        .M0_AXIS_tready(inStream_1_TREADY),
        .M0_AXIS_tvalid(inStream_1_TVALID),
        .M1_AXIS_tdata(inStream_2_TDATA),
        .M1_AXIS_tready(inStream_2_TREADY),
        .M1_AXIS_tvalid(inStream_2_TVALID),
        .S0_AXIS_tdata(matmulFPGA_0_outStream_TDATA),
        .S0_AXIS_tdest(matmulFPGA_0_outStream_TDEST),
        .S0_AXIS_tid(matmulFPGA_0_outStream_TID),
        .S0_AXIS_tlast(matmulFPGA_0_outStream_TLAST),
        .S0_AXIS_tready(matmulFPGA_0_outStream_TREADY),
        .S0_AXIS_tvalid(matmulFPGA_0_outStream_TVALID),
        .S1_AXIS_tdata(matmulBlock_0_outStream_TDATA),
        .S1_AXIS_tdest(matmulBlock_0_outStream_TDEST),
        .S1_AXIS_tid(matmulBlock_0_outStream_TID),
        .S1_AXIS_tlast(matmulBlock_0_outStream_TLAST),
        .S1_AXIS_tready(matmulBlock_0_outStream_TREADY),
        .S1_AXIS_tvalid(matmulBlock_0_outStream_TVALID),
        .S_AXI_GP_araddr(S_AXI_GP_1_ARADDR),
        .S_AXI_GP_arprot(S_AXI_GP_1_ARPROT),
        .S_AXI_GP_arready(S_AXI_GP_1_ARREADY),
        .S_AXI_GP_arvalid(S_AXI_GP_1_ARVALID),
        .S_AXI_GP_awaddr(S_AXI_GP_1_AWADDR),
        .S_AXI_GP_awprot(S_AXI_GP_1_AWPROT),
        .S_AXI_GP_awready(S_AXI_GP_1_AWREADY),
        .S_AXI_GP_awvalid(S_AXI_GP_1_AWVALID),
        .S_AXI_GP_bready(S_AXI_GP_1_BREADY),
        .S_AXI_GP_bresp(S_AXI_GP_1_BRESP),
        .S_AXI_GP_bvalid(S_AXI_GP_1_BVALID),
        .S_AXI_GP_rdata(S_AXI_GP_1_RDATA),
        .S_AXI_GP_rready(S_AXI_GP_1_RREADY),
        .S_AXI_GP_rresp(S_AXI_GP_1_RRESP),
        .S_AXI_GP_rvalid(S_AXI_GP_1_RVALID),
        .S_AXI_GP_wdata(S_AXI_GP_1_WDATA),
        .S_AXI_GP_wready(S_AXI_GP_1_WREADY),
        .S_AXI_GP_wstrb(S_AXI_GP_1_WSTRB),
        .S_AXI_GP_wvalid(S_AXI_GP_1_WVALID),
        .clk(clk_app_1),
        .managed_rstn(managed_rstn_1),
        .rstn(clk_app_rstn_1));
  matmul_design_bitInfo_BRAM_Ctrl_0 bitInfo_BRAM_Ctrl
       (.bram_addr_a(bitInfo_BRAM_Ctrl_BRAM_PORTA_ADDR),
        .bram_clk_a(bitInfo_BRAM_Ctrl_BRAM_PORTA_CLK),
        .bram_en_a(bitInfo_BRAM_Ctrl_BRAM_PORTA_EN),
        .bram_rddata_a(bitInfo_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .bram_we_a(bitInfo_BRAM_Ctrl_BRAM_PORTA_WE),
        .bram_wrdata_a(bitInfo_BRAM_Ctrl_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_app_1),
        .s_axi_araddr(master_Inter_0_M00_AXI_ARADDR[11:0]),
        .s_axi_aresetn(clk_app_rstn_1),
        .s_axi_arprot(master_Inter_0_M00_AXI_ARPROT),
        .s_axi_arready(master_Inter_0_M00_AXI_ARREADY),
        .s_axi_arvalid(master_Inter_0_M00_AXI_ARVALID),
        .s_axi_awaddr(master_Inter_0_M00_AXI_AWADDR[11:0]),
        .s_axi_awprot(master_Inter_0_M00_AXI_AWPROT),
        .s_axi_awready(master_Inter_0_M00_AXI_AWREADY),
        .s_axi_awvalid(master_Inter_0_M00_AXI_AWVALID),
        .s_axi_bready(master_Inter_0_M00_AXI_BREADY),
        .s_axi_bresp(master_Inter_0_M00_AXI_BRESP),
        .s_axi_bvalid(master_Inter_0_M00_AXI_BVALID),
        .s_axi_rdata(master_Inter_0_M00_AXI_RDATA),
        .s_axi_rready(master_Inter_0_M00_AXI_RREADY),
        .s_axi_rresp(master_Inter_0_M00_AXI_RRESP),
        .s_axi_rvalid(master_Inter_0_M00_AXI_RVALID),
        .s_axi_wdata(master_Inter_0_M00_AXI_WDATA),
        .s_axi_wready(master_Inter_0_M00_AXI_WREADY),
        .s_axi_wstrb(master_Inter_0_M00_AXI_WSTRB),
        .s_axi_wvalid(master_Inter_0_M00_AXI_WVALID));
  matmul_design_bitinfo_0 bitinfo
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bitInfo_BRAM_Ctrl_BRAM_PORTA_ADDR}),
        .clka(bitInfo_BRAM_Ctrl_BRAM_PORTA_CLK),
        .dina(bitInfo_BRAM_Ctrl_BRAM_PORTA_DIN),
        .douta(bitInfo_BRAM_Ctrl_BRAM_PORTA_DOUT),
        .ena(bitInfo_BRAM_Ctrl_BRAM_PORTA_EN),
        .wea(bitInfo_BRAM_Ctrl_BRAM_PORTA_WE));
  bridge_to_host_imp_FTMBBB bridge_to_host
       (.DDR_0_SDRAM_act_n(bridge_to_host_ddr4_sdram_c0_ACT_N),
        .DDR_0_SDRAM_adr(bridge_to_host_ddr4_sdram_c0_ADR),
        .DDR_0_SDRAM_ba(bridge_to_host_ddr4_sdram_c0_BA),
        .DDR_0_SDRAM_bg(bridge_to_host_ddr4_sdram_c0_BG),
        .DDR_0_SDRAM_ck_c(bridge_to_host_ddr4_sdram_c0_CK_C),
        .DDR_0_SDRAM_ck_t(bridge_to_host_ddr4_sdram_c0_CK_T),
        .DDR_0_SDRAM_cke(bridge_to_host_ddr4_sdram_c0_CKE),
        .DDR_0_SDRAM_cs_n(bridge_to_host_ddr4_sdram_c0_CS_N),
        .DDR_0_SDRAM_dq(ddr4_sdram_c0_dq[71:0]),
        .DDR_0_SDRAM_dqs_c(ddr4_sdram_c0_dqs_c[17:0]),
        .DDR_0_SDRAM_dqs_t(ddr4_sdram_c0_dqs_t[17:0]),
        .DDR_0_SDRAM_odt(bridge_to_host_ddr4_sdram_c0_ODT),
        .DDR_0_SDRAM_par(bridge_to_host_ddr4_sdram_c0_PAR),
        .DDR_0_SDRAM_reset_n(bridge_to_host_ddr4_sdram_c0_RESET_N),
        .DDR_0_SYS_CLK_clk_n(sysclk0_1_CLK_N),
        .DDR_0_SYS_CLK_clk_p(sysclk0_1_CLK_P),
        .DDR_0_S_AXI_araddr(slave_Inter_0_M00_AXI_ARADDR),
        .DDR_0_S_AXI_arburst(slave_Inter_0_M00_AXI_ARBURST),
        .DDR_0_S_AXI_arcache(slave_Inter_0_M00_AXI_ARCACHE),
        .DDR_0_S_AXI_arid(slave_Inter_0_M00_AXI_ARID),
        .DDR_0_S_AXI_arlen(slave_Inter_0_M00_AXI_ARLEN),
        .DDR_0_S_AXI_arlock(slave_Inter_0_M00_AXI_ARLOCK),
        .DDR_0_S_AXI_arprot(slave_Inter_0_M00_AXI_ARPROT),
        .DDR_0_S_AXI_arqos(slave_Inter_0_M00_AXI_ARQOS),
        .DDR_0_S_AXI_arready(slave_Inter_0_M00_AXI_ARREADY),
        .DDR_0_S_AXI_arregion(slave_Inter_0_M00_AXI_ARREGION),
        .DDR_0_S_AXI_arsize(slave_Inter_0_M00_AXI_ARSIZE),
        .DDR_0_S_AXI_aruser(slave_Inter_0_M00_AXI_ARUSER),
        .DDR_0_S_AXI_arvalid(slave_Inter_0_M00_AXI_ARVALID),
        .DDR_0_S_AXI_awaddr(slave_Inter_0_M00_AXI_AWADDR),
        .DDR_0_S_AXI_awburst(slave_Inter_0_M00_AXI_AWBURST),
        .DDR_0_S_AXI_awcache(slave_Inter_0_M00_AXI_AWCACHE),
        .DDR_0_S_AXI_awid(slave_Inter_0_M00_AXI_AWID),
        .DDR_0_S_AXI_awlen(slave_Inter_0_M00_AXI_AWLEN),
        .DDR_0_S_AXI_awlock(slave_Inter_0_M00_AXI_AWLOCK),
        .DDR_0_S_AXI_awprot(slave_Inter_0_M00_AXI_AWPROT),
        .DDR_0_S_AXI_awqos(slave_Inter_0_M00_AXI_AWQOS),
        .DDR_0_S_AXI_awready(slave_Inter_0_M00_AXI_AWREADY),
        .DDR_0_S_AXI_awregion(slave_Inter_0_M00_AXI_AWREGION),
        .DDR_0_S_AXI_awsize(slave_Inter_0_M00_AXI_AWSIZE),
        .DDR_0_S_AXI_awuser(slave_Inter_0_M00_AXI_AWUSER),
        .DDR_0_S_AXI_awvalid(slave_Inter_0_M00_AXI_AWVALID),
        .DDR_0_S_AXI_bid(slave_Inter_0_M00_AXI_BID),
        .DDR_0_S_AXI_bready(slave_Inter_0_M00_AXI_BREADY),
        .DDR_0_S_AXI_bresp(slave_Inter_0_M00_AXI_BRESP),
        .DDR_0_S_AXI_bvalid(slave_Inter_0_M00_AXI_BVALID),
        .DDR_0_S_AXI_rdata(slave_Inter_0_M00_AXI_RDATA),
        .DDR_0_S_AXI_rid(slave_Inter_0_M00_AXI_RID),
        .DDR_0_S_AXI_rlast(slave_Inter_0_M00_AXI_RLAST),
        .DDR_0_S_AXI_rready(slave_Inter_0_M00_AXI_RREADY),
        .DDR_0_S_AXI_rresp(slave_Inter_0_M00_AXI_RRESP),
        .DDR_0_S_AXI_rvalid(slave_Inter_0_M00_AXI_RVALID),
        .DDR_0_S_AXI_wdata(slave_Inter_0_M00_AXI_WDATA),
        .DDR_0_S_AXI_wlast(slave_Inter_0_M00_AXI_WLAST),
        .DDR_0_S_AXI_wready(slave_Inter_0_M00_AXI_WREADY),
        .DDR_0_S_AXI_wstrb(slave_Inter_0_M00_AXI_WSTRB),
        .DDR_0_S_AXI_wuser(slave_Inter_0_M00_AXI_WUSER),
        .DDR_0_S_AXI_wvalid(slave_Inter_0_M00_AXI_WVALID),
        .DDR_0_peripheral_aresetn(M00_ARESETN_1),
        .DDR_1_SDRAM_act_n(bridge_to_host_ddr4_sdram_c1_ACT_N),
        .DDR_1_SDRAM_adr(bridge_to_host_ddr4_sdram_c1_ADR),
        .DDR_1_SDRAM_ba(bridge_to_host_ddr4_sdram_c1_BA),
        .DDR_1_SDRAM_bg(bridge_to_host_ddr4_sdram_c1_BG),
        .DDR_1_SDRAM_ck_c(bridge_to_host_ddr4_sdram_c1_CK_C),
        .DDR_1_SDRAM_ck_t(bridge_to_host_ddr4_sdram_c1_CK_T),
        .DDR_1_SDRAM_cke(bridge_to_host_ddr4_sdram_c1_CKE),
        .DDR_1_SDRAM_cs_n(bridge_to_host_ddr4_sdram_c1_CS_N),
        .DDR_1_SDRAM_dq(ddr4_sdram_c1_dq[71:0]),
        .DDR_1_SDRAM_dqs_c(ddr4_sdram_c1_dqs_c[17:0]),
        .DDR_1_SDRAM_dqs_t(ddr4_sdram_c1_dqs_t[17:0]),
        .DDR_1_SDRAM_odt(bridge_to_host_ddr4_sdram_c1_ODT),
        .DDR_1_SDRAM_par(bridge_to_host_ddr4_sdram_c1_PAR),
        .DDR_1_SDRAM_reset_n(bridge_to_host_ddr4_sdram_c1_RESET_N),
        .DDR_1_SYS_CLK_clk_n(sysclk1_1_CLK_N),
        .DDR_1_SYS_CLK_clk_p(sysclk1_1_CLK_P),
        .DDR_1_S_AXI_araddr(slave_Inter_0_M01_AXI_ARADDR),
        .DDR_1_S_AXI_arburst(slave_Inter_0_M01_AXI_ARBURST),
        .DDR_1_S_AXI_arcache(slave_Inter_0_M01_AXI_ARCACHE),
        .DDR_1_S_AXI_arid(slave_Inter_0_M01_AXI_ARID),
        .DDR_1_S_AXI_arlen(slave_Inter_0_M01_AXI_ARLEN),
        .DDR_1_S_AXI_arlock(slave_Inter_0_M01_AXI_ARLOCK),
        .DDR_1_S_AXI_arprot(slave_Inter_0_M01_AXI_ARPROT),
        .DDR_1_S_AXI_arqos(slave_Inter_0_M01_AXI_ARQOS),
        .DDR_1_S_AXI_arready(slave_Inter_0_M01_AXI_ARREADY),
        .DDR_1_S_AXI_arregion(slave_Inter_0_M01_AXI_ARREGION),
        .DDR_1_S_AXI_arsize(slave_Inter_0_M01_AXI_ARSIZE),
        .DDR_1_S_AXI_aruser(slave_Inter_0_M01_AXI_ARUSER),
        .DDR_1_S_AXI_arvalid(slave_Inter_0_M01_AXI_ARVALID),
        .DDR_1_S_AXI_awaddr(slave_Inter_0_M01_AXI_AWADDR),
        .DDR_1_S_AXI_awburst(slave_Inter_0_M01_AXI_AWBURST),
        .DDR_1_S_AXI_awcache(slave_Inter_0_M01_AXI_AWCACHE),
        .DDR_1_S_AXI_awid(slave_Inter_0_M01_AXI_AWID),
        .DDR_1_S_AXI_awlen(slave_Inter_0_M01_AXI_AWLEN),
        .DDR_1_S_AXI_awlock(slave_Inter_0_M01_AXI_AWLOCK),
        .DDR_1_S_AXI_awprot(slave_Inter_0_M01_AXI_AWPROT),
        .DDR_1_S_AXI_awqos(slave_Inter_0_M01_AXI_AWQOS),
        .DDR_1_S_AXI_awready(slave_Inter_0_M01_AXI_AWREADY),
        .DDR_1_S_AXI_awregion(slave_Inter_0_M01_AXI_AWREGION),
        .DDR_1_S_AXI_awsize(slave_Inter_0_M01_AXI_AWSIZE),
        .DDR_1_S_AXI_awuser(slave_Inter_0_M01_AXI_AWUSER),
        .DDR_1_S_AXI_awvalid(slave_Inter_0_M01_AXI_AWVALID),
        .DDR_1_S_AXI_bid(slave_Inter_0_M01_AXI_BID),
        .DDR_1_S_AXI_bready(slave_Inter_0_M01_AXI_BREADY),
        .DDR_1_S_AXI_bresp(slave_Inter_0_M01_AXI_BRESP),
        .DDR_1_S_AXI_bvalid(slave_Inter_0_M01_AXI_BVALID),
        .DDR_1_S_AXI_rdata(slave_Inter_0_M01_AXI_RDATA),
        .DDR_1_S_AXI_rid(slave_Inter_0_M01_AXI_RID),
        .DDR_1_S_AXI_rlast(slave_Inter_0_M01_AXI_RLAST),
        .DDR_1_S_AXI_rready(slave_Inter_0_M01_AXI_RREADY),
        .DDR_1_S_AXI_rresp(slave_Inter_0_M01_AXI_RRESP),
        .DDR_1_S_AXI_rvalid(slave_Inter_0_M01_AXI_RVALID),
        .DDR_1_S_AXI_wdata(slave_Inter_0_M01_AXI_WDATA),
        .DDR_1_S_AXI_wlast(slave_Inter_0_M01_AXI_WLAST),
        .DDR_1_S_AXI_wready(slave_Inter_0_M01_AXI_WREADY),
        .DDR_1_S_AXI_wstrb(slave_Inter_0_M01_AXI_WSTRB),
        .DDR_1_S_AXI_wuser(slave_Inter_0_M01_AXI_WUSER),
        .DDR_1_S_AXI_wvalid(slave_Inter_0_M01_AXI_WVALID),
        .DDR_1_peripheral_aresetn(M01_ARESETN_1),
        .DDR_1_ui_clk(M01_ACLK_1),
        .M_AXI_LITE_araddr(bridge_to_host_M_AXI_LITE_ARADDR),
        .M_AXI_LITE_arprot(bridge_to_host_M_AXI_LITE_ARPROT),
        .M_AXI_LITE_arready(bridge_to_host_M_AXI_LITE_ARREADY),
        .M_AXI_LITE_arvalid(bridge_to_host_M_AXI_LITE_ARVALID),
        .M_AXI_LITE_awaddr(bridge_to_host_M_AXI_LITE_AWADDR),
        .M_AXI_LITE_awprot(bridge_to_host_M_AXI_LITE_AWPROT),
        .M_AXI_LITE_awready(bridge_to_host_M_AXI_LITE_AWREADY),
        .M_AXI_LITE_awvalid(bridge_to_host_M_AXI_LITE_AWVALID),
        .M_AXI_LITE_bready(bridge_to_host_M_AXI_LITE_BREADY),
        .M_AXI_LITE_bresp(bridge_to_host_M_AXI_LITE_BRESP),
        .M_AXI_LITE_bvalid(bridge_to_host_M_AXI_LITE_BVALID),
        .M_AXI_LITE_rdata(bridge_to_host_M_AXI_LITE_RDATA),
        .M_AXI_LITE_rready(bridge_to_host_M_AXI_LITE_RREADY),
        .M_AXI_LITE_rresp(bridge_to_host_M_AXI_LITE_RRESP),
        .M_AXI_LITE_rvalid(bridge_to_host_M_AXI_LITE_RVALID),
        .M_AXI_LITE_wdata(bridge_to_host_M_AXI_LITE_WDATA),
        .M_AXI_LITE_wready(bridge_to_host_M_AXI_LITE_WREADY),
        .M_AXI_LITE_wstrb(bridge_to_host_M_AXI_LITE_WSTRB),
        .M_AXI_LITE_wvalid(bridge_to_host_M_AXI_LITE_WVALID),
        .M_AXI_araddr(bridge_to_host_M_AXI_ARADDR),
        .M_AXI_arburst(bridge_to_host_M_AXI_ARBURST),
        .M_AXI_arcache(bridge_to_host_M_AXI_ARCACHE),
        .M_AXI_arid(bridge_to_host_M_AXI_ARID),
        .M_AXI_arlen(bridge_to_host_M_AXI_ARLEN),
        .M_AXI_arlock(bridge_to_host_M_AXI_ARLOCK),
        .M_AXI_arprot(bridge_to_host_M_AXI_ARPROT),
        .M_AXI_arready(bridge_to_host_M_AXI_ARREADY),
        .M_AXI_arsize(bridge_to_host_M_AXI_ARSIZE),
        .M_AXI_aruser(bridge_to_host_M_AXI_ARUSER),
        .M_AXI_arvalid(bridge_to_host_M_AXI_ARVALID),
        .M_AXI_awaddr(bridge_to_host_M_AXI_AWADDR),
        .M_AXI_awburst(bridge_to_host_M_AXI_AWBURST),
        .M_AXI_awcache(bridge_to_host_M_AXI_AWCACHE),
        .M_AXI_awid(bridge_to_host_M_AXI_AWID),
        .M_AXI_awlen(bridge_to_host_M_AXI_AWLEN),
        .M_AXI_awlock(bridge_to_host_M_AXI_AWLOCK),
        .M_AXI_awprot(bridge_to_host_M_AXI_AWPROT),
        .M_AXI_awready(bridge_to_host_M_AXI_AWREADY),
        .M_AXI_awsize(bridge_to_host_M_AXI_AWSIZE),
        .M_AXI_awuser(bridge_to_host_M_AXI_AWUSER),
        .M_AXI_awvalid(bridge_to_host_M_AXI_AWVALID),
        .M_AXI_bid(bridge_to_host_M_AXI_BID),
        .M_AXI_bready(bridge_to_host_M_AXI_BREADY),
        .M_AXI_bresp(bridge_to_host_M_AXI_BRESP),
        .M_AXI_bvalid(bridge_to_host_M_AXI_BVALID),
        .M_AXI_rdata(bridge_to_host_M_AXI_RDATA),
        .M_AXI_rid(bridge_to_host_M_AXI_RID),
        .M_AXI_rlast(bridge_to_host_M_AXI_RLAST),
        .M_AXI_rready(bridge_to_host_M_AXI_RREADY),
        .M_AXI_rresp(bridge_to_host_M_AXI_RRESP),
        .M_AXI_rvalid(bridge_to_host_M_AXI_RVALID),
        .M_AXI_wdata(bridge_to_host_M_AXI_WDATA),
        .M_AXI_wlast(bridge_to_host_M_AXI_WLAST),
        .M_AXI_wready(bridge_to_host_M_AXI_WREADY),
        .M_AXI_wstrb(bridge_to_host_M_AXI_WSTRB),
        .M_AXI_wuser(bridge_to_host_M_AXI_WUSER),
        .M_AXI_wvalid(bridge_to_host_M_AXI_WVALID),
        .aclk(S00_ACLK_1),
        .aresetn(S00_ARESETN_1),
        .clk_app(clk_app_1),
        .clk_app_rstn(clk_app_rstn_1),
        .pci_express_x8_rxn(qdma_0_pcie_mgt_rxn),
        .pci_express_x8_rxp(qdma_0_pcie_mgt_rxp),
        .pci_express_x8_txn(qdma_0_pcie_mgt_txn),
        .pci_express_x8_txp(qdma_0_pcie_mgt_txp),
        .pcie_perstn(pcie_perstn_1),
        .pcie_refclk_clk_n(pcie_refclk_1_CLK_N),
        .pcie_refclk_clk_p(pcie_refclk_1_CLK_P),
        .ui_clk(bridge_to_host_ui_clk));
  matmul_design_clock_generator_0 clock_generator
       (.clk_app(clk_app_1),
        .clk_in1(bridge_to_host_ui_clk),
        .locked(clock_generator_locked),
        .resetn(pcie_perstn_1));
  matmul_design_managed_reset_0 managed_reset
       (.gpio_io_o(managed_reset_gpio_io_o),
        .s_axi_aclk(clk_app_1),
        .s_axi_araddr(master_Inter_0_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(clk_app_rstn_1),
        .s_axi_arready(master_Inter_0_M01_AXI_ARREADY),
        .s_axi_arvalid(master_Inter_0_M01_AXI_ARVALID),
        .s_axi_awaddr(master_Inter_0_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(master_Inter_0_M01_AXI_AWREADY),
        .s_axi_awvalid(master_Inter_0_M01_AXI_AWVALID),
        .s_axi_bready(master_Inter_0_M01_AXI_BREADY),
        .s_axi_bresp(master_Inter_0_M01_AXI_BRESP),
        .s_axi_bvalid(master_Inter_0_M01_AXI_BVALID),
        .s_axi_rdata(master_Inter_0_M01_AXI_RDATA),
        .s_axi_rready(master_Inter_0_M01_AXI_RREADY),
        .s_axi_rresp(master_Inter_0_M01_AXI_RRESP),
        .s_axi_rvalid(master_Inter_0_M01_AXI_RVALID),
        .s_axi_wdata(master_Inter_0_M01_AXI_WDATA),
        .s_axi_wready(master_Inter_0_M01_AXI_WREADY),
        .s_axi_wstrb(master_Inter_0_M01_AXI_WSTRB),
        .s_axi_wvalid(master_Inter_0_M01_AXI_WVALID));
  matmul_design_master_Inter_0_0 master_Inter_0
       (.ACLK(clk_app_1),
        .ARESETN(clk_app_rstn_1),
        .M00_ACLK(clk_app_1),
        .M00_ARESETN(clk_app_rstn_1),
        .M00_AXI_araddr(master_Inter_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(master_Inter_0_M00_AXI_ARPROT),
        .M00_AXI_arready(master_Inter_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(master_Inter_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(master_Inter_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(master_Inter_0_M00_AXI_AWPROT),
        .M00_AXI_awready(master_Inter_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(master_Inter_0_M00_AXI_AWVALID),
        .M00_AXI_bready(master_Inter_0_M00_AXI_BREADY),
        .M00_AXI_bresp(master_Inter_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(master_Inter_0_M00_AXI_BVALID),
        .M00_AXI_rdata(master_Inter_0_M00_AXI_RDATA),
        .M00_AXI_rready(master_Inter_0_M00_AXI_RREADY),
        .M00_AXI_rresp(master_Inter_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(master_Inter_0_M00_AXI_RVALID),
        .M00_AXI_wdata(master_Inter_0_M00_AXI_WDATA),
        .M00_AXI_wready(master_Inter_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(master_Inter_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(master_Inter_0_M00_AXI_WVALID),
        .M01_ACLK(clk_app_1),
        .M01_ARESETN(clk_app_rstn_1),
        .M01_AXI_araddr(master_Inter_0_M01_AXI_ARADDR),
        .M01_AXI_arready(master_Inter_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(master_Inter_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(master_Inter_0_M01_AXI_AWADDR),
        .M01_AXI_awready(master_Inter_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(master_Inter_0_M01_AXI_AWVALID),
        .M01_AXI_bready(master_Inter_0_M01_AXI_BREADY),
        .M01_AXI_bresp(master_Inter_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(master_Inter_0_M01_AXI_BVALID),
        .M01_AXI_rdata(master_Inter_0_M01_AXI_RDATA),
        .M01_AXI_rready(master_Inter_0_M01_AXI_RREADY),
        .M01_AXI_rresp(master_Inter_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(master_Inter_0_M01_AXI_RVALID),
        .M01_AXI_wdata(master_Inter_0_M01_AXI_WDATA),
        .M01_AXI_wready(master_Inter_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(master_Inter_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(master_Inter_0_M01_AXI_WVALID),
        .M02_ACLK(clk_app_1),
        .M02_ARESETN(clk_app_rstn_1),
        .M02_AXI_araddr(S_AXI_GP_1_ARADDR),
        .M02_AXI_arprot(S_AXI_GP_1_ARPROT),
        .M02_AXI_arready(S_AXI_GP_1_ARREADY),
        .M02_AXI_arvalid(S_AXI_GP_1_ARVALID),
        .M02_AXI_awaddr(S_AXI_GP_1_AWADDR),
        .M02_AXI_awprot(S_AXI_GP_1_AWPROT),
        .M02_AXI_awready(S_AXI_GP_1_AWREADY),
        .M02_AXI_awvalid(S_AXI_GP_1_AWVALID),
        .M02_AXI_bready(S_AXI_GP_1_BREADY),
        .M02_AXI_bresp(S_AXI_GP_1_BRESP),
        .M02_AXI_bvalid(S_AXI_GP_1_BVALID),
        .M02_AXI_rdata(S_AXI_GP_1_RDATA),
        .M02_AXI_rready(S_AXI_GP_1_RREADY),
        .M02_AXI_rresp(S_AXI_GP_1_RRESP),
        .M02_AXI_rvalid(S_AXI_GP_1_RVALID),
        .M02_AXI_wdata(S_AXI_GP_1_WDATA),
        .M02_AXI_wready(S_AXI_GP_1_WREADY),
        .M02_AXI_wstrb(S_AXI_GP_1_WSTRB),
        .M02_AXI_wvalid(S_AXI_GP_1_WVALID),
        .S00_ACLK(clk_app_1),
        .S00_ARESETN(clk_app_rstn_1),
        .S00_AXI_araddr(bridge_to_host_M_AXI_LITE_ARADDR),
        .S00_AXI_arprot(bridge_to_host_M_AXI_LITE_ARPROT),
        .S00_AXI_arready(bridge_to_host_M_AXI_LITE_ARREADY),
        .S00_AXI_arvalid(bridge_to_host_M_AXI_LITE_ARVALID),
        .S00_AXI_awaddr(bridge_to_host_M_AXI_LITE_AWADDR),
        .S00_AXI_awprot(bridge_to_host_M_AXI_LITE_AWPROT),
        .S00_AXI_awready(bridge_to_host_M_AXI_LITE_AWREADY),
        .S00_AXI_awvalid(bridge_to_host_M_AXI_LITE_AWVALID),
        .S00_AXI_bready(bridge_to_host_M_AXI_LITE_BREADY),
        .S00_AXI_bresp(bridge_to_host_M_AXI_LITE_BRESP),
        .S00_AXI_bvalid(bridge_to_host_M_AXI_LITE_BVALID),
        .S00_AXI_rdata(bridge_to_host_M_AXI_LITE_RDATA),
        .S00_AXI_rready(bridge_to_host_M_AXI_LITE_RREADY),
        .S00_AXI_rresp(bridge_to_host_M_AXI_LITE_RRESP),
        .S00_AXI_rvalid(bridge_to_host_M_AXI_LITE_RVALID),
        .S00_AXI_wdata(bridge_to_host_M_AXI_LITE_WDATA),
        .S00_AXI_wready(bridge_to_host_M_AXI_LITE_WREADY),
        .S00_AXI_wstrb(bridge_to_host_M_AXI_LITE_WSTRB),
        .S00_AXI_wvalid(bridge_to_host_M_AXI_LITE_WVALID));
  matmulBlock_0_imp_HH94YJ matmulBlock_0
       (.aclk(clk_app_1),
        .inStream_tdata(inStream_2_TDATA),
        .inStream_tready(inStream_2_TREADY),
        .inStream_tvalid(inStream_2_TVALID),
        .managed_aresetn(managed_rstn_1),
        .memport_araddr(matmulBlock_0_memport_ARADDR),
        .memport_arburst(matmulBlock_0_memport_ARBURST),
        .memport_arcache(matmulBlock_0_memport_ARCACHE),
        .memport_arid(matmulBlock_0_memport_ARID),
        .memport_arlen(matmulBlock_0_memport_ARLEN),
        .memport_arlock(matmulBlock_0_memport_ARLOCK),
        .memport_arprot(matmulBlock_0_memport_ARPROT),
        .memport_arqos(matmulBlock_0_memport_ARQOS),
        .memport_arready(matmulBlock_0_memport_ARREADY),
        .memport_arregion(matmulBlock_0_memport_ARREGION),
        .memport_arsize(matmulBlock_0_memport_ARSIZE),
        .memport_arvalid(matmulBlock_0_memport_ARVALID),
        .memport_awaddr(matmulBlock_0_memport_AWADDR),
        .memport_awburst(matmulBlock_0_memport_AWBURST),
        .memport_awcache(matmulBlock_0_memport_AWCACHE),
        .memport_awid(matmulBlock_0_memport_AWID),
        .memport_awlen(matmulBlock_0_memport_AWLEN),
        .memport_awlock(matmulBlock_0_memport_AWLOCK),
        .memport_awprot(matmulBlock_0_memport_AWPROT),
        .memport_awqos(matmulBlock_0_memport_AWQOS),
        .memport_awready(matmulBlock_0_memport_AWREADY),
        .memport_awregion(matmulBlock_0_memport_AWREGION),
        .memport_awsize(matmulBlock_0_memport_AWSIZE),
        .memport_awvalid(matmulBlock_0_memport_AWVALID),
        .memport_bid(matmulBlock_0_memport_BID),
        .memport_bready(matmulBlock_0_memport_BREADY),
        .memport_bresp(matmulBlock_0_memport_BRESP),
        .memport_bvalid(matmulBlock_0_memport_BVALID),
        .memport_rdata(matmulBlock_0_memport_RDATA),
        .memport_rid(matmulBlock_0_memport_RID),
        .memport_rlast(matmulBlock_0_memport_RLAST),
        .memport_rready(matmulBlock_0_memport_RREADY),
        .memport_rresp(matmulBlock_0_memport_RRESP),
        .memport_rvalid(matmulBlock_0_memport_RVALID),
        .memport_wdata(matmulBlock_0_memport_WDATA),
        .memport_wlast(matmulBlock_0_memport_WLAST),
        .memport_wready(matmulBlock_0_memport_WREADY),
        .memport_wstrb(matmulBlock_0_memport_WSTRB),
        .memport_wvalid(matmulBlock_0_memport_WVALID),
        .outStream_tdata(matmulBlock_0_outStream_TDATA),
        .outStream_tdest(matmulBlock_0_outStream_TDEST),
        .outStream_tid(matmulBlock_0_outStream_TID),
        .outStream_tlast(matmulBlock_0_outStream_TLAST),
        .outStream_tready(matmulBlock_0_outStream_TREADY),
        .outStream_tvalid(matmulBlock_0_outStream_TVALID));
  matmulFPGA_0_imp_1CD7ROQ matmulFPGA_0
       (.a_araddr(matmulFPGA_0_a_ARADDR),
        .a_arburst(matmulFPGA_0_a_ARBURST),
        .a_arcache(matmulFPGA_0_a_ARCACHE),
        .a_arid(matmulFPGA_0_a_ARID),
        .a_arlen(matmulFPGA_0_a_ARLEN),
        .a_arlock(matmulFPGA_0_a_ARLOCK),
        .a_arprot(matmulFPGA_0_a_ARPROT),
        .a_arqos(matmulFPGA_0_a_ARQOS),
        .a_arready(matmulFPGA_0_a_ARREADY),
        .a_arregion(matmulFPGA_0_a_ARREGION),
        .a_arsize(matmulFPGA_0_a_ARSIZE),
        .a_arvalid(matmulFPGA_0_a_ARVALID),
        .a_rdata(matmulFPGA_0_a_RDATA),
        .a_rid(matmulFPGA_0_a_RID),
        .a_rlast(matmulFPGA_0_a_RLAST),
        .a_rready(matmulFPGA_0_a_RREADY),
        .a_rresp(matmulFPGA_0_a_RRESP),
        .a_rvalid(matmulFPGA_0_a_RVALID),
        .aclk(clk_app_1),
        .b_araddr(matmulFPGA_0_b_ARADDR),
        .b_arburst(matmulFPGA_0_b_ARBURST),
        .b_arcache(matmulFPGA_0_b_ARCACHE),
        .b_arid(matmulFPGA_0_b_ARID),
        .b_arlen(matmulFPGA_0_b_ARLEN),
        .b_arlock(matmulFPGA_0_b_ARLOCK),
        .b_arprot(matmulFPGA_0_b_ARPROT),
        .b_arqos(matmulFPGA_0_b_ARQOS),
        .b_arready(matmulFPGA_0_b_ARREADY),
        .b_arregion(matmulFPGA_0_b_ARREGION),
        .b_arsize(matmulFPGA_0_b_ARSIZE),
        .b_arvalid(matmulFPGA_0_b_ARVALID),
        .b_rdata(matmulFPGA_0_b_RDATA),
        .b_rid(matmulFPGA_0_b_RID),
        .b_rlast(matmulFPGA_0_b_RLAST),
        .b_rready(matmulFPGA_0_b_RREADY),
        .b_rresp(matmulFPGA_0_b_RRESP),
        .b_rvalid(matmulFPGA_0_b_RVALID),
        .c_araddr(matmulFPGA_0_c_ARADDR),
        .c_arburst(matmulFPGA_0_c_ARBURST),
        .c_arcache(matmulFPGA_0_c_ARCACHE),
        .c_arid(matmulFPGA_0_c_ARID),
        .c_arlen(matmulFPGA_0_c_ARLEN),
        .c_arlock(matmulFPGA_0_c_ARLOCK),
        .c_arprot(matmulFPGA_0_c_ARPROT),
        .c_arqos(matmulFPGA_0_c_ARQOS),
        .c_arready(matmulFPGA_0_c_ARREADY),
        .c_arregion(matmulFPGA_0_c_ARREGION),
        .c_arsize(matmulFPGA_0_c_ARSIZE),
        .c_arvalid(matmulFPGA_0_c_ARVALID),
        .c_rdata(matmulFPGA_0_c_RDATA),
        .c_rid(matmulFPGA_0_c_RID),
        .c_rlast(matmulFPGA_0_c_RLAST),
        .c_rready(matmulFPGA_0_c_RREADY),
        .c_rresp(matmulFPGA_0_c_RRESP),
        .c_rvalid(matmulFPGA_0_c_RVALID),
        .inStream_tdata(inStream_1_TDATA),
        .inStream_tid(inStream_1_TID),
        .inStream_tready(inStream_1_TREADY),
        .inStream_tvalid(inStream_1_TVALID),
        .managed_aresetn(managed_rstn_1),
        .outStream_tdata(matmulFPGA_0_outStream_TDATA),
        .outStream_tdest(matmulFPGA_0_outStream_TDEST),
        .outStream_tid(matmulFPGA_0_outStream_TID),
        .outStream_tlast(matmulFPGA_0_outStream_TLAST),
        .outStream_tready(matmulFPGA_0_outStream_TREADY),
        .outStream_tvalid(matmulFPGA_0_outStream_TVALID));
  matmul_design_slave_Inter_0_0 slave_Inter_0
       (.ACLK(clk_app_1),
        .ARESETN(clk_app_rstn_1),
        .M00_ACLK(bridge_to_host_ui_clk),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(slave_Inter_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(slave_Inter_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(slave_Inter_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(slave_Inter_0_M00_AXI_ARID),
        .M00_AXI_arlen(slave_Inter_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(slave_Inter_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(slave_Inter_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(slave_Inter_0_M00_AXI_ARQOS),
        .M00_AXI_arready(slave_Inter_0_M00_AXI_ARREADY),
        .M00_AXI_arregion(slave_Inter_0_M00_AXI_ARREGION),
        .M00_AXI_arsize(slave_Inter_0_M00_AXI_ARSIZE),
        .M00_AXI_aruser(slave_Inter_0_M00_AXI_ARUSER),
        .M00_AXI_arvalid(slave_Inter_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(slave_Inter_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(slave_Inter_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(slave_Inter_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(slave_Inter_0_M00_AXI_AWID),
        .M00_AXI_awlen(slave_Inter_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(slave_Inter_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(slave_Inter_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(slave_Inter_0_M00_AXI_AWQOS),
        .M00_AXI_awready(slave_Inter_0_M00_AXI_AWREADY),
        .M00_AXI_awregion(slave_Inter_0_M00_AXI_AWREGION),
        .M00_AXI_awsize(slave_Inter_0_M00_AXI_AWSIZE),
        .M00_AXI_awuser(slave_Inter_0_M00_AXI_AWUSER),
        .M00_AXI_awvalid(slave_Inter_0_M00_AXI_AWVALID),
        .M00_AXI_bid(slave_Inter_0_M00_AXI_BID),
        .M00_AXI_bready(slave_Inter_0_M00_AXI_BREADY),
        .M00_AXI_bresp(slave_Inter_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(slave_Inter_0_M00_AXI_BVALID),
        .M00_AXI_rdata(slave_Inter_0_M00_AXI_RDATA),
        .M00_AXI_rid(slave_Inter_0_M00_AXI_RID),
        .M00_AXI_rlast(slave_Inter_0_M00_AXI_RLAST),
        .M00_AXI_rready(slave_Inter_0_M00_AXI_RREADY),
        .M00_AXI_rresp(slave_Inter_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(slave_Inter_0_M00_AXI_RVALID),
        .M00_AXI_wdata(slave_Inter_0_M00_AXI_WDATA),
        .M00_AXI_wlast(slave_Inter_0_M00_AXI_WLAST),
        .M00_AXI_wready(slave_Inter_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(slave_Inter_0_M00_AXI_WSTRB),
        .M00_AXI_wuser(slave_Inter_0_M00_AXI_WUSER),
        .M00_AXI_wvalid(slave_Inter_0_M00_AXI_WVALID),
        .M01_ACLK(M01_ACLK_1),
        .M01_ARESETN(M01_ARESETN_1),
        .M01_AXI_araddr(slave_Inter_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(slave_Inter_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(slave_Inter_0_M01_AXI_ARCACHE),
        .M01_AXI_arid(slave_Inter_0_M01_AXI_ARID),
        .M01_AXI_arlen(slave_Inter_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(slave_Inter_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(slave_Inter_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(slave_Inter_0_M01_AXI_ARQOS),
        .M01_AXI_arready(slave_Inter_0_M01_AXI_ARREADY),
        .M01_AXI_arregion(slave_Inter_0_M01_AXI_ARREGION),
        .M01_AXI_arsize(slave_Inter_0_M01_AXI_ARSIZE),
        .M01_AXI_aruser(slave_Inter_0_M01_AXI_ARUSER),
        .M01_AXI_arvalid(slave_Inter_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(slave_Inter_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(slave_Inter_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(slave_Inter_0_M01_AXI_AWCACHE),
        .M01_AXI_awid(slave_Inter_0_M01_AXI_AWID),
        .M01_AXI_awlen(slave_Inter_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(slave_Inter_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(slave_Inter_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(slave_Inter_0_M01_AXI_AWQOS),
        .M01_AXI_awready(slave_Inter_0_M01_AXI_AWREADY),
        .M01_AXI_awregion(slave_Inter_0_M01_AXI_AWREGION),
        .M01_AXI_awsize(slave_Inter_0_M01_AXI_AWSIZE),
        .M01_AXI_awuser(slave_Inter_0_M01_AXI_AWUSER),
        .M01_AXI_awvalid(slave_Inter_0_M01_AXI_AWVALID),
        .M01_AXI_bid(slave_Inter_0_M01_AXI_BID),
        .M01_AXI_bready(slave_Inter_0_M01_AXI_BREADY),
        .M01_AXI_bresp(slave_Inter_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(slave_Inter_0_M01_AXI_BVALID),
        .M01_AXI_rdata(slave_Inter_0_M01_AXI_RDATA),
        .M01_AXI_rid(slave_Inter_0_M01_AXI_RID),
        .M01_AXI_rlast(slave_Inter_0_M01_AXI_RLAST),
        .M01_AXI_rready(slave_Inter_0_M01_AXI_RREADY),
        .M01_AXI_rresp(slave_Inter_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(slave_Inter_0_M01_AXI_RVALID),
        .M01_AXI_wdata(slave_Inter_0_M01_AXI_WDATA),
        .M01_AXI_wlast(slave_Inter_0_M01_AXI_WLAST),
        .M01_AXI_wready(slave_Inter_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(slave_Inter_0_M01_AXI_WSTRB),
        .M01_AXI_wuser(slave_Inter_0_M01_AXI_WUSER),
        .M01_AXI_wvalid(slave_Inter_0_M01_AXI_WVALID),
        .S00_ACLK(S00_ACLK_1),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(bridge_to_host_M_AXI_ARADDR),
        .S00_AXI_arburst(bridge_to_host_M_AXI_ARBURST),
        .S00_AXI_arcache(bridge_to_host_M_AXI_ARCACHE),
        .S00_AXI_arid(bridge_to_host_M_AXI_ARID),
        .S00_AXI_arlen(bridge_to_host_M_AXI_ARLEN),
        .S00_AXI_arlock(bridge_to_host_M_AXI_ARLOCK),
        .S00_AXI_arprot(bridge_to_host_M_AXI_ARPROT),
        .S00_AXI_arready(bridge_to_host_M_AXI_ARREADY),
        .S00_AXI_arsize(bridge_to_host_M_AXI_ARSIZE),
        .S00_AXI_aruser(bridge_to_host_M_AXI_ARUSER),
        .S00_AXI_arvalid(bridge_to_host_M_AXI_ARVALID),
        .S00_AXI_awaddr(bridge_to_host_M_AXI_AWADDR),
        .S00_AXI_awburst(bridge_to_host_M_AXI_AWBURST),
        .S00_AXI_awcache(bridge_to_host_M_AXI_AWCACHE),
        .S00_AXI_awid(bridge_to_host_M_AXI_AWID),
        .S00_AXI_awlen(bridge_to_host_M_AXI_AWLEN),
        .S00_AXI_awlock(bridge_to_host_M_AXI_AWLOCK),
        .S00_AXI_awprot(bridge_to_host_M_AXI_AWPROT),
        .S00_AXI_awready(bridge_to_host_M_AXI_AWREADY),
        .S00_AXI_awsize(bridge_to_host_M_AXI_AWSIZE),
        .S00_AXI_awuser(bridge_to_host_M_AXI_AWUSER),
        .S00_AXI_awvalid(bridge_to_host_M_AXI_AWVALID),
        .S00_AXI_bid(bridge_to_host_M_AXI_BID),
        .S00_AXI_bready(bridge_to_host_M_AXI_BREADY),
        .S00_AXI_bresp(bridge_to_host_M_AXI_BRESP),
        .S00_AXI_bvalid(bridge_to_host_M_AXI_BVALID),
        .S00_AXI_rdata(bridge_to_host_M_AXI_RDATA),
        .S00_AXI_rid(bridge_to_host_M_AXI_RID),
        .S00_AXI_rlast(bridge_to_host_M_AXI_RLAST),
        .S00_AXI_rready(bridge_to_host_M_AXI_RREADY),
        .S00_AXI_rresp(bridge_to_host_M_AXI_RRESP),
        .S00_AXI_rvalid(bridge_to_host_M_AXI_RVALID),
        .S00_AXI_wdata(bridge_to_host_M_AXI_WDATA),
        .S00_AXI_wlast(bridge_to_host_M_AXI_WLAST),
        .S00_AXI_wready(bridge_to_host_M_AXI_WREADY),
        .S00_AXI_wstrb(bridge_to_host_M_AXI_WSTRB),
        .S00_AXI_wuser(bridge_to_host_M_AXI_WUSER),
        .S00_AXI_wvalid(bridge_to_host_M_AXI_WVALID),
        .S01_ACLK(clk_app_1),
        .S01_ARESETN(managed_rstn_1),
        .S01_AXI_araddr(matmulFPGA_0_a_ARADDR),
        .S01_AXI_arburst(matmulFPGA_0_a_ARBURST),
        .S01_AXI_arcache(matmulFPGA_0_a_ARCACHE),
        .S01_AXI_arid(matmulFPGA_0_a_ARID),
        .S01_AXI_arlen(matmulFPGA_0_a_ARLEN),
        .S01_AXI_arlock(matmulFPGA_0_a_ARLOCK),
        .S01_AXI_arprot(matmulFPGA_0_a_ARPROT),
        .S01_AXI_arqos(matmulFPGA_0_a_ARQOS),
        .S01_AXI_arready(matmulFPGA_0_a_ARREADY),
        .S01_AXI_arregion(matmulFPGA_0_a_ARREGION),
        .S01_AXI_arsize(matmulFPGA_0_a_ARSIZE),
        .S01_AXI_arvalid(matmulFPGA_0_a_ARVALID),
        .S01_AXI_rdata(matmulFPGA_0_a_RDATA),
        .S01_AXI_rid(matmulFPGA_0_a_RID),
        .S01_AXI_rlast(matmulFPGA_0_a_RLAST),
        .S01_AXI_rready(matmulFPGA_0_a_RREADY),
        .S01_AXI_rresp(matmulFPGA_0_a_RRESP),
        .S01_AXI_rvalid(matmulFPGA_0_a_RVALID),
        .S02_ACLK(clk_app_1),
        .S02_ARESETN(managed_rstn_1),
        .S02_AXI_araddr(matmulFPGA_0_b_ARADDR),
        .S02_AXI_arburst(matmulFPGA_0_b_ARBURST),
        .S02_AXI_arcache(matmulFPGA_0_b_ARCACHE),
        .S02_AXI_arid(matmulFPGA_0_b_ARID),
        .S02_AXI_arlen(matmulFPGA_0_b_ARLEN),
        .S02_AXI_arlock(matmulFPGA_0_b_ARLOCK),
        .S02_AXI_arprot(matmulFPGA_0_b_ARPROT),
        .S02_AXI_arqos(matmulFPGA_0_b_ARQOS),
        .S02_AXI_arready(matmulFPGA_0_b_ARREADY),
        .S02_AXI_arregion(matmulFPGA_0_b_ARREGION),
        .S02_AXI_arsize(matmulFPGA_0_b_ARSIZE),
        .S02_AXI_arvalid(matmulFPGA_0_b_ARVALID),
        .S02_AXI_rdata(matmulFPGA_0_b_RDATA),
        .S02_AXI_rid(matmulFPGA_0_b_RID),
        .S02_AXI_rlast(matmulFPGA_0_b_RLAST),
        .S02_AXI_rready(matmulFPGA_0_b_RREADY),
        .S02_AXI_rresp(matmulFPGA_0_b_RRESP),
        .S02_AXI_rvalid(matmulFPGA_0_b_RVALID),
        .S03_ACLK(clk_app_1),
        .S03_ARESETN(managed_rstn_1),
        .S03_AXI_araddr(matmulFPGA_0_c_ARADDR),
        .S03_AXI_arburst(matmulFPGA_0_c_ARBURST),
        .S03_AXI_arcache(matmulFPGA_0_c_ARCACHE),
        .S03_AXI_arid(matmulFPGA_0_c_ARID),
        .S03_AXI_arlen(matmulFPGA_0_c_ARLEN),
        .S03_AXI_arlock(matmulFPGA_0_c_ARLOCK),
        .S03_AXI_arprot(matmulFPGA_0_c_ARPROT),
        .S03_AXI_arqos(matmulFPGA_0_c_ARQOS),
        .S03_AXI_arready(matmulFPGA_0_c_ARREADY),
        .S03_AXI_arregion(matmulFPGA_0_c_ARREGION),
        .S03_AXI_arsize(matmulFPGA_0_c_ARSIZE),
        .S03_AXI_arvalid(matmulFPGA_0_c_ARVALID),
        .S03_AXI_rdata(matmulFPGA_0_c_RDATA),
        .S03_AXI_rid(matmulFPGA_0_c_RID),
        .S03_AXI_rlast(matmulFPGA_0_c_RLAST),
        .S03_AXI_rready(matmulFPGA_0_c_RREADY),
        .S03_AXI_rresp(matmulFPGA_0_c_RRESP),
        .S03_AXI_rvalid(matmulFPGA_0_c_RVALID),
        .S04_ACLK(clk_app_1),
        .S04_ARESETN(managed_rstn_1),
        .S04_AXI_araddr(matmulBlock_0_memport_ARADDR),
        .S04_AXI_arburst(matmulBlock_0_memport_ARBURST),
        .S04_AXI_arcache(matmulBlock_0_memport_ARCACHE),
        .S04_AXI_arid(matmulBlock_0_memport_ARID),
        .S04_AXI_arlen(matmulBlock_0_memport_ARLEN),
        .S04_AXI_arlock(matmulBlock_0_memport_ARLOCK),
        .S04_AXI_arprot(matmulBlock_0_memport_ARPROT),
        .S04_AXI_arqos(matmulBlock_0_memport_ARQOS),
        .S04_AXI_arready(matmulBlock_0_memport_ARREADY),
        .S04_AXI_arregion(matmulBlock_0_memport_ARREGION),
        .S04_AXI_arsize(matmulBlock_0_memport_ARSIZE),
        .S04_AXI_arvalid(matmulBlock_0_memport_ARVALID),
        .S04_AXI_awaddr(matmulBlock_0_memport_AWADDR),
        .S04_AXI_awburst(matmulBlock_0_memport_AWBURST),
        .S04_AXI_awcache(matmulBlock_0_memport_AWCACHE),
        .S04_AXI_awid(matmulBlock_0_memport_AWID),
        .S04_AXI_awlen(matmulBlock_0_memport_AWLEN),
        .S04_AXI_awlock(matmulBlock_0_memport_AWLOCK),
        .S04_AXI_awprot(matmulBlock_0_memport_AWPROT),
        .S04_AXI_awqos(matmulBlock_0_memport_AWQOS),
        .S04_AXI_awready(matmulBlock_0_memport_AWREADY),
        .S04_AXI_awregion(matmulBlock_0_memport_AWREGION),
        .S04_AXI_awsize(matmulBlock_0_memport_AWSIZE),
        .S04_AXI_awvalid(matmulBlock_0_memport_AWVALID),
        .S04_AXI_bid(matmulBlock_0_memport_BID),
        .S04_AXI_bready(matmulBlock_0_memport_BREADY),
        .S04_AXI_bresp(matmulBlock_0_memport_BRESP),
        .S04_AXI_bvalid(matmulBlock_0_memport_BVALID),
        .S04_AXI_rdata(matmulBlock_0_memport_RDATA),
        .S04_AXI_rid(matmulBlock_0_memport_RID),
        .S04_AXI_rlast(matmulBlock_0_memport_RLAST),
        .S04_AXI_rready(matmulBlock_0_memport_RREADY),
        .S04_AXI_rresp(matmulBlock_0_memport_RRESP),
        .S04_AXI_rvalid(matmulBlock_0_memport_RVALID),
        .S04_AXI_wdata(matmulBlock_0_memport_WDATA),
        .S04_AXI_wlast(matmulBlock_0_memport_WLAST),
        .S04_AXI_wready(matmulBlock_0_memport_WREADY),
        .S04_AXI_wstrb(matmulBlock_0_memport_WSTRB),
        .S04_AXI_wvalid(matmulBlock_0_memport_WVALID));
  system_reset_imp_1AZT7C7 system_reset
       (.clk_app(clk_app_1),
        .clk_app_managed_rstn(managed_rstn_1),
        .clk_app_rstn(clk_app_rstn_1),
        .clk_gen_locked(clock_generator_locked),
        .managed_reset(managed_reset_gpio_io_o),
        .pcie_perstn(pcie_perstn_1));
endmodule

module matmul_design_GP_Inter_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire GP_Inter_ACLK_net;
  wire GP_Inter_ARESETN_net;
  wire [31:0]GP_Inter_to_s00_couplers_ARADDR;
  wire [2:0]GP_Inter_to_s00_couplers_ARPROT;
  wire GP_Inter_to_s00_couplers_ARREADY;
  wire GP_Inter_to_s00_couplers_ARVALID;
  wire [31:0]GP_Inter_to_s00_couplers_AWADDR;
  wire [2:0]GP_Inter_to_s00_couplers_AWPROT;
  wire GP_Inter_to_s00_couplers_AWREADY;
  wire GP_Inter_to_s00_couplers_AWVALID;
  wire GP_Inter_to_s00_couplers_BREADY;
  wire [1:0]GP_Inter_to_s00_couplers_BRESP;
  wire GP_Inter_to_s00_couplers_BVALID;
  wire [31:0]GP_Inter_to_s00_couplers_RDATA;
  wire GP_Inter_to_s00_couplers_RREADY;
  wire [1:0]GP_Inter_to_s00_couplers_RRESP;
  wire GP_Inter_to_s00_couplers_RVALID;
  wire [31:0]GP_Inter_to_s00_couplers_WDATA;
  wire GP_Inter_to_s00_couplers_WREADY;
  wire [3:0]GP_Inter_to_s00_couplers_WSTRB;
  wire GP_Inter_to_s00_couplers_WVALID;
  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_GP_Inter_ARADDR;
  wire [2:0]m00_couplers_to_GP_Inter_ARPROT;
  wire m00_couplers_to_GP_Inter_ARREADY;
  wire m00_couplers_to_GP_Inter_ARVALID;
  wire [31:0]m00_couplers_to_GP_Inter_AWADDR;
  wire [2:0]m00_couplers_to_GP_Inter_AWPROT;
  wire m00_couplers_to_GP_Inter_AWREADY;
  wire m00_couplers_to_GP_Inter_AWVALID;
  wire m00_couplers_to_GP_Inter_BREADY;
  wire [1:0]m00_couplers_to_GP_Inter_BRESP;
  wire m00_couplers_to_GP_Inter_BVALID;
  wire [31:0]m00_couplers_to_GP_Inter_RDATA;
  wire m00_couplers_to_GP_Inter_RREADY;
  wire [1:0]m00_couplers_to_GP_Inter_RRESP;
  wire m00_couplers_to_GP_Inter_RVALID;
  wire [31:0]m00_couplers_to_GP_Inter_WDATA;
  wire m00_couplers_to_GP_Inter_WREADY;
  wire [3:0]m00_couplers_to_GP_Inter_WSTRB;
  wire m00_couplers_to_GP_Inter_WVALID;
  wire [31:0]m01_couplers_to_GP_Inter_ARADDR;
  wire [2:0]m01_couplers_to_GP_Inter_ARPROT;
  wire m01_couplers_to_GP_Inter_ARREADY;
  wire m01_couplers_to_GP_Inter_ARVALID;
  wire [31:0]m01_couplers_to_GP_Inter_AWADDR;
  wire [2:0]m01_couplers_to_GP_Inter_AWPROT;
  wire m01_couplers_to_GP_Inter_AWREADY;
  wire m01_couplers_to_GP_Inter_AWVALID;
  wire m01_couplers_to_GP_Inter_BREADY;
  wire [1:0]m01_couplers_to_GP_Inter_BRESP;
  wire m01_couplers_to_GP_Inter_BVALID;
  wire [31:0]m01_couplers_to_GP_Inter_RDATA;
  wire m01_couplers_to_GP_Inter_RREADY;
  wire [1:0]m01_couplers_to_GP_Inter_RRESP;
  wire m01_couplers_to_GP_Inter_RVALID;
  wire [31:0]m01_couplers_to_GP_Inter_WDATA;
  wire m01_couplers_to_GP_Inter_WREADY;
  wire [3:0]m01_couplers_to_GP_Inter_WSTRB;
  wire m01_couplers_to_GP_Inter_WVALID;
  wire [31:0]m02_couplers_to_GP_Inter_ARADDR;
  wire [2:0]m02_couplers_to_GP_Inter_ARPROT;
  wire m02_couplers_to_GP_Inter_ARREADY;
  wire m02_couplers_to_GP_Inter_ARVALID;
  wire [31:0]m02_couplers_to_GP_Inter_AWADDR;
  wire [2:0]m02_couplers_to_GP_Inter_AWPROT;
  wire m02_couplers_to_GP_Inter_AWREADY;
  wire m02_couplers_to_GP_Inter_AWVALID;
  wire m02_couplers_to_GP_Inter_BREADY;
  wire [1:0]m02_couplers_to_GP_Inter_BRESP;
  wire m02_couplers_to_GP_Inter_BVALID;
  wire [31:0]m02_couplers_to_GP_Inter_RDATA;
  wire m02_couplers_to_GP_Inter_RREADY;
  wire [1:0]m02_couplers_to_GP_Inter_RRESP;
  wire m02_couplers_to_GP_Inter_RVALID;
  wire [31:0]m02_couplers_to_GP_Inter_WDATA;
  wire m02_couplers_to_GP_Inter_WREADY;
  wire [3:0]m02_couplers_to_GP_Inter_WSTRB;
  wire m02_couplers_to_GP_Inter_WVALID;
  wire [31:0]m03_couplers_to_GP_Inter_ARADDR;
  wire [2:0]m03_couplers_to_GP_Inter_ARPROT;
  wire m03_couplers_to_GP_Inter_ARREADY;
  wire m03_couplers_to_GP_Inter_ARVALID;
  wire [31:0]m03_couplers_to_GP_Inter_AWADDR;
  wire [2:0]m03_couplers_to_GP_Inter_AWPROT;
  wire m03_couplers_to_GP_Inter_AWREADY;
  wire m03_couplers_to_GP_Inter_AWVALID;
  wire m03_couplers_to_GP_Inter_BREADY;
  wire [1:0]m03_couplers_to_GP_Inter_BRESP;
  wire m03_couplers_to_GP_Inter_BVALID;
  wire [31:0]m03_couplers_to_GP_Inter_RDATA;
  wire m03_couplers_to_GP_Inter_RREADY;
  wire [1:0]m03_couplers_to_GP_Inter_RRESP;
  wire m03_couplers_to_GP_Inter_RVALID;
  wire [31:0]m03_couplers_to_GP_Inter_WDATA;
  wire m03_couplers_to_GP_Inter_WREADY;
  wire [3:0]m03_couplers_to_GP_Inter_WSTRB;
  wire m03_couplers_to_GP_Inter_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign GP_Inter_ACLK_net = ACLK;
  assign GP_Inter_ARESETN_net = ARESETN;
  assign GP_Inter_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign GP_Inter_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign GP_Inter_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign GP_Inter_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign GP_Inter_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign GP_Inter_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign GP_Inter_to_s00_couplers_BREADY = S00_AXI_bready;
  assign GP_Inter_to_s00_couplers_RREADY = S00_AXI_rready;
  assign GP_Inter_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign GP_Inter_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign GP_Inter_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_GP_Inter_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_GP_Inter_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_GP_Inter_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_GP_Inter_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_GP_Inter_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_GP_Inter_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_GP_Inter_BREADY;
  assign M00_AXI_rready = m00_couplers_to_GP_Inter_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_GP_Inter_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_GP_Inter_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_GP_Inter_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_GP_Inter_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_GP_Inter_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_GP_Inter_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_GP_Inter_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_GP_Inter_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_GP_Inter_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_GP_Inter_BREADY;
  assign M01_AXI_rready = m01_couplers_to_GP_Inter_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_GP_Inter_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_GP_Inter_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_GP_Inter_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_GP_Inter_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_GP_Inter_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_GP_Inter_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_GP_Inter_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_GP_Inter_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_GP_Inter_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_GP_Inter_BREADY;
  assign M02_AXI_rready = m02_couplers_to_GP_Inter_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_GP_Inter_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_GP_Inter_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_GP_Inter_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_GP_Inter_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_GP_Inter_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_GP_Inter_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_GP_Inter_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_GP_Inter_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_GP_Inter_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_GP_Inter_BREADY;
  assign M03_AXI_rready = m03_couplers_to_GP_Inter_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_GP_Inter_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_GP_Inter_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_GP_Inter_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = GP_Inter_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = GP_Inter_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = GP_Inter_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = GP_Inter_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = GP_Inter_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = GP_Inter_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = GP_Inter_to_s00_couplers_RVALID;
  assign S00_AXI_wready = GP_Inter_to_s00_couplers_WREADY;
  assign m00_couplers_to_GP_Inter_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_GP_Inter_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_GP_Inter_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_GP_Inter_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_GP_Inter_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_GP_Inter_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_GP_Inter_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_GP_Inter_WREADY = M00_AXI_wready;
  assign m01_couplers_to_GP_Inter_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_GP_Inter_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_GP_Inter_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_GP_Inter_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_GP_Inter_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_GP_Inter_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_GP_Inter_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_GP_Inter_WREADY = M01_AXI_wready;
  assign m02_couplers_to_GP_Inter_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_GP_Inter_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_GP_Inter_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_GP_Inter_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_GP_Inter_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_GP_Inter_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_GP_Inter_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_GP_Inter_WREADY = M02_AXI_wready;
  assign m03_couplers_to_GP_Inter_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_GP_Inter_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_GP_Inter_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_GP_Inter_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_GP_Inter_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_GP_Inter_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_GP_Inter_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_GP_Inter_WREADY = M03_AXI_wready;
  m00_couplers_imp_1C5ADFW m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_GP_Inter_ARADDR),
        .M_AXI_arprot(m00_couplers_to_GP_Inter_ARPROT),
        .M_AXI_arready(m00_couplers_to_GP_Inter_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_GP_Inter_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_GP_Inter_AWADDR),
        .M_AXI_awprot(m00_couplers_to_GP_Inter_AWPROT),
        .M_AXI_awready(m00_couplers_to_GP_Inter_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_GP_Inter_AWVALID),
        .M_AXI_bready(m00_couplers_to_GP_Inter_BREADY),
        .M_AXI_bresp(m00_couplers_to_GP_Inter_BRESP),
        .M_AXI_bvalid(m00_couplers_to_GP_Inter_BVALID),
        .M_AXI_rdata(m00_couplers_to_GP_Inter_RDATA),
        .M_AXI_rready(m00_couplers_to_GP_Inter_RREADY),
        .M_AXI_rresp(m00_couplers_to_GP_Inter_RRESP),
        .M_AXI_rvalid(m00_couplers_to_GP_Inter_RVALID),
        .M_AXI_wdata(m00_couplers_to_GP_Inter_WDATA),
        .M_AXI_wready(m00_couplers_to_GP_Inter_WREADY),
        .M_AXI_wstrb(m00_couplers_to_GP_Inter_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_GP_Inter_WVALID),
        .S_ACLK(GP_Inter_ACLK_net),
        .S_ARESETN(GP_Inter_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_F8Z61K m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_GP_Inter_ARADDR),
        .M_AXI_arprot(m01_couplers_to_GP_Inter_ARPROT),
        .M_AXI_arready(m01_couplers_to_GP_Inter_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_GP_Inter_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_GP_Inter_AWADDR),
        .M_AXI_awprot(m01_couplers_to_GP_Inter_AWPROT),
        .M_AXI_awready(m01_couplers_to_GP_Inter_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_GP_Inter_AWVALID),
        .M_AXI_bready(m01_couplers_to_GP_Inter_BREADY),
        .M_AXI_bresp(m01_couplers_to_GP_Inter_BRESP),
        .M_AXI_bvalid(m01_couplers_to_GP_Inter_BVALID),
        .M_AXI_rdata(m01_couplers_to_GP_Inter_RDATA),
        .M_AXI_rready(m01_couplers_to_GP_Inter_RREADY),
        .M_AXI_rresp(m01_couplers_to_GP_Inter_RRESP),
        .M_AXI_rvalid(m01_couplers_to_GP_Inter_RVALID),
        .M_AXI_wdata(m01_couplers_to_GP_Inter_WDATA),
        .M_AXI_wready(m01_couplers_to_GP_Inter_WREADY),
        .M_AXI_wstrb(m01_couplers_to_GP_Inter_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_GP_Inter_WVALID),
        .S_ACLK(GP_Inter_ACLK_net),
        .S_ARESETN(GP_Inter_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_HRXAW5 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_GP_Inter_ARADDR),
        .M_AXI_arprot(m02_couplers_to_GP_Inter_ARPROT),
        .M_AXI_arready(m02_couplers_to_GP_Inter_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_GP_Inter_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_GP_Inter_AWADDR),
        .M_AXI_awprot(m02_couplers_to_GP_Inter_AWPROT),
        .M_AXI_awready(m02_couplers_to_GP_Inter_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_GP_Inter_AWVALID),
        .M_AXI_bready(m02_couplers_to_GP_Inter_BREADY),
        .M_AXI_bresp(m02_couplers_to_GP_Inter_BRESP),
        .M_AXI_bvalid(m02_couplers_to_GP_Inter_BVALID),
        .M_AXI_rdata(m02_couplers_to_GP_Inter_RDATA),
        .M_AXI_rready(m02_couplers_to_GP_Inter_RREADY),
        .M_AXI_rresp(m02_couplers_to_GP_Inter_RRESP),
        .M_AXI_rvalid(m02_couplers_to_GP_Inter_RVALID),
        .M_AXI_wdata(m02_couplers_to_GP_Inter_WDATA),
        .M_AXI_wready(m02_couplers_to_GP_Inter_WREADY),
        .M_AXI_wstrb(m02_couplers_to_GP_Inter_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_GP_Inter_WVALID),
        .S_ACLK(GP_Inter_ACLK_net),
        .S_ARESETN(GP_Inter_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1OVEU29 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_GP_Inter_ARADDR),
        .M_AXI_arprot(m03_couplers_to_GP_Inter_ARPROT),
        .M_AXI_arready(m03_couplers_to_GP_Inter_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_GP_Inter_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_GP_Inter_AWADDR),
        .M_AXI_awprot(m03_couplers_to_GP_Inter_AWPROT),
        .M_AXI_awready(m03_couplers_to_GP_Inter_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_GP_Inter_AWVALID),
        .M_AXI_bready(m03_couplers_to_GP_Inter_BREADY),
        .M_AXI_bresp(m03_couplers_to_GP_Inter_BRESP),
        .M_AXI_bvalid(m03_couplers_to_GP_Inter_BVALID),
        .M_AXI_rdata(m03_couplers_to_GP_Inter_RDATA),
        .M_AXI_rready(m03_couplers_to_GP_Inter_RREADY),
        .M_AXI_rresp(m03_couplers_to_GP_Inter_RRESP),
        .M_AXI_rvalid(m03_couplers_to_GP_Inter_RVALID),
        .M_AXI_wdata(m03_couplers_to_GP_Inter_WDATA),
        .M_AXI_wready(m03_couplers_to_GP_Inter_WREADY),
        .M_AXI_wstrb(m03_couplers_to_GP_Inter_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_GP_Inter_WVALID),
        .S_ACLK(GP_Inter_ACLK_net),
        .S_ARESETN(GP_Inter_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_1DGJWMR s00_couplers
       (.M_ACLK(GP_Inter_ACLK_net),
        .M_ARESETN(GP_Inter_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(GP_Inter_to_s00_couplers_ARADDR),
        .S_AXI_arprot(GP_Inter_to_s00_couplers_ARPROT),
        .S_AXI_arready(GP_Inter_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(GP_Inter_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(GP_Inter_to_s00_couplers_AWADDR),
        .S_AXI_awprot(GP_Inter_to_s00_couplers_AWPROT),
        .S_AXI_awready(GP_Inter_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(GP_Inter_to_s00_couplers_AWVALID),
        .S_AXI_bready(GP_Inter_to_s00_couplers_BREADY),
        .S_AXI_bresp(GP_Inter_to_s00_couplers_BRESP),
        .S_AXI_bvalid(GP_Inter_to_s00_couplers_BVALID),
        .S_AXI_rdata(GP_Inter_to_s00_couplers_RDATA),
        .S_AXI_rready(GP_Inter_to_s00_couplers_RREADY),
        .S_AXI_rresp(GP_Inter_to_s00_couplers_RRESP),
        .S_AXI_rvalid(GP_Inter_to_s00_couplers_RVALID),
        .S_AXI_wdata(GP_Inter_to_s00_couplers_WDATA),
        .S_AXI_wready(GP_Inter_to_s00_couplers_WREADY),
        .S_AXI_wstrb(GP_Inter_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(GP_Inter_to_s00_couplers_WVALID));
  matmul_design_xbar_3 xbar
       (.aclk(GP_Inter_ACLK_net),
        .aresetn(GP_Inter_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module matmul_design_QDMA_M_AXI_LITE_Inter_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire QDMA_M_AXI_LITE_Inter_ACLK_net;
  wire QDMA_M_AXI_LITE_Inter_ARESETN_net;
  wire [31:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARPROT;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARREADY;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWADDR;
  wire [2:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWPROT;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWREADY;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWVALID;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_BREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_BRESP;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_BVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_RDATA;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_RREADY;
  wire [1:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_RRESP;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_RVALID;
  wire [31:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_WDATA;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_WREADY;
  wire [3:0]QDMA_M_AXI_LITE_Inter_to_s00_couplers_WSTRB;
  wire QDMA_M_AXI_LITE_Inter_to_s00_couplers_WVALID;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR;
  wire [2:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID;
  wire [31:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR;
  wire [2:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY;
  wire [1:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID;
  wire [31:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY;
  wire [1:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID;
  wire [31:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY;
  wire [3:0]m00_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB;
  wire m00_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID;
  wire [31:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR;
  wire [2:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID;
  wire [31:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR;
  wire [2:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY;
  wire [1:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID;
  wire [31:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY;
  wire [1:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID;
  wire [31:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY;
  wire [3:0]m01_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB;
  wire m01_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID;
  wire [31:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR;
  wire [2:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID;
  wire [31:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR;
  wire [2:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY;
  wire [1:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID;
  wire [31:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY;
  wire [1:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID;
  wire [31:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY;
  wire [3:0]m02_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB;
  wire m02_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY;
  assign M00_AXI_rready = m00_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY;
  assign M01_AXI_rready = m01_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY;
  assign M02_AXI_rready = m02_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID;
  assign QDMA_M_AXI_LITE_Inter_ACLK_net = ACLK;
  assign QDMA_M_AXI_LITE_Inter_ARESETN_net = ARESETN;
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_BREADY = S00_AXI_bready;
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_RREADY = S00_AXI_rready;
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign QDMA_M_AXI_LITE_Inter_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = QDMA_M_AXI_LITE_Inter_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = QDMA_M_AXI_LITE_Inter_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = QDMA_M_AXI_LITE_Inter_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = QDMA_M_AXI_LITE_Inter_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = QDMA_M_AXI_LITE_Inter_to_s00_couplers_RVALID;
  assign S00_AXI_wready = QDMA_M_AXI_LITE_Inter_to_s00_couplers_WREADY;
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY = M00_AXI_wready;
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY = M01_AXI_wready;
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY = M02_AXI_wready;
  m00_couplers_imp_K7YZB3 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR),
        .M_AXI_arprot(m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT),
        .M_AXI_arready(m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR),
        .M_AXI_awprot(m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT),
        .M_AXI_awready(m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID),
        .M_AXI_bready(m00_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY),
        .M_AXI_bresp(m00_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP),
        .M_AXI_bvalid(m00_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID),
        .M_AXI_rdata(m00_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA),
        .M_AXI_rready(m00_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY),
        .M_AXI_rresp(m00_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP),
        .M_AXI_rvalid(m00_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID),
        .M_AXI_wdata(m00_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA),
        .M_AXI_wready(m00_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY),
        .M_AXI_wstrb(m00_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID),
        .S_ACLK(QDMA_M_AXI_LITE_Inter_ACLK_net),
        .S_ARESETN(QDMA_M_AXI_LITE_Inter_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1MPCR1N m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR),
        .M_AXI_arprot(m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT),
        .M_AXI_arready(m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR),
        .M_AXI_awprot(m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT),
        .M_AXI_awready(m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID),
        .M_AXI_bready(m01_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY),
        .M_AXI_bresp(m01_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP),
        .M_AXI_bvalid(m01_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID),
        .M_AXI_rdata(m01_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA),
        .M_AXI_rready(m01_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY),
        .M_AXI_rresp(m01_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP),
        .M_AXI_rvalid(m01_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID),
        .M_AXI_wdata(m01_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA),
        .M_AXI_wready(m01_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY),
        .M_AXI_wstrb(m01_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID),
        .S_ACLK(QDMA_M_AXI_LITE_Inter_ACLK_net),
        .S_ARESETN(QDMA_M_AXI_LITE_Inter_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_19WTADY m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARADDR),
        .M_AXI_arprot(m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARPROT),
        .M_AXI_arready(m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_QDMA_M_AXI_LITE_Inter_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWADDR),
        .M_AXI_awprot(m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWPROT),
        .M_AXI_awready(m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_QDMA_M_AXI_LITE_Inter_AWVALID),
        .M_AXI_bready(m02_couplers_to_QDMA_M_AXI_LITE_Inter_BREADY),
        .M_AXI_bresp(m02_couplers_to_QDMA_M_AXI_LITE_Inter_BRESP),
        .M_AXI_bvalid(m02_couplers_to_QDMA_M_AXI_LITE_Inter_BVALID),
        .M_AXI_rdata(m02_couplers_to_QDMA_M_AXI_LITE_Inter_RDATA),
        .M_AXI_rready(m02_couplers_to_QDMA_M_AXI_LITE_Inter_RREADY),
        .M_AXI_rresp(m02_couplers_to_QDMA_M_AXI_LITE_Inter_RRESP),
        .M_AXI_rvalid(m02_couplers_to_QDMA_M_AXI_LITE_Inter_RVALID),
        .M_AXI_wdata(m02_couplers_to_QDMA_M_AXI_LITE_Inter_WDATA),
        .M_AXI_wready(m02_couplers_to_QDMA_M_AXI_LITE_Inter_WREADY),
        .M_AXI_wstrb(m02_couplers_to_QDMA_M_AXI_LITE_Inter_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_QDMA_M_AXI_LITE_Inter_WVALID),
        .S_ACLK(QDMA_M_AXI_LITE_Inter_ACLK_net),
        .S_ARESETN(QDMA_M_AXI_LITE_Inter_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_O6J51C s00_couplers
       (.M_ACLK(QDMA_M_AXI_LITE_Inter_ACLK_net),
        .M_ARESETN(QDMA_M_AXI_LITE_Inter_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARADDR),
        .S_AXI_arprot(QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARPROT),
        .S_AXI_arready(QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(QDMA_M_AXI_LITE_Inter_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWADDR),
        .S_AXI_awprot(QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWPROT),
        .S_AXI_awready(QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(QDMA_M_AXI_LITE_Inter_to_s00_couplers_AWVALID),
        .S_AXI_bready(QDMA_M_AXI_LITE_Inter_to_s00_couplers_BREADY),
        .S_AXI_bresp(QDMA_M_AXI_LITE_Inter_to_s00_couplers_BRESP),
        .S_AXI_bvalid(QDMA_M_AXI_LITE_Inter_to_s00_couplers_BVALID),
        .S_AXI_rdata(QDMA_M_AXI_LITE_Inter_to_s00_couplers_RDATA),
        .S_AXI_rready(QDMA_M_AXI_LITE_Inter_to_s00_couplers_RREADY),
        .S_AXI_rresp(QDMA_M_AXI_LITE_Inter_to_s00_couplers_RRESP),
        .S_AXI_rvalid(QDMA_M_AXI_LITE_Inter_to_s00_couplers_RVALID),
        .S_AXI_wdata(QDMA_M_AXI_LITE_Inter_to_s00_couplers_WDATA),
        .S_AXI_wready(QDMA_M_AXI_LITE_Inter_to_s00_couplers_WREADY),
        .S_AXI_wstrb(QDMA_M_AXI_LITE_Inter_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(QDMA_M_AXI_LITE_Inter_to_s00_couplers_WVALID));
  matmul_design_xbar_0 xbar
       (.aclk(QDMA_M_AXI_LITE_Inter_ACLK_net),
        .aresetn(QDMA_M_AXI_LITE_Inter_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module matmul_design_inS_common_Inter_lvl0_0_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tid,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    S00_ARB_REQ_SUPPRESS,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tid,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tvalid,
    S01_ARB_REQ_SUPPRESS,
    S01_AXIS_ACLK,
    S01_AXIS_ARESETN,
    S01_AXIS_tdata,
    S01_AXIS_tdest,
    S01_AXIS_tid,
    S01_AXIS_tlast,
    S01_AXIS_tready,
    S01_AXIS_tvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [63:0]M00_AXIS_tdata;
  output [0:0]M00_AXIS_tid;
  input M00_AXIS_tready;
  output M00_AXIS_tvalid;
  input S00_ARB_REQ_SUPPRESS;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [63:0]S00_AXIS_tdata;
  input [1:0]S00_AXIS_tdest;
  input [0:0]S00_AXIS_tid;
  input [0:0]S00_AXIS_tlast;
  output [0:0]S00_AXIS_tready;
  input [0:0]S00_AXIS_tvalid;
  input S01_ARB_REQ_SUPPRESS;
  input S01_AXIS_ACLK;
  input S01_AXIS_ARESETN;
  input [63:0]S01_AXIS_tdata;
  input [1:0]S01_AXIS_tdest;
  input [0:0]S01_AXIS_tid;
  input S01_AXIS_tlast;
  output S01_AXIS_tready;
  input S01_AXIS_tvalid;

  wire inS_common_Inter_lvl0_0_ACLK_net;
  wire inS_common_Inter_lvl0_0_ARESETN_net;
  wire [63:0]inS_common_Inter_lvl0_0_to_s00_couplers_TDATA;
  wire [1:0]inS_common_Inter_lvl0_0_to_s00_couplers_TDEST;
  wire [0:0]inS_common_Inter_lvl0_0_to_s00_couplers_TID;
  wire [0:0]inS_common_Inter_lvl0_0_to_s00_couplers_TLAST;
  wire [0:0]inS_common_Inter_lvl0_0_to_s00_couplers_TREADY;
  wire [0:0]inS_common_Inter_lvl0_0_to_s00_couplers_TVALID;
  wire [63:0]inS_common_Inter_lvl0_0_to_s01_couplers_TDATA;
  wire [1:0]inS_common_Inter_lvl0_0_to_s01_couplers_TDEST;
  wire [0:0]inS_common_Inter_lvl0_0_to_s01_couplers_TID;
  wire inS_common_Inter_lvl0_0_to_s01_couplers_TLAST;
  wire inS_common_Inter_lvl0_0_to_s01_couplers_TREADY;
  wire inS_common_Inter_lvl0_0_to_s01_couplers_TVALID;
  wire [63:0]m00_couplers_to_inS_common_Inter_lvl0_0_TDATA;
  wire [0:0]m00_couplers_to_inS_common_Inter_lvl0_0_TID;
  wire m00_couplers_to_inS_common_Inter_lvl0_0_TREADY;
  wire m00_couplers_to_inS_common_Inter_lvl0_0_TVALID;
  wire s00_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [63:0]s00_couplers_to_xbar_TDATA;
  wire [1:0]s00_couplers_to_xbar_TDEST;
  wire [0:0]s00_couplers_to_xbar_TID;
  wire [0:0]s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire [0:0]s00_couplers_to_xbar_TVALID;
  wire s01_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [63:0]s01_couplers_to_xbar_TDATA;
  wire [1:0]s01_couplers_to_xbar_TDEST;
  wire [0:0]s01_couplers_to_xbar_TID;
  wire s01_couplers_to_xbar_TLAST;
  wire [1:1]s01_couplers_to_xbar_TREADY;
  wire s01_couplers_to_xbar_TVALID;
  wire [1:0]s_arb_req_suppress_concat_dout;
  wire [63:0]xbar_to_m00_couplers_TDATA;
  wire [1:0]xbar_to_m00_couplers_TDEST;
  wire [0:0]xbar_to_m00_couplers_TID;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [0:0]xbar_to_m00_couplers_TVALID;

  assign M00_AXIS_tdata[63:0] = m00_couplers_to_inS_common_Inter_lvl0_0_TDATA;
  assign M00_AXIS_tid[0] = m00_couplers_to_inS_common_Inter_lvl0_0_TID;
  assign M00_AXIS_tvalid = m00_couplers_to_inS_common_Inter_lvl0_0_TVALID;
  assign S00_AXIS_tready[0] = inS_common_Inter_lvl0_0_to_s00_couplers_TREADY;
  assign S01_AXIS_tready = inS_common_Inter_lvl0_0_to_s01_couplers_TREADY;
  assign inS_common_Inter_lvl0_0_ACLK_net = ACLK;
  assign inS_common_Inter_lvl0_0_ARESETN_net = ARESETN;
  assign inS_common_Inter_lvl0_0_to_s00_couplers_TDATA = S00_AXIS_tdata[63:0];
  assign inS_common_Inter_lvl0_0_to_s00_couplers_TDEST = S00_AXIS_tdest[1:0];
  assign inS_common_Inter_lvl0_0_to_s00_couplers_TID = S00_AXIS_tid[0];
  assign inS_common_Inter_lvl0_0_to_s00_couplers_TLAST = S00_AXIS_tlast[0];
  assign inS_common_Inter_lvl0_0_to_s00_couplers_TVALID = S00_AXIS_tvalid[0];
  assign inS_common_Inter_lvl0_0_to_s01_couplers_TDATA = S01_AXIS_tdata[63:0];
  assign inS_common_Inter_lvl0_0_to_s01_couplers_TDEST = S01_AXIS_tdest[1:0];
  assign inS_common_Inter_lvl0_0_to_s01_couplers_TID = S01_AXIS_tid[0];
  assign inS_common_Inter_lvl0_0_to_s01_couplers_TLAST = S01_AXIS_tlast;
  assign inS_common_Inter_lvl0_0_to_s01_couplers_TVALID = S01_AXIS_tvalid;
  assign m00_couplers_to_inS_common_Inter_lvl0_0_TREADY = M00_AXIS_tready;
  assign s00_arb_req_suppress_to_s_arb_req_suppress_concat = S00_ARB_REQ_SUPPRESS;
  assign s01_arb_req_suppress_to_s_arb_req_suppress_concat = S01_ARB_REQ_SUPPRESS;
  m00_couplers_imp_GQEHCB m00_couplers
       (.M_AXIS_ACLK(inS_common_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(inS_common_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(m00_couplers_to_inS_common_Inter_lvl0_0_TDATA),
        .M_AXIS_tid(m00_couplers_to_inS_common_Inter_lvl0_0_TID),
        .M_AXIS_tready(m00_couplers_to_inS_common_Inter_lvl0_0_TREADY),
        .M_AXIS_tvalid(m00_couplers_to_inS_common_Inter_lvl0_0_TVALID),
        .S_AXIS_ACLK(inS_common_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(inS_common_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m00_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m00_couplers_TID),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  s00_couplers_imp_9UYHX0 s00_couplers
       (.M_AXIS_ACLK(inS_common_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(inS_common_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s00_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s00_couplers_to_xbar_TID),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(inS_common_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(inS_common_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(inS_common_Inter_lvl0_0_to_s00_couplers_TDATA),
        .S_AXIS_tdest(inS_common_Inter_lvl0_0_to_s00_couplers_TDEST),
        .S_AXIS_tid(inS_common_Inter_lvl0_0_to_s00_couplers_TID),
        .S_AXIS_tlast(inS_common_Inter_lvl0_0_to_s00_couplers_TLAST),
        .S_AXIS_tready(inS_common_Inter_lvl0_0_to_s00_couplers_TREADY),
        .S_AXIS_tvalid(inS_common_Inter_lvl0_0_to_s00_couplers_TVALID));
  s01_couplers_imp_1FBPNTS s01_couplers
       (.M_AXIS_ACLK(inS_common_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(inS_common_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(s01_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s01_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s01_couplers_to_xbar_TID),
        .M_AXIS_tlast(s01_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s01_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s01_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(inS_common_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(inS_common_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(inS_common_Inter_lvl0_0_to_s01_couplers_TDATA),
        .S_AXIS_tdest(inS_common_Inter_lvl0_0_to_s01_couplers_TDEST),
        .S_AXIS_tid(inS_common_Inter_lvl0_0_to_s01_couplers_TID),
        .S_AXIS_tlast(inS_common_Inter_lvl0_0_to_s01_couplers_TLAST),
        .S_AXIS_tready(inS_common_Inter_lvl0_0_to_s01_couplers_TREADY),
        .S_AXIS_tvalid(inS_common_Inter_lvl0_0_to_s01_couplers_TVALID));
  matmul_design_s_arb_req_suppress_concat_6 s_arb_req_suppress_concat
       (.In0(s00_arb_req_suppress_to_s_arb_req_suppress_concat),
        .In1(s01_arb_req_suppress_to_s_arb_req_suppress_concat),
        .dout(s_arb_req_suppress_concat_dout));
  matmul_design_xbar_4 xbar
       (.aclk(inS_common_Inter_lvl0_0_ACLK_net),
        .aresetn(inS_common_Inter_lvl0_0_ARESETN_net),
        .m_axis_tdata(xbar_to_m00_couplers_TDATA),
        .m_axis_tdest(xbar_to_m00_couplers_TDEST),
        .m_axis_tid(xbar_to_m00_couplers_TID),
        .m_axis_tlast(xbar_to_m00_couplers_TLAST),
        .m_axis_tready(xbar_to_m00_couplers_TREADY),
        .m_axis_tvalid(xbar_to_m00_couplers_TVALID),
        .s_axis_tdata({s01_couplers_to_xbar_TDATA,s00_couplers_to_xbar_TDATA}),
        .s_axis_tdest({s01_couplers_to_xbar_TDEST,s00_couplers_to_xbar_TDEST}),
        .s_axis_tid({s01_couplers_to_xbar_TID,s00_couplers_to_xbar_TID}),
        .s_axis_tlast({s01_couplers_to_xbar_TLAST,s00_couplers_to_xbar_TLAST}),
        .s_axis_tready({s01_couplers_to_xbar_TREADY,s00_couplers_to_xbar_TREADY}),
        .s_axis_tvalid({s01_couplers_to_xbar_TVALID,s00_couplers_to_xbar_TVALID}),
        .s_req_suppress(s_arb_req_suppress_concat_dout));
endmodule

module matmul_design_inS_ext_Inter_lvl0_0_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tdest,
    M00_AXIS_tid,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    M01_AXIS_tdata,
    M01_AXIS_tid,
    M01_AXIS_tlast,
    M01_AXIS_tready,
    M01_AXIS_tvalid,
    M02_AXIS_ACLK,
    M02_AXIS_ARESETN,
    M02_AXIS_tdata,
    M02_AXIS_tid,
    M02_AXIS_tlast,
    M02_AXIS_tready,
    M02_AXIS_tvalid,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tid,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [63:0]M00_AXIS_tdata;
  output [1:0]M00_AXIS_tdest;
  output [0:0]M00_AXIS_tid;
  output [0:0]M00_AXIS_tlast;
  input [0:0]M00_AXIS_tready;
  output [0:0]M00_AXIS_tvalid;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  output [63:0]M01_AXIS_tdata;
  output [0:0]M01_AXIS_tid;
  output M01_AXIS_tlast;
  input M01_AXIS_tready;
  output M01_AXIS_tvalid;
  input M02_AXIS_ACLK;
  input M02_AXIS_ARESETN;
  output [63:0]M02_AXIS_tdata;
  output [0:0]M02_AXIS_tid;
  output M02_AXIS_tlast;
  input M02_AXIS_tready;
  output M02_AXIS_tvalid;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [63:0]S00_AXIS_tdata;
  input [1:0]S00_AXIS_tdest;
  input [0:0]S00_AXIS_tid;
  input S00_AXIS_tlast;
  output S00_AXIS_tready;
  input S00_AXIS_tvalid;

  wire inS_ext_Inter_lvl0_0_ACLK_net;
  wire inS_ext_Inter_lvl0_0_ARESETN_net;
  wire [63:0]inS_ext_Inter_lvl0_0_to_s00_couplers_TDATA;
  wire [1:0]inS_ext_Inter_lvl0_0_to_s00_couplers_TDEST;
  wire [0:0]inS_ext_Inter_lvl0_0_to_s00_couplers_TID;
  wire inS_ext_Inter_lvl0_0_to_s00_couplers_TLAST;
  wire inS_ext_Inter_lvl0_0_to_s00_couplers_TREADY;
  wire inS_ext_Inter_lvl0_0_to_s00_couplers_TVALID;
  wire [63:0]m00_couplers_to_inS_ext_Inter_lvl0_0_TDATA;
  wire [1:0]m00_couplers_to_inS_ext_Inter_lvl0_0_TDEST;
  wire [0:0]m00_couplers_to_inS_ext_Inter_lvl0_0_TID;
  wire [0:0]m00_couplers_to_inS_ext_Inter_lvl0_0_TLAST;
  wire [0:0]m00_couplers_to_inS_ext_Inter_lvl0_0_TREADY;
  wire [0:0]m00_couplers_to_inS_ext_Inter_lvl0_0_TVALID;
  wire [63:0]m01_couplers_to_inS_ext_Inter_lvl0_0_TDATA;
  wire [0:0]m01_couplers_to_inS_ext_Inter_lvl0_0_TID;
  wire m01_couplers_to_inS_ext_Inter_lvl0_0_TLAST;
  wire m01_couplers_to_inS_ext_Inter_lvl0_0_TREADY;
  wire m01_couplers_to_inS_ext_Inter_lvl0_0_TVALID;
  wire [63:0]m02_couplers_to_inS_ext_Inter_lvl0_0_TDATA;
  wire [0:0]m02_couplers_to_inS_ext_Inter_lvl0_0_TID;
  wire m02_couplers_to_inS_ext_Inter_lvl0_0_TLAST;
  wire m02_couplers_to_inS_ext_Inter_lvl0_0_TREADY;
  wire m02_couplers_to_inS_ext_Inter_lvl0_0_TVALID;
  wire [63:0]s00_couplers_to_xbar_TDATA;
  wire [1:0]s00_couplers_to_xbar_TDEST;
  wire [0:0]s00_couplers_to_xbar_TID;
  wire s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire s00_couplers_to_xbar_TVALID;
  wire [63:0]xbar_to_m00_couplers_TDATA;
  wire [1:0]xbar_to_m00_couplers_TDEST;
  wire [0:0]xbar_to_m00_couplers_TID;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire [0:0]xbar_to_m00_couplers_TREADY;
  wire [0:0]xbar_to_m00_couplers_TVALID;
  wire [127:64]xbar_to_m01_couplers_TDATA;
  wire [3:2]xbar_to_m01_couplers_TDEST;
  wire [1:1]xbar_to_m01_couplers_TID;
  wire [1:1]xbar_to_m01_couplers_TLAST;
  wire xbar_to_m01_couplers_TREADY;
  wire [1:1]xbar_to_m01_couplers_TVALID;
  wire [191:128]xbar_to_m02_couplers_TDATA;
  wire [5:4]xbar_to_m02_couplers_TDEST;
  wire [2:2]xbar_to_m02_couplers_TID;
  wire [2:2]xbar_to_m02_couplers_TLAST;
  wire xbar_to_m02_couplers_TREADY;
  wire [2:2]xbar_to_m02_couplers_TVALID;

  assign M00_AXIS_tdata[63:0] = m00_couplers_to_inS_ext_Inter_lvl0_0_TDATA;
  assign M00_AXIS_tdest[1:0] = m00_couplers_to_inS_ext_Inter_lvl0_0_TDEST;
  assign M00_AXIS_tid[0] = m00_couplers_to_inS_ext_Inter_lvl0_0_TID;
  assign M00_AXIS_tlast[0] = m00_couplers_to_inS_ext_Inter_lvl0_0_TLAST;
  assign M00_AXIS_tvalid[0] = m00_couplers_to_inS_ext_Inter_lvl0_0_TVALID;
  assign M01_AXIS_tdata[63:0] = m01_couplers_to_inS_ext_Inter_lvl0_0_TDATA;
  assign M01_AXIS_tid[0] = m01_couplers_to_inS_ext_Inter_lvl0_0_TID;
  assign M01_AXIS_tlast = m01_couplers_to_inS_ext_Inter_lvl0_0_TLAST;
  assign M01_AXIS_tvalid = m01_couplers_to_inS_ext_Inter_lvl0_0_TVALID;
  assign M02_AXIS_tdata[63:0] = m02_couplers_to_inS_ext_Inter_lvl0_0_TDATA;
  assign M02_AXIS_tid[0] = m02_couplers_to_inS_ext_Inter_lvl0_0_TID;
  assign M02_AXIS_tlast = m02_couplers_to_inS_ext_Inter_lvl0_0_TLAST;
  assign M02_AXIS_tvalid = m02_couplers_to_inS_ext_Inter_lvl0_0_TVALID;
  assign S00_AXIS_tready = inS_ext_Inter_lvl0_0_to_s00_couplers_TREADY;
  assign inS_ext_Inter_lvl0_0_ACLK_net = ACLK;
  assign inS_ext_Inter_lvl0_0_ARESETN_net = ARESETN;
  assign inS_ext_Inter_lvl0_0_to_s00_couplers_TDATA = S00_AXIS_tdata[63:0];
  assign inS_ext_Inter_lvl0_0_to_s00_couplers_TDEST = S00_AXIS_tdest[1:0];
  assign inS_ext_Inter_lvl0_0_to_s00_couplers_TID = S00_AXIS_tid[0];
  assign inS_ext_Inter_lvl0_0_to_s00_couplers_TLAST = S00_AXIS_tlast;
  assign inS_ext_Inter_lvl0_0_to_s00_couplers_TVALID = S00_AXIS_tvalid;
  assign m00_couplers_to_inS_ext_Inter_lvl0_0_TREADY = M00_AXIS_tready[0];
  assign m01_couplers_to_inS_ext_Inter_lvl0_0_TREADY = M01_AXIS_tready;
  assign m02_couplers_to_inS_ext_Inter_lvl0_0_TREADY = M02_AXIS_tready;
  m00_couplers_imp_1P1BUWM m00_couplers
       (.M_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(m00_couplers_to_inS_ext_Inter_lvl0_0_TDATA),
        .M_AXIS_tdest(m00_couplers_to_inS_ext_Inter_lvl0_0_TDEST),
        .M_AXIS_tid(m00_couplers_to_inS_ext_Inter_lvl0_0_TID),
        .M_AXIS_tlast(m00_couplers_to_inS_ext_Inter_lvl0_0_TLAST),
        .M_AXIS_tready(m00_couplers_to_inS_ext_Inter_lvl0_0_TREADY),
        .M_AXIS_tvalid(m00_couplers_to_inS_ext_Inter_lvl0_0_TVALID),
        .S_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m00_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m00_couplers_TID),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  m01_couplers_imp_HWM676 m01_couplers
       (.M_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(m01_couplers_to_inS_ext_Inter_lvl0_0_TDATA),
        .M_AXIS_tid(m01_couplers_to_inS_ext_Inter_lvl0_0_TID),
        .M_AXIS_tlast(m01_couplers_to_inS_ext_Inter_lvl0_0_TLAST),
        .M_AXIS_tready(m01_couplers_to_inS_ext_Inter_lvl0_0_TREADY),
        .M_AXIS_tvalid(m01_couplers_to_inS_ext_Inter_lvl0_0_TVALID),
        .S_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m01_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m01_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m01_couplers_TID),
        .S_AXIS_tlast(xbar_to_m01_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m01_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m01_couplers_TVALID));
  m02_couplers_imp_F3OJ4V m02_couplers
       (.M_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(m02_couplers_to_inS_ext_Inter_lvl0_0_TDATA),
        .M_AXIS_tid(m02_couplers_to_inS_ext_Inter_lvl0_0_TID),
        .M_AXIS_tlast(m02_couplers_to_inS_ext_Inter_lvl0_0_TLAST),
        .M_AXIS_tready(m02_couplers_to_inS_ext_Inter_lvl0_0_TREADY),
        .M_AXIS_tvalid(m02_couplers_to_inS_ext_Inter_lvl0_0_TVALID),
        .S_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m02_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m02_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m02_couplers_TID),
        .S_AXIS_tlast(xbar_to_m02_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m02_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m02_couplers_TVALID));
  s00_couplers_imp_1IG63BD s00_couplers
       (.M_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s00_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s00_couplers_to_xbar_TID),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(inS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(inS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(inS_ext_Inter_lvl0_0_to_s00_couplers_TDATA),
        .S_AXIS_tdest(inS_ext_Inter_lvl0_0_to_s00_couplers_TDEST),
        .S_AXIS_tid(inS_ext_Inter_lvl0_0_to_s00_couplers_TID),
        .S_AXIS_tlast(inS_ext_Inter_lvl0_0_to_s00_couplers_TLAST),
        .S_AXIS_tready(inS_ext_Inter_lvl0_0_to_s00_couplers_TREADY),
        .S_AXIS_tvalid(inS_ext_Inter_lvl0_0_to_s00_couplers_TVALID));
  matmul_design_xbar_5 xbar
       (.aclk(inS_ext_Inter_lvl0_0_ACLK_net),
        .aresetn(inS_ext_Inter_lvl0_0_ARESETN_net),
        .m_axis_tdata({xbar_to_m02_couplers_TDATA,xbar_to_m01_couplers_TDATA,xbar_to_m00_couplers_TDATA}),
        .m_axis_tdest({xbar_to_m02_couplers_TDEST,xbar_to_m01_couplers_TDEST,xbar_to_m00_couplers_TDEST}),
        .m_axis_tid({xbar_to_m02_couplers_TID,xbar_to_m01_couplers_TID,xbar_to_m00_couplers_TID}),
        .m_axis_tlast({xbar_to_m02_couplers_TLAST,xbar_to_m01_couplers_TLAST,xbar_to_m00_couplers_TLAST}),
        .m_axis_tready({xbar_to_m02_couplers_TREADY,xbar_to_m01_couplers_TREADY,xbar_to_m00_couplers_TREADY}),
        .m_axis_tvalid({xbar_to_m02_couplers_TVALID,xbar_to_m01_couplers_TVALID,xbar_to_m00_couplers_TVALID}),
        .s_axis_tdata(s00_couplers_to_xbar_TDATA),
        .s_axis_tdest(s00_couplers_to_xbar_TDEST),
        .s_axis_tid(s00_couplers_to_xbar_TID),
        .s_axis_tlast(s00_couplers_to_xbar_TLAST),
        .s_axis_tready(s00_couplers_to_xbar_TREADY),
        .s_axis_tvalid(s00_couplers_to_xbar_TVALID));
endmodule

module matmul_design_master_Inter_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [31:0]m00_couplers_to_master_Inter_0_ARADDR;
  wire [2:0]m00_couplers_to_master_Inter_0_ARPROT;
  wire [0:0]m00_couplers_to_master_Inter_0_ARREADY;
  wire [0:0]m00_couplers_to_master_Inter_0_ARVALID;
  wire [31:0]m00_couplers_to_master_Inter_0_AWADDR;
  wire [2:0]m00_couplers_to_master_Inter_0_AWPROT;
  wire [0:0]m00_couplers_to_master_Inter_0_AWREADY;
  wire [0:0]m00_couplers_to_master_Inter_0_AWVALID;
  wire [0:0]m00_couplers_to_master_Inter_0_BREADY;
  wire [1:0]m00_couplers_to_master_Inter_0_BRESP;
  wire [0:0]m00_couplers_to_master_Inter_0_BVALID;
  wire [31:0]m00_couplers_to_master_Inter_0_RDATA;
  wire [0:0]m00_couplers_to_master_Inter_0_RREADY;
  wire [1:0]m00_couplers_to_master_Inter_0_RRESP;
  wire [0:0]m00_couplers_to_master_Inter_0_RVALID;
  wire [31:0]m00_couplers_to_master_Inter_0_WDATA;
  wire [0:0]m00_couplers_to_master_Inter_0_WREADY;
  wire [3:0]m00_couplers_to_master_Inter_0_WSTRB;
  wire [0:0]m00_couplers_to_master_Inter_0_WVALID;
  wire [31:0]m01_couplers_to_master_Inter_0_ARADDR;
  wire [0:0]m01_couplers_to_master_Inter_0_ARREADY;
  wire [0:0]m01_couplers_to_master_Inter_0_ARVALID;
  wire [31:0]m01_couplers_to_master_Inter_0_AWADDR;
  wire [0:0]m01_couplers_to_master_Inter_0_AWREADY;
  wire [0:0]m01_couplers_to_master_Inter_0_AWVALID;
  wire [0:0]m01_couplers_to_master_Inter_0_BREADY;
  wire [1:0]m01_couplers_to_master_Inter_0_BRESP;
  wire [0:0]m01_couplers_to_master_Inter_0_BVALID;
  wire [31:0]m01_couplers_to_master_Inter_0_RDATA;
  wire [0:0]m01_couplers_to_master_Inter_0_RREADY;
  wire [1:0]m01_couplers_to_master_Inter_0_RRESP;
  wire [0:0]m01_couplers_to_master_Inter_0_RVALID;
  wire [31:0]m01_couplers_to_master_Inter_0_WDATA;
  wire [0:0]m01_couplers_to_master_Inter_0_WREADY;
  wire [3:0]m01_couplers_to_master_Inter_0_WSTRB;
  wire [0:0]m01_couplers_to_master_Inter_0_WVALID;
  wire [31:0]m02_couplers_to_master_Inter_0_ARADDR;
  wire [2:0]m02_couplers_to_master_Inter_0_ARPROT;
  wire m02_couplers_to_master_Inter_0_ARREADY;
  wire m02_couplers_to_master_Inter_0_ARVALID;
  wire [31:0]m02_couplers_to_master_Inter_0_AWADDR;
  wire [2:0]m02_couplers_to_master_Inter_0_AWPROT;
  wire m02_couplers_to_master_Inter_0_AWREADY;
  wire m02_couplers_to_master_Inter_0_AWVALID;
  wire m02_couplers_to_master_Inter_0_BREADY;
  wire [1:0]m02_couplers_to_master_Inter_0_BRESP;
  wire m02_couplers_to_master_Inter_0_BVALID;
  wire [31:0]m02_couplers_to_master_Inter_0_RDATA;
  wire m02_couplers_to_master_Inter_0_RREADY;
  wire [1:0]m02_couplers_to_master_Inter_0_RRESP;
  wire m02_couplers_to_master_Inter_0_RVALID;
  wire [31:0]m02_couplers_to_master_Inter_0_WDATA;
  wire m02_couplers_to_master_Inter_0_WREADY;
  wire [3:0]m02_couplers_to_master_Inter_0_WSTRB;
  wire m02_couplers_to_master_Inter_0_WVALID;
  wire master_Inter_0_ACLK_net;
  wire master_Inter_0_ARESETN_net;
  wire [31:0]master_Inter_0_to_s00_couplers_ARADDR;
  wire [2:0]master_Inter_0_to_s00_couplers_ARPROT;
  wire master_Inter_0_to_s00_couplers_ARREADY;
  wire master_Inter_0_to_s00_couplers_ARVALID;
  wire [31:0]master_Inter_0_to_s00_couplers_AWADDR;
  wire [2:0]master_Inter_0_to_s00_couplers_AWPROT;
  wire master_Inter_0_to_s00_couplers_AWREADY;
  wire master_Inter_0_to_s00_couplers_AWVALID;
  wire master_Inter_0_to_s00_couplers_BREADY;
  wire [1:0]master_Inter_0_to_s00_couplers_BRESP;
  wire master_Inter_0_to_s00_couplers_BVALID;
  wire [31:0]master_Inter_0_to_s00_couplers_RDATA;
  wire master_Inter_0_to_s00_couplers_RREADY;
  wire [1:0]master_Inter_0_to_s00_couplers_RRESP;
  wire master_Inter_0_to_s00_couplers_RVALID;
  wire [31:0]master_Inter_0_to_s00_couplers_WDATA;
  wire master_Inter_0_to_s00_couplers_WREADY;
  wire [3:0]master_Inter_0_to_s00_couplers_WSTRB;
  wire master_Inter_0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [8:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [8:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_master_Inter_0_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_master_Inter_0_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_master_Inter_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_master_Inter_0_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_master_Inter_0_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_master_Inter_0_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_master_Inter_0_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_master_Inter_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_master_Inter_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_master_Inter_0_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_master_Inter_0_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_master_Inter_0_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_master_Inter_0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_master_Inter_0_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_master_Inter_0_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_master_Inter_0_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_master_Inter_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_master_Inter_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_master_Inter_0_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_master_Inter_0_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_master_Inter_0_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_master_Inter_0_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_master_Inter_0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_master_Inter_0_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_master_Inter_0_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_master_Inter_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_master_Inter_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_master_Inter_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_master_Inter_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_master_Inter_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_master_Inter_0_WVALID;
  assign S00_AXI_arready = master_Inter_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = master_Inter_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = master_Inter_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = master_Inter_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = master_Inter_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = master_Inter_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = master_Inter_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = master_Inter_0_to_s00_couplers_WREADY;
  assign m00_couplers_to_master_Inter_0_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_master_Inter_0_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_master_Inter_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_master_Inter_0_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_master_Inter_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_master_Inter_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_master_Inter_0_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_master_Inter_0_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_master_Inter_0_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_master_Inter_0_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_master_Inter_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_master_Inter_0_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_master_Inter_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_master_Inter_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_master_Inter_0_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_master_Inter_0_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_master_Inter_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_master_Inter_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_master_Inter_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_master_Inter_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_master_Inter_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_master_Inter_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_master_Inter_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_master_Inter_0_WREADY = M02_AXI_wready;
  assign master_Inter_0_ACLK_net = ACLK;
  assign master_Inter_0_ARESETN_net = ARESETN;
  assign master_Inter_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign master_Inter_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign master_Inter_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign master_Inter_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign master_Inter_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign master_Inter_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign master_Inter_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign master_Inter_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign master_Inter_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign master_Inter_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign master_Inter_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_Y4R9UX m00_couplers
       (.M_ACLK(master_Inter_0_ACLK_net),
        .M_ARESETN(master_Inter_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_master_Inter_0_ARADDR),
        .M_AXI_arprot(m00_couplers_to_master_Inter_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_master_Inter_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_master_Inter_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_master_Inter_0_AWADDR),
        .M_AXI_awprot(m00_couplers_to_master_Inter_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_master_Inter_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_master_Inter_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_master_Inter_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_master_Inter_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_master_Inter_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_master_Inter_0_RDATA),
        .M_AXI_rready(m00_couplers_to_master_Inter_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_master_Inter_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_master_Inter_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_master_Inter_0_WDATA),
        .M_AXI_wready(m00_couplers_to_master_Inter_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_master_Inter_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_master_Inter_0_WVALID),
        .S_ACLK(master_Inter_0_ACLK_net),
        .S_ARESETN(master_Inter_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1Q9UVLP m01_couplers
       (.M_ACLK(master_Inter_0_ACLK_net),
        .M_ARESETN(master_Inter_0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_master_Inter_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_master_Inter_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_master_Inter_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_master_Inter_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_master_Inter_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_master_Inter_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_master_Inter_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_master_Inter_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_master_Inter_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_master_Inter_0_RDATA),
        .M_AXI_rready(m01_couplers_to_master_Inter_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_master_Inter_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_master_Inter_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_master_Inter_0_WDATA),
        .M_AXI_wready(m01_couplers_to_master_Inter_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_master_Inter_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_master_Inter_0_WVALID),
        .S_ACLK(master_Inter_0_ACLK_net),
        .S_ARESETN(master_Inter_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_15S4Y0W m02_couplers
       (.M_ACLK(master_Inter_0_ACLK_net),
        .M_ARESETN(master_Inter_0_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_master_Inter_0_ARADDR),
        .M_AXI_arprot(m02_couplers_to_master_Inter_0_ARPROT),
        .M_AXI_arready(m02_couplers_to_master_Inter_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_master_Inter_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_master_Inter_0_AWADDR),
        .M_AXI_awprot(m02_couplers_to_master_Inter_0_AWPROT),
        .M_AXI_awready(m02_couplers_to_master_Inter_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_master_Inter_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_master_Inter_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_master_Inter_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_master_Inter_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_master_Inter_0_RDATA),
        .M_AXI_rready(m02_couplers_to_master_Inter_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_master_Inter_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_master_Inter_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_master_Inter_0_WDATA),
        .M_AXI_wready(m02_couplers_to_master_Inter_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_master_Inter_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_master_Inter_0_WVALID),
        .S_ACLK(master_Inter_0_ACLK_net),
        .S_ARESETN(master_Inter_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_RYJBH2 s00_couplers
       (.M_ACLK(master_Inter_0_ACLK_net),
        .M_ARESETN(master_Inter_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(master_Inter_0_ACLK_net),
        .S_ARESETN(master_Inter_0_ARESETN_net),
        .S_AXI_araddr(master_Inter_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(master_Inter_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(master_Inter_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(master_Inter_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(master_Inter_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(master_Inter_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(master_Inter_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(master_Inter_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(master_Inter_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(master_Inter_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(master_Inter_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(master_Inter_0_to_s00_couplers_RDATA),
        .S_AXI_rready(master_Inter_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(master_Inter_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(master_Inter_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(master_Inter_0_to_s00_couplers_WDATA),
        .S_AXI_wready(master_Inter_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(master_Inter_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(master_Inter_0_to_s00_couplers_WVALID));
  matmul_design_xbar_2 xbar
       (.aclk(master_Inter_0_ACLK_net),
        .aresetn(master_Inter_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[5:3],xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[5:3],xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module matmul_design_outS_common_Inter_lvl0_0_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tdest,
    M00_AXIS_tid,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    M01_AXIS_tdata,
    M01_AXIS_tready,
    M01_AXIS_tvalid,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tid,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [63:0]M00_AXIS_tdata;
  output [0:0]M00_AXIS_tdest;
  output [0:0]M00_AXIS_tid;
  output [0:0]M00_AXIS_tlast;
  input [0:0]M00_AXIS_tready;
  output [0:0]M00_AXIS_tvalid;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  output [63:0]M01_AXIS_tdata;
  input M01_AXIS_tready;
  output M01_AXIS_tvalid;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [63:0]S00_AXIS_tdata;
  input [0:0]S00_AXIS_tdest;
  input [0:0]S00_AXIS_tid;
  input S00_AXIS_tlast;
  output S00_AXIS_tready;
  input S00_AXIS_tvalid;

  wire [63:0]m00_couplers_to_outS_common_Inter_lvl0_0_TDATA;
  wire [0:0]m00_couplers_to_outS_common_Inter_lvl0_0_TDEST;
  wire [0:0]m00_couplers_to_outS_common_Inter_lvl0_0_TID;
  wire [0:0]m00_couplers_to_outS_common_Inter_lvl0_0_TLAST;
  wire [0:0]m00_couplers_to_outS_common_Inter_lvl0_0_TREADY;
  wire [0:0]m00_couplers_to_outS_common_Inter_lvl0_0_TVALID;
  wire [63:0]m01_couplers_to_outS_common_Inter_lvl0_0_TDATA;
  wire m01_couplers_to_outS_common_Inter_lvl0_0_TREADY;
  wire m01_couplers_to_outS_common_Inter_lvl0_0_TVALID;
  wire outS_common_Inter_lvl0_0_ACLK_net;
  wire outS_common_Inter_lvl0_0_ARESETN_net;
  wire [63:0]outS_common_Inter_lvl0_0_to_s00_couplers_TDATA;
  wire [0:0]outS_common_Inter_lvl0_0_to_s00_couplers_TDEST;
  wire [0:0]outS_common_Inter_lvl0_0_to_s00_couplers_TID;
  wire outS_common_Inter_lvl0_0_to_s00_couplers_TLAST;
  wire outS_common_Inter_lvl0_0_to_s00_couplers_TREADY;
  wire outS_common_Inter_lvl0_0_to_s00_couplers_TVALID;
  wire [63:0]s00_couplers_to_xbar_TDATA;
  wire [0:0]s00_couplers_to_xbar_TDEST;
  wire [0:0]s00_couplers_to_xbar_TID;
  wire s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire s00_couplers_to_xbar_TVALID;
  wire [63:0]xbar_to_m00_couplers_TDATA;
  wire [0:0]xbar_to_m00_couplers_TDEST;
  wire [0:0]xbar_to_m00_couplers_TID;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire [0:0]xbar_to_m00_couplers_TREADY;
  wire [0:0]xbar_to_m00_couplers_TVALID;
  wire [127:64]xbar_to_m01_couplers_TDATA;
  wire [1:1]xbar_to_m01_couplers_TDEST;
  wire [1:1]xbar_to_m01_couplers_TID;
  wire [1:1]xbar_to_m01_couplers_TLAST;
  wire xbar_to_m01_couplers_TREADY;
  wire [1:1]xbar_to_m01_couplers_TVALID;

  assign M00_AXIS_tdata[63:0] = m00_couplers_to_outS_common_Inter_lvl0_0_TDATA;
  assign M00_AXIS_tdest[0] = m00_couplers_to_outS_common_Inter_lvl0_0_TDEST;
  assign M00_AXIS_tid[0] = m00_couplers_to_outS_common_Inter_lvl0_0_TID;
  assign M00_AXIS_tlast[0] = m00_couplers_to_outS_common_Inter_lvl0_0_TLAST;
  assign M00_AXIS_tvalid[0] = m00_couplers_to_outS_common_Inter_lvl0_0_TVALID;
  assign M01_AXIS_tdata[63:0] = m01_couplers_to_outS_common_Inter_lvl0_0_TDATA;
  assign M01_AXIS_tvalid = m01_couplers_to_outS_common_Inter_lvl0_0_TVALID;
  assign S00_AXIS_tready = outS_common_Inter_lvl0_0_to_s00_couplers_TREADY;
  assign m00_couplers_to_outS_common_Inter_lvl0_0_TREADY = M00_AXIS_tready[0];
  assign m01_couplers_to_outS_common_Inter_lvl0_0_TREADY = M01_AXIS_tready;
  assign outS_common_Inter_lvl0_0_ACLK_net = ACLK;
  assign outS_common_Inter_lvl0_0_ARESETN_net = ARESETN;
  assign outS_common_Inter_lvl0_0_to_s00_couplers_TDATA = S00_AXIS_tdata[63:0];
  assign outS_common_Inter_lvl0_0_to_s00_couplers_TDEST = S00_AXIS_tdest[0];
  assign outS_common_Inter_lvl0_0_to_s00_couplers_TID = S00_AXIS_tid[0];
  assign outS_common_Inter_lvl0_0_to_s00_couplers_TLAST = S00_AXIS_tlast;
  assign outS_common_Inter_lvl0_0_to_s00_couplers_TVALID = S00_AXIS_tvalid;
  m00_couplers_imp_14AWHED m00_couplers
       (.M_AXIS_ACLK(outS_common_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(outS_common_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(m00_couplers_to_outS_common_Inter_lvl0_0_TDATA),
        .M_AXIS_tdest(m00_couplers_to_outS_common_Inter_lvl0_0_TDEST),
        .M_AXIS_tid(m00_couplers_to_outS_common_Inter_lvl0_0_TID),
        .M_AXIS_tlast(m00_couplers_to_outS_common_Inter_lvl0_0_TLAST),
        .M_AXIS_tready(m00_couplers_to_outS_common_Inter_lvl0_0_TREADY),
        .M_AXIS_tvalid(m00_couplers_to_outS_common_Inter_lvl0_0_TVALID),
        .S_AXIS_ACLK(outS_common_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(outS_common_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m00_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m00_couplers_TID),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  m01_couplers_imp_2TVEM9 m01_couplers
       (.M_AXIS_ACLK(outS_common_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(outS_common_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(m01_couplers_to_outS_common_Inter_lvl0_0_TDATA),
        .M_AXIS_tready(m01_couplers_to_outS_common_Inter_lvl0_0_TREADY),
        .M_AXIS_tvalid(m01_couplers_to_outS_common_Inter_lvl0_0_TVALID),
        .S_AXIS_ACLK(outS_common_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(outS_common_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m01_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m01_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m01_couplers_TID),
        .S_AXIS_tlast(xbar_to_m01_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m01_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m01_couplers_TVALID));
  s00_couplers_imp_13JNQ0A s00_couplers
       (.M_AXIS_ACLK(outS_common_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(outS_common_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s00_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s00_couplers_to_xbar_TID),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(outS_common_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(outS_common_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(outS_common_Inter_lvl0_0_to_s00_couplers_TDATA),
        .S_AXIS_tdest(outS_common_Inter_lvl0_0_to_s00_couplers_TDEST),
        .S_AXIS_tid(outS_common_Inter_lvl0_0_to_s00_couplers_TID),
        .S_AXIS_tlast(outS_common_Inter_lvl0_0_to_s00_couplers_TLAST),
        .S_AXIS_tready(outS_common_Inter_lvl0_0_to_s00_couplers_TREADY),
        .S_AXIS_tvalid(outS_common_Inter_lvl0_0_to_s00_couplers_TVALID));
  matmul_design_xbar_7 xbar
       (.aclk(outS_common_Inter_lvl0_0_ACLK_net),
        .aresetn(outS_common_Inter_lvl0_0_ARESETN_net),
        .m_axis_tdata({xbar_to_m01_couplers_TDATA,xbar_to_m00_couplers_TDATA}),
        .m_axis_tdest({xbar_to_m01_couplers_TDEST,xbar_to_m00_couplers_TDEST}),
        .m_axis_tid({xbar_to_m01_couplers_TID,xbar_to_m00_couplers_TID}),
        .m_axis_tlast({xbar_to_m01_couplers_TLAST,xbar_to_m00_couplers_TLAST}),
        .m_axis_tready({xbar_to_m01_couplers_TREADY,xbar_to_m00_couplers_TREADY}),
        .m_axis_tvalid({xbar_to_m01_couplers_TVALID,xbar_to_m00_couplers_TVALID}),
        .s_axis_tdata(s00_couplers_to_xbar_TDATA),
        .s_axis_tdest(s00_couplers_to_xbar_TDEST),
        .s_axis_tid(s00_couplers_to_xbar_TID),
        .s_axis_tlast(s00_couplers_to_xbar_TLAST),
        .s_axis_tready(s00_couplers_to_xbar_TREADY),
        .s_axis_tvalid(s00_couplers_to_xbar_TVALID));
endmodule

module matmul_design_outS_ext_Inter_lvl0_0_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tid,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    S00_ARB_REQ_SUPPRESS,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tid,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tvalid,
    S01_ARB_REQ_SUPPRESS,
    S01_AXIS_ACLK,
    S01_AXIS_ARESETN,
    S01_AXIS_tdata,
    S01_AXIS_tdest,
    S01_AXIS_tid,
    S01_AXIS_tlast,
    S01_AXIS_tready,
    S01_AXIS_tvalid,
    S02_ARB_REQ_SUPPRESS,
    S02_AXIS_ACLK,
    S02_AXIS_ARESETN,
    S02_AXIS_tdata,
    S02_AXIS_tdest,
    S02_AXIS_tid,
    S02_AXIS_tlast,
    S02_AXIS_tready,
    S02_AXIS_tvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [63:0]M00_AXIS_tdata;
  output [0:0]M00_AXIS_tid;
  input M00_AXIS_tready;
  output M00_AXIS_tvalid;
  input S00_ARB_REQ_SUPPRESS;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [63:0]S00_AXIS_tdata;
  input [0:0]S00_AXIS_tdest;
  input [0:0]S00_AXIS_tid;
  input S00_AXIS_tlast;
  output S00_AXIS_tready;
  input S00_AXIS_tvalid;
  input S01_ARB_REQ_SUPPRESS;
  input S01_AXIS_ACLK;
  input S01_AXIS_ARESETN;
  input [63:0]S01_AXIS_tdata;
  input [0:0]S01_AXIS_tdest;
  input [0:0]S01_AXIS_tid;
  input S01_AXIS_tlast;
  output S01_AXIS_tready;
  input S01_AXIS_tvalid;
  input S02_ARB_REQ_SUPPRESS;
  input S02_AXIS_ACLK;
  input S02_AXIS_ARESETN;
  input [63:0]S02_AXIS_tdata;
  input [0:0]S02_AXIS_tdest;
  input [0:0]S02_AXIS_tid;
  input [0:0]S02_AXIS_tlast;
  output [0:0]S02_AXIS_tready;
  input [0:0]S02_AXIS_tvalid;

  wire [63:0]m00_couplers_to_outS_ext_Inter_lvl0_0_TDATA;
  wire [0:0]m00_couplers_to_outS_ext_Inter_lvl0_0_TID;
  wire m00_couplers_to_outS_ext_Inter_lvl0_0_TREADY;
  wire m00_couplers_to_outS_ext_Inter_lvl0_0_TVALID;
  wire outS_ext_Inter_lvl0_0_ACLK_net;
  wire outS_ext_Inter_lvl0_0_ARESETN_net;
  wire [63:0]outS_ext_Inter_lvl0_0_to_s00_couplers_TDATA;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s00_couplers_TDEST;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s00_couplers_TID;
  wire outS_ext_Inter_lvl0_0_to_s00_couplers_TLAST;
  wire outS_ext_Inter_lvl0_0_to_s00_couplers_TREADY;
  wire outS_ext_Inter_lvl0_0_to_s00_couplers_TVALID;
  wire [63:0]outS_ext_Inter_lvl0_0_to_s01_couplers_TDATA;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s01_couplers_TDEST;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s01_couplers_TID;
  wire outS_ext_Inter_lvl0_0_to_s01_couplers_TLAST;
  wire outS_ext_Inter_lvl0_0_to_s01_couplers_TREADY;
  wire outS_ext_Inter_lvl0_0_to_s01_couplers_TVALID;
  wire [63:0]outS_ext_Inter_lvl0_0_to_s02_couplers_TDATA;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s02_couplers_TDEST;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s02_couplers_TID;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s02_couplers_TLAST;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s02_couplers_TREADY;
  wire [0:0]outS_ext_Inter_lvl0_0_to_s02_couplers_TVALID;
  wire s00_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [63:0]s00_couplers_to_xbar_TDATA;
  wire [0:0]s00_couplers_to_xbar_TDEST;
  wire [0:0]s00_couplers_to_xbar_TID;
  wire s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire s00_couplers_to_xbar_TVALID;
  wire s01_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [63:0]s01_couplers_to_xbar_TDATA;
  wire [0:0]s01_couplers_to_xbar_TDEST;
  wire [0:0]s01_couplers_to_xbar_TID;
  wire s01_couplers_to_xbar_TLAST;
  wire [1:1]s01_couplers_to_xbar_TREADY;
  wire s01_couplers_to_xbar_TVALID;
  wire s02_arb_req_suppress_to_s_arb_req_suppress_concat;
  wire [63:0]s02_couplers_to_xbar_TDATA;
  wire [0:0]s02_couplers_to_xbar_TDEST;
  wire [0:0]s02_couplers_to_xbar_TID;
  wire [0:0]s02_couplers_to_xbar_TLAST;
  wire [2:2]s02_couplers_to_xbar_TREADY;
  wire [0:0]s02_couplers_to_xbar_TVALID;
  wire [2:0]s_arb_req_suppress_concat_dout;
  wire [63:0]xbar_to_m00_couplers_TDATA;
  wire [0:0]xbar_to_m00_couplers_TDEST;
  wire [0:0]xbar_to_m00_couplers_TID;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [0:0]xbar_to_m00_couplers_TVALID;

  assign M00_AXIS_tdata[63:0] = m00_couplers_to_outS_ext_Inter_lvl0_0_TDATA;
  assign M00_AXIS_tid[0] = m00_couplers_to_outS_ext_Inter_lvl0_0_TID;
  assign M00_AXIS_tvalid = m00_couplers_to_outS_ext_Inter_lvl0_0_TVALID;
  assign S00_AXIS_tready = outS_ext_Inter_lvl0_0_to_s00_couplers_TREADY;
  assign S01_AXIS_tready = outS_ext_Inter_lvl0_0_to_s01_couplers_TREADY;
  assign S02_AXIS_tready[0] = outS_ext_Inter_lvl0_0_to_s02_couplers_TREADY;
  assign m00_couplers_to_outS_ext_Inter_lvl0_0_TREADY = M00_AXIS_tready;
  assign outS_ext_Inter_lvl0_0_ACLK_net = ACLK;
  assign outS_ext_Inter_lvl0_0_ARESETN_net = ARESETN;
  assign outS_ext_Inter_lvl0_0_to_s00_couplers_TDATA = S00_AXIS_tdata[63:0];
  assign outS_ext_Inter_lvl0_0_to_s00_couplers_TDEST = S00_AXIS_tdest[0];
  assign outS_ext_Inter_lvl0_0_to_s00_couplers_TID = S00_AXIS_tid[0];
  assign outS_ext_Inter_lvl0_0_to_s00_couplers_TLAST = S00_AXIS_tlast;
  assign outS_ext_Inter_lvl0_0_to_s00_couplers_TVALID = S00_AXIS_tvalid;
  assign outS_ext_Inter_lvl0_0_to_s01_couplers_TDATA = S01_AXIS_tdata[63:0];
  assign outS_ext_Inter_lvl0_0_to_s01_couplers_TDEST = S01_AXIS_tdest[0];
  assign outS_ext_Inter_lvl0_0_to_s01_couplers_TID = S01_AXIS_tid[0];
  assign outS_ext_Inter_lvl0_0_to_s01_couplers_TLAST = S01_AXIS_tlast;
  assign outS_ext_Inter_lvl0_0_to_s01_couplers_TVALID = S01_AXIS_tvalid;
  assign outS_ext_Inter_lvl0_0_to_s02_couplers_TDATA = S02_AXIS_tdata[63:0];
  assign outS_ext_Inter_lvl0_0_to_s02_couplers_TDEST = S02_AXIS_tdest[0];
  assign outS_ext_Inter_lvl0_0_to_s02_couplers_TID = S02_AXIS_tid[0];
  assign outS_ext_Inter_lvl0_0_to_s02_couplers_TLAST = S02_AXIS_tlast[0];
  assign outS_ext_Inter_lvl0_0_to_s02_couplers_TVALID = S02_AXIS_tvalid[0];
  assign s00_arb_req_suppress_to_s_arb_req_suppress_concat = S00_ARB_REQ_SUPPRESS;
  assign s01_arb_req_suppress_to_s_arb_req_suppress_concat = S01_ARB_REQ_SUPPRESS;
  assign s02_arb_req_suppress_to_s_arb_req_suppress_concat = S02_ARB_REQ_SUPPRESS;
  m00_couplers_imp_66FOQX m00_couplers
       (.M_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(m00_couplers_to_outS_ext_Inter_lvl0_0_TDATA),
        .M_AXIS_tid(m00_couplers_to_outS_ext_Inter_lvl0_0_TID),
        .M_AXIS_tready(m00_couplers_to_outS_ext_Inter_lvl0_0_TREADY),
        .M_AXIS_tvalid(m00_couplers_to_outS_ext_Inter_lvl0_0_TVALID),
        .S_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m00_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m00_couplers_TID),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  s00_couplers_imp_2N0GAE s00_couplers
       (.M_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s00_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s00_couplers_to_xbar_TID),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(outS_ext_Inter_lvl0_0_to_s00_couplers_TDATA),
        .S_AXIS_tdest(outS_ext_Inter_lvl0_0_to_s00_couplers_TDEST),
        .S_AXIS_tid(outS_ext_Inter_lvl0_0_to_s00_couplers_TID),
        .S_AXIS_tlast(outS_ext_Inter_lvl0_0_to_s00_couplers_TLAST),
        .S_AXIS_tready(outS_ext_Inter_lvl0_0_to_s00_couplers_TREADY),
        .S_AXIS_tvalid(outS_ext_Inter_lvl0_0_to_s00_couplers_TVALID));
  s01_couplers_imp_14RR7VM s01_couplers
       (.M_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(s01_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s01_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s01_couplers_to_xbar_TID),
        .M_AXIS_tlast(s01_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s01_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s01_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(outS_ext_Inter_lvl0_0_to_s01_couplers_TDATA),
        .S_AXIS_tdest(outS_ext_Inter_lvl0_0_to_s01_couplers_TDEST),
        .S_AXIS_tid(outS_ext_Inter_lvl0_0_to_s01_couplers_TID),
        .S_AXIS_tlast(outS_ext_Inter_lvl0_0_to_s01_couplers_TLAST),
        .S_AXIS_tready(outS_ext_Inter_lvl0_0_to_s01_couplers_TREADY),
        .S_AXIS_tvalid(outS_ext_Inter_lvl0_0_to_s01_couplers_TVALID));
  s02_couplers_imp_1RA9ZMN s02_couplers
       (.M_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .M_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .M_AXIS_tdata(s02_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s02_couplers_to_xbar_TDEST),
        .M_AXIS_tid(s02_couplers_to_xbar_TID),
        .M_AXIS_tlast(s02_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s02_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s02_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(outS_ext_Inter_lvl0_0_ACLK_net),
        .S_AXIS_ARESETN(outS_ext_Inter_lvl0_0_ARESETN_net),
        .S_AXIS_tdata(outS_ext_Inter_lvl0_0_to_s02_couplers_TDATA),
        .S_AXIS_tdest(outS_ext_Inter_lvl0_0_to_s02_couplers_TDEST),
        .S_AXIS_tid(outS_ext_Inter_lvl0_0_to_s02_couplers_TID),
        .S_AXIS_tlast(outS_ext_Inter_lvl0_0_to_s02_couplers_TLAST),
        .S_AXIS_tready(outS_ext_Inter_lvl0_0_to_s02_couplers_TREADY),
        .S_AXIS_tvalid(outS_ext_Inter_lvl0_0_to_s02_couplers_TVALID));
  matmul_design_s_arb_req_suppress_concat_7 s_arb_req_suppress_concat
       (.In0(s00_arb_req_suppress_to_s_arb_req_suppress_concat),
        .In1(s01_arb_req_suppress_to_s_arb_req_suppress_concat),
        .In2(s02_arb_req_suppress_to_s_arb_req_suppress_concat),
        .dout(s_arb_req_suppress_concat_dout));
  matmul_design_xbar_6 xbar
       (.aclk(outS_ext_Inter_lvl0_0_ACLK_net),
        .aresetn(outS_ext_Inter_lvl0_0_ARESETN_net),
        .m_axis_tdata(xbar_to_m00_couplers_TDATA),
        .m_axis_tdest(xbar_to_m00_couplers_TDEST),
        .m_axis_tid(xbar_to_m00_couplers_TID),
        .m_axis_tlast(xbar_to_m00_couplers_TLAST),
        .m_axis_tready(xbar_to_m00_couplers_TREADY),
        .m_axis_tvalid(xbar_to_m00_couplers_TVALID),
        .s_axis_tdata({s02_couplers_to_xbar_TDATA,s01_couplers_to_xbar_TDATA,s00_couplers_to_xbar_TDATA}),
        .s_axis_tdest({s02_couplers_to_xbar_TDEST,s01_couplers_to_xbar_TDEST,s00_couplers_to_xbar_TDEST}),
        .s_axis_tid({s02_couplers_to_xbar_TID,s01_couplers_to_xbar_TID,s00_couplers_to_xbar_TID}),
        .s_axis_tlast({s02_couplers_to_xbar_TLAST,s01_couplers_to_xbar_TLAST,s00_couplers_to_xbar_TLAST}),
        .s_axis_tready({s02_couplers_to_xbar_TREADY,s01_couplers_to_xbar_TREADY,s00_couplers_to_xbar_TREADY}),
        .s_axis_tvalid({s02_couplers_to_xbar_TVALID,s01_couplers_to_xbar_TVALID,s00_couplers_to_xbar_TVALID}),
        .s_req_suppress(s_arb_req_suppress_concat_dout));
endmodule

module matmul_design_slave_Inter_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_aruser,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awuser,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wuser,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arregion,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S04_ACLK,
    S04_ARESETN,
    S04_AXI_araddr,
    S04_AXI_arburst,
    S04_AXI_arcache,
    S04_AXI_arid,
    S04_AXI_arlen,
    S04_AXI_arlock,
    S04_AXI_arprot,
    S04_AXI_arqos,
    S04_AXI_arready,
    S04_AXI_arregion,
    S04_AXI_arsize,
    S04_AXI_arvalid,
    S04_AXI_awaddr,
    S04_AXI_awburst,
    S04_AXI_awcache,
    S04_AXI_awid,
    S04_AXI_awlen,
    S04_AXI_awlock,
    S04_AXI_awprot,
    S04_AXI_awqos,
    S04_AXI_awready,
    S04_AXI_awregion,
    S04_AXI_awsize,
    S04_AXI_awvalid,
    S04_AXI_bid,
    S04_AXI_bready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_rdata,
    S04_AXI_rid,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rresp,
    S04_AXI_rvalid,
    S04_AXI_wdata,
    S04_AXI_wlast,
    S04_AXI_wready,
    S04_AXI_wstrb,
    S04_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [33:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [6:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [31:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [33:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [6:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [31:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [6:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [6:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output [63:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [33:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [6:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input M01_AXI_arready;
  output [3:0]M01_AXI_arregion;
  output [2:0]M01_AXI_arsize;
  output [31:0]M01_AXI_aruser;
  output M01_AXI_arvalid;
  output [33:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [6:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input M01_AXI_awready;
  output [3:0]M01_AXI_awregion;
  output [2:0]M01_AXI_awsize;
  output [31:0]M01_AXI_awuser;
  output M01_AXI_awvalid;
  input [6:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [511:0]M01_AXI_rdata;
  input [6:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [511:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [63:0]M01_AXI_wstrb;
  output [63:0]M01_AXI_wuser;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [31:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [31:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [3:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [3:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input [63:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [63:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [0:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  output [31:0]S02_AXI_rdata;
  output [0:0]S02_AXI_rid;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [63:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [0:0]S03_AXI_arid;
  input [7:0]S03_AXI_arlen;
  input [1:0]S03_AXI_arlock;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arqos;
  output S03_AXI_arready;
  input [3:0]S03_AXI_arregion;
  input [2:0]S03_AXI_arsize;
  input S03_AXI_arvalid;
  output [31:0]S03_AXI_rdata;
  output [0:0]S03_AXI_rid;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input S04_ACLK;
  input S04_ARESETN;
  input [63:0]S04_AXI_araddr;
  input [1:0]S04_AXI_arburst;
  input [3:0]S04_AXI_arcache;
  input [0:0]S04_AXI_arid;
  input [7:0]S04_AXI_arlen;
  input [1:0]S04_AXI_arlock;
  input [2:0]S04_AXI_arprot;
  input [3:0]S04_AXI_arqos;
  output S04_AXI_arready;
  input [3:0]S04_AXI_arregion;
  input [2:0]S04_AXI_arsize;
  input S04_AXI_arvalid;
  input [63:0]S04_AXI_awaddr;
  input [1:0]S04_AXI_awburst;
  input [3:0]S04_AXI_awcache;
  input [0:0]S04_AXI_awid;
  input [7:0]S04_AXI_awlen;
  input [1:0]S04_AXI_awlock;
  input [2:0]S04_AXI_awprot;
  input [3:0]S04_AXI_awqos;
  output S04_AXI_awready;
  input [3:0]S04_AXI_awregion;
  input [2:0]S04_AXI_awsize;
  input S04_AXI_awvalid;
  output [0:0]S04_AXI_bid;
  input S04_AXI_bready;
  output [1:0]S04_AXI_bresp;
  output S04_AXI_bvalid;
  output [127:0]S04_AXI_rdata;
  output [0:0]S04_AXI_rid;
  output S04_AXI_rlast;
  input S04_AXI_rready;
  output [1:0]S04_AXI_rresp;
  output S04_AXI_rvalid;
  input [127:0]S04_AXI_wdata;
  input S04_AXI_wlast;
  output S04_AXI_wready;
  input [15:0]S04_AXI_wstrb;
  input S04_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire S03_ACLK_1;
  wire S03_ARESETN_1;
  wire S04_ACLK_1;
  wire S04_ARESETN_1;
  wire [33:0]m00_couplers_to_slave_Inter_0_ARADDR;
  wire [1:0]m00_couplers_to_slave_Inter_0_ARBURST;
  wire [3:0]m00_couplers_to_slave_Inter_0_ARCACHE;
  wire [6:0]m00_couplers_to_slave_Inter_0_ARID;
  wire [7:0]m00_couplers_to_slave_Inter_0_ARLEN;
  wire [0:0]m00_couplers_to_slave_Inter_0_ARLOCK;
  wire [2:0]m00_couplers_to_slave_Inter_0_ARPROT;
  wire [3:0]m00_couplers_to_slave_Inter_0_ARQOS;
  wire m00_couplers_to_slave_Inter_0_ARREADY;
  wire [3:0]m00_couplers_to_slave_Inter_0_ARREGION;
  wire [2:0]m00_couplers_to_slave_Inter_0_ARSIZE;
  wire [31:0]m00_couplers_to_slave_Inter_0_ARUSER;
  wire m00_couplers_to_slave_Inter_0_ARVALID;
  wire [33:0]m00_couplers_to_slave_Inter_0_AWADDR;
  wire [1:0]m00_couplers_to_slave_Inter_0_AWBURST;
  wire [3:0]m00_couplers_to_slave_Inter_0_AWCACHE;
  wire [6:0]m00_couplers_to_slave_Inter_0_AWID;
  wire [7:0]m00_couplers_to_slave_Inter_0_AWLEN;
  wire [0:0]m00_couplers_to_slave_Inter_0_AWLOCK;
  wire [2:0]m00_couplers_to_slave_Inter_0_AWPROT;
  wire [3:0]m00_couplers_to_slave_Inter_0_AWQOS;
  wire m00_couplers_to_slave_Inter_0_AWREADY;
  wire [3:0]m00_couplers_to_slave_Inter_0_AWREGION;
  wire [2:0]m00_couplers_to_slave_Inter_0_AWSIZE;
  wire [31:0]m00_couplers_to_slave_Inter_0_AWUSER;
  wire m00_couplers_to_slave_Inter_0_AWVALID;
  wire [6:0]m00_couplers_to_slave_Inter_0_BID;
  wire m00_couplers_to_slave_Inter_0_BREADY;
  wire [1:0]m00_couplers_to_slave_Inter_0_BRESP;
  wire m00_couplers_to_slave_Inter_0_BVALID;
  wire [511:0]m00_couplers_to_slave_Inter_0_RDATA;
  wire [6:0]m00_couplers_to_slave_Inter_0_RID;
  wire m00_couplers_to_slave_Inter_0_RLAST;
  wire m00_couplers_to_slave_Inter_0_RREADY;
  wire [1:0]m00_couplers_to_slave_Inter_0_RRESP;
  wire m00_couplers_to_slave_Inter_0_RVALID;
  wire [511:0]m00_couplers_to_slave_Inter_0_WDATA;
  wire m00_couplers_to_slave_Inter_0_WLAST;
  wire m00_couplers_to_slave_Inter_0_WREADY;
  wire [63:0]m00_couplers_to_slave_Inter_0_WSTRB;
  wire [63:0]m00_couplers_to_slave_Inter_0_WUSER;
  wire m00_couplers_to_slave_Inter_0_WVALID;
  wire [33:0]m01_couplers_to_slave_Inter_0_ARADDR;
  wire [1:0]m01_couplers_to_slave_Inter_0_ARBURST;
  wire [3:0]m01_couplers_to_slave_Inter_0_ARCACHE;
  wire [6:0]m01_couplers_to_slave_Inter_0_ARID;
  wire [7:0]m01_couplers_to_slave_Inter_0_ARLEN;
  wire [0:0]m01_couplers_to_slave_Inter_0_ARLOCK;
  wire [2:0]m01_couplers_to_slave_Inter_0_ARPROT;
  wire [3:0]m01_couplers_to_slave_Inter_0_ARQOS;
  wire m01_couplers_to_slave_Inter_0_ARREADY;
  wire [3:0]m01_couplers_to_slave_Inter_0_ARREGION;
  wire [2:0]m01_couplers_to_slave_Inter_0_ARSIZE;
  wire [31:0]m01_couplers_to_slave_Inter_0_ARUSER;
  wire m01_couplers_to_slave_Inter_0_ARVALID;
  wire [33:0]m01_couplers_to_slave_Inter_0_AWADDR;
  wire [1:0]m01_couplers_to_slave_Inter_0_AWBURST;
  wire [3:0]m01_couplers_to_slave_Inter_0_AWCACHE;
  wire [6:0]m01_couplers_to_slave_Inter_0_AWID;
  wire [7:0]m01_couplers_to_slave_Inter_0_AWLEN;
  wire [0:0]m01_couplers_to_slave_Inter_0_AWLOCK;
  wire [2:0]m01_couplers_to_slave_Inter_0_AWPROT;
  wire [3:0]m01_couplers_to_slave_Inter_0_AWQOS;
  wire m01_couplers_to_slave_Inter_0_AWREADY;
  wire [3:0]m01_couplers_to_slave_Inter_0_AWREGION;
  wire [2:0]m01_couplers_to_slave_Inter_0_AWSIZE;
  wire [31:0]m01_couplers_to_slave_Inter_0_AWUSER;
  wire m01_couplers_to_slave_Inter_0_AWVALID;
  wire [6:0]m01_couplers_to_slave_Inter_0_BID;
  wire m01_couplers_to_slave_Inter_0_BREADY;
  wire [1:0]m01_couplers_to_slave_Inter_0_BRESP;
  wire m01_couplers_to_slave_Inter_0_BVALID;
  wire [511:0]m01_couplers_to_slave_Inter_0_RDATA;
  wire [6:0]m01_couplers_to_slave_Inter_0_RID;
  wire m01_couplers_to_slave_Inter_0_RLAST;
  wire m01_couplers_to_slave_Inter_0_RREADY;
  wire [1:0]m01_couplers_to_slave_Inter_0_RRESP;
  wire m01_couplers_to_slave_Inter_0_RVALID;
  wire [511:0]m01_couplers_to_slave_Inter_0_WDATA;
  wire m01_couplers_to_slave_Inter_0_WLAST;
  wire m01_couplers_to_slave_Inter_0_WREADY;
  wire [63:0]m01_couplers_to_slave_Inter_0_WSTRB;
  wire [63:0]m01_couplers_to_slave_Inter_0_WUSER;
  wire m01_couplers_to_slave_Inter_0_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [3:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [31:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [3:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [31:0]s00_couplers_to_xbar_AWUSER;
  wire s00_couplers_to_xbar_AWVALID;
  wire [6:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [6:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire [63:0]s00_couplers_to_xbar_WUSER;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [1535:1024]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [63:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire s03_couplers_to_xbar_ARVALID;
  wire [2047:1536]s03_couplers_to_xbar_RDATA;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [63:0]s04_couplers_to_xbar_ARADDR;
  wire [1:0]s04_couplers_to_xbar_ARBURST;
  wire [3:0]s04_couplers_to_xbar_ARCACHE;
  wire [7:0]s04_couplers_to_xbar_ARLEN;
  wire [0:0]s04_couplers_to_xbar_ARLOCK;
  wire [2:0]s04_couplers_to_xbar_ARPROT;
  wire [3:0]s04_couplers_to_xbar_ARQOS;
  wire [4:4]s04_couplers_to_xbar_ARREADY;
  wire [2:0]s04_couplers_to_xbar_ARSIZE;
  wire s04_couplers_to_xbar_ARVALID;
  wire [63:0]s04_couplers_to_xbar_AWADDR;
  wire [1:0]s04_couplers_to_xbar_AWBURST;
  wire [3:0]s04_couplers_to_xbar_AWCACHE;
  wire [7:0]s04_couplers_to_xbar_AWLEN;
  wire [0:0]s04_couplers_to_xbar_AWLOCK;
  wire [2:0]s04_couplers_to_xbar_AWPROT;
  wire [3:0]s04_couplers_to_xbar_AWQOS;
  wire [4:4]s04_couplers_to_xbar_AWREADY;
  wire [2:0]s04_couplers_to_xbar_AWSIZE;
  wire s04_couplers_to_xbar_AWVALID;
  wire s04_couplers_to_xbar_BREADY;
  wire [9:8]s04_couplers_to_xbar_BRESP;
  wire [4:4]s04_couplers_to_xbar_BVALID;
  wire [2559:2048]s04_couplers_to_xbar_RDATA;
  wire [4:4]s04_couplers_to_xbar_RLAST;
  wire s04_couplers_to_xbar_RREADY;
  wire [9:8]s04_couplers_to_xbar_RRESP;
  wire [4:4]s04_couplers_to_xbar_RVALID;
  wire [511:0]s04_couplers_to_xbar_WDATA;
  wire s04_couplers_to_xbar_WLAST;
  wire [4:4]s04_couplers_to_xbar_WREADY;
  wire [63:0]s04_couplers_to_xbar_WSTRB;
  wire s04_couplers_to_xbar_WVALID;
  wire slave_Inter_0_ACLK_net;
  wire slave_Inter_0_ARESETN_net;
  wire [63:0]slave_Inter_0_to_s00_couplers_ARADDR;
  wire [1:0]slave_Inter_0_to_s00_couplers_ARBURST;
  wire [3:0]slave_Inter_0_to_s00_couplers_ARCACHE;
  wire [3:0]slave_Inter_0_to_s00_couplers_ARID;
  wire [7:0]slave_Inter_0_to_s00_couplers_ARLEN;
  wire [0:0]slave_Inter_0_to_s00_couplers_ARLOCK;
  wire [2:0]slave_Inter_0_to_s00_couplers_ARPROT;
  wire slave_Inter_0_to_s00_couplers_ARREADY;
  wire [2:0]slave_Inter_0_to_s00_couplers_ARSIZE;
  wire [31:0]slave_Inter_0_to_s00_couplers_ARUSER;
  wire slave_Inter_0_to_s00_couplers_ARVALID;
  wire [63:0]slave_Inter_0_to_s00_couplers_AWADDR;
  wire [1:0]slave_Inter_0_to_s00_couplers_AWBURST;
  wire [3:0]slave_Inter_0_to_s00_couplers_AWCACHE;
  wire [3:0]slave_Inter_0_to_s00_couplers_AWID;
  wire [7:0]slave_Inter_0_to_s00_couplers_AWLEN;
  wire [0:0]slave_Inter_0_to_s00_couplers_AWLOCK;
  wire [2:0]slave_Inter_0_to_s00_couplers_AWPROT;
  wire slave_Inter_0_to_s00_couplers_AWREADY;
  wire [2:0]slave_Inter_0_to_s00_couplers_AWSIZE;
  wire [31:0]slave_Inter_0_to_s00_couplers_AWUSER;
  wire slave_Inter_0_to_s00_couplers_AWVALID;
  wire [3:0]slave_Inter_0_to_s00_couplers_BID;
  wire slave_Inter_0_to_s00_couplers_BREADY;
  wire [1:0]slave_Inter_0_to_s00_couplers_BRESP;
  wire slave_Inter_0_to_s00_couplers_BVALID;
  wire [511:0]slave_Inter_0_to_s00_couplers_RDATA;
  wire [3:0]slave_Inter_0_to_s00_couplers_RID;
  wire slave_Inter_0_to_s00_couplers_RLAST;
  wire slave_Inter_0_to_s00_couplers_RREADY;
  wire [1:0]slave_Inter_0_to_s00_couplers_RRESP;
  wire slave_Inter_0_to_s00_couplers_RVALID;
  wire [511:0]slave_Inter_0_to_s00_couplers_WDATA;
  wire slave_Inter_0_to_s00_couplers_WLAST;
  wire slave_Inter_0_to_s00_couplers_WREADY;
  wire [63:0]slave_Inter_0_to_s00_couplers_WSTRB;
  wire [63:0]slave_Inter_0_to_s00_couplers_WUSER;
  wire slave_Inter_0_to_s00_couplers_WVALID;
  wire [63:0]slave_Inter_0_to_s01_couplers_ARADDR;
  wire [1:0]slave_Inter_0_to_s01_couplers_ARBURST;
  wire [3:0]slave_Inter_0_to_s01_couplers_ARCACHE;
  wire [0:0]slave_Inter_0_to_s01_couplers_ARID;
  wire [7:0]slave_Inter_0_to_s01_couplers_ARLEN;
  wire [1:0]slave_Inter_0_to_s01_couplers_ARLOCK;
  wire [2:0]slave_Inter_0_to_s01_couplers_ARPROT;
  wire [3:0]slave_Inter_0_to_s01_couplers_ARQOS;
  wire slave_Inter_0_to_s01_couplers_ARREADY;
  wire [3:0]slave_Inter_0_to_s01_couplers_ARREGION;
  wire [2:0]slave_Inter_0_to_s01_couplers_ARSIZE;
  wire slave_Inter_0_to_s01_couplers_ARVALID;
  wire [31:0]slave_Inter_0_to_s01_couplers_RDATA;
  wire [0:0]slave_Inter_0_to_s01_couplers_RID;
  wire slave_Inter_0_to_s01_couplers_RLAST;
  wire slave_Inter_0_to_s01_couplers_RREADY;
  wire [1:0]slave_Inter_0_to_s01_couplers_RRESP;
  wire slave_Inter_0_to_s01_couplers_RVALID;
  wire [63:0]slave_Inter_0_to_s02_couplers_ARADDR;
  wire [1:0]slave_Inter_0_to_s02_couplers_ARBURST;
  wire [3:0]slave_Inter_0_to_s02_couplers_ARCACHE;
  wire [0:0]slave_Inter_0_to_s02_couplers_ARID;
  wire [7:0]slave_Inter_0_to_s02_couplers_ARLEN;
  wire [1:0]slave_Inter_0_to_s02_couplers_ARLOCK;
  wire [2:0]slave_Inter_0_to_s02_couplers_ARPROT;
  wire [3:0]slave_Inter_0_to_s02_couplers_ARQOS;
  wire slave_Inter_0_to_s02_couplers_ARREADY;
  wire [3:0]slave_Inter_0_to_s02_couplers_ARREGION;
  wire [2:0]slave_Inter_0_to_s02_couplers_ARSIZE;
  wire slave_Inter_0_to_s02_couplers_ARVALID;
  wire [31:0]slave_Inter_0_to_s02_couplers_RDATA;
  wire [0:0]slave_Inter_0_to_s02_couplers_RID;
  wire slave_Inter_0_to_s02_couplers_RLAST;
  wire slave_Inter_0_to_s02_couplers_RREADY;
  wire [1:0]slave_Inter_0_to_s02_couplers_RRESP;
  wire slave_Inter_0_to_s02_couplers_RVALID;
  wire [63:0]slave_Inter_0_to_s03_couplers_ARADDR;
  wire [1:0]slave_Inter_0_to_s03_couplers_ARBURST;
  wire [3:0]slave_Inter_0_to_s03_couplers_ARCACHE;
  wire [0:0]slave_Inter_0_to_s03_couplers_ARID;
  wire [7:0]slave_Inter_0_to_s03_couplers_ARLEN;
  wire [1:0]slave_Inter_0_to_s03_couplers_ARLOCK;
  wire [2:0]slave_Inter_0_to_s03_couplers_ARPROT;
  wire [3:0]slave_Inter_0_to_s03_couplers_ARQOS;
  wire slave_Inter_0_to_s03_couplers_ARREADY;
  wire [3:0]slave_Inter_0_to_s03_couplers_ARREGION;
  wire [2:0]slave_Inter_0_to_s03_couplers_ARSIZE;
  wire slave_Inter_0_to_s03_couplers_ARVALID;
  wire [31:0]slave_Inter_0_to_s03_couplers_RDATA;
  wire [0:0]slave_Inter_0_to_s03_couplers_RID;
  wire slave_Inter_0_to_s03_couplers_RLAST;
  wire slave_Inter_0_to_s03_couplers_RREADY;
  wire [1:0]slave_Inter_0_to_s03_couplers_RRESP;
  wire slave_Inter_0_to_s03_couplers_RVALID;
  wire [63:0]slave_Inter_0_to_s04_couplers_ARADDR;
  wire [1:0]slave_Inter_0_to_s04_couplers_ARBURST;
  wire [3:0]slave_Inter_0_to_s04_couplers_ARCACHE;
  wire [0:0]slave_Inter_0_to_s04_couplers_ARID;
  wire [7:0]slave_Inter_0_to_s04_couplers_ARLEN;
  wire [1:0]slave_Inter_0_to_s04_couplers_ARLOCK;
  wire [2:0]slave_Inter_0_to_s04_couplers_ARPROT;
  wire [3:0]slave_Inter_0_to_s04_couplers_ARQOS;
  wire slave_Inter_0_to_s04_couplers_ARREADY;
  wire [3:0]slave_Inter_0_to_s04_couplers_ARREGION;
  wire [2:0]slave_Inter_0_to_s04_couplers_ARSIZE;
  wire slave_Inter_0_to_s04_couplers_ARVALID;
  wire [63:0]slave_Inter_0_to_s04_couplers_AWADDR;
  wire [1:0]slave_Inter_0_to_s04_couplers_AWBURST;
  wire [3:0]slave_Inter_0_to_s04_couplers_AWCACHE;
  wire [0:0]slave_Inter_0_to_s04_couplers_AWID;
  wire [7:0]slave_Inter_0_to_s04_couplers_AWLEN;
  wire [1:0]slave_Inter_0_to_s04_couplers_AWLOCK;
  wire [2:0]slave_Inter_0_to_s04_couplers_AWPROT;
  wire [3:0]slave_Inter_0_to_s04_couplers_AWQOS;
  wire slave_Inter_0_to_s04_couplers_AWREADY;
  wire [3:0]slave_Inter_0_to_s04_couplers_AWREGION;
  wire [2:0]slave_Inter_0_to_s04_couplers_AWSIZE;
  wire slave_Inter_0_to_s04_couplers_AWVALID;
  wire [0:0]slave_Inter_0_to_s04_couplers_BID;
  wire slave_Inter_0_to_s04_couplers_BREADY;
  wire [1:0]slave_Inter_0_to_s04_couplers_BRESP;
  wire slave_Inter_0_to_s04_couplers_BVALID;
  wire [127:0]slave_Inter_0_to_s04_couplers_RDATA;
  wire [0:0]slave_Inter_0_to_s04_couplers_RID;
  wire slave_Inter_0_to_s04_couplers_RLAST;
  wire slave_Inter_0_to_s04_couplers_RREADY;
  wire [1:0]slave_Inter_0_to_s04_couplers_RRESP;
  wire slave_Inter_0_to_s04_couplers_RVALID;
  wire [127:0]slave_Inter_0_to_s04_couplers_WDATA;
  wire slave_Inter_0_to_s04_couplers_WLAST;
  wire slave_Inter_0_to_s04_couplers_WREADY;
  wire [15:0]slave_Inter_0_to_s04_couplers_WSTRB;
  wire slave_Inter_0_to_s04_couplers_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [6:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [31:0]xbar_to_m00_couplers_ARUSER;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [6:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [31:0]xbar_to_m00_couplers_AWUSER;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [6:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [6:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [63:0]xbar_to_m00_couplers_WUSER;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [127:64]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [13:7]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [63:32]xbar_to_m01_couplers_ARUSER;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [127:64]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [13:7]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [63:32]xbar_to_m01_couplers_AWUSER;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [6:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [511:0]xbar_to_m01_couplers_RDATA;
  wire [6:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [1023:512]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [127:64]xbar_to_m01_couplers_WSTRB;
  wire [127:64]xbar_to_m01_couplers_WUSER;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [4:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[33:0] = m00_couplers_to_slave_Inter_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_slave_Inter_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_slave_Inter_0_ARCACHE;
  assign M00_AXI_arid[6:0] = m00_couplers_to_slave_Inter_0_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_slave_Inter_0_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_slave_Inter_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_slave_Inter_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_slave_Inter_0_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_slave_Inter_0_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_slave_Inter_0_ARSIZE;
  assign M00_AXI_aruser[31:0] = m00_couplers_to_slave_Inter_0_ARUSER;
  assign M00_AXI_arvalid = m00_couplers_to_slave_Inter_0_ARVALID;
  assign M00_AXI_awaddr[33:0] = m00_couplers_to_slave_Inter_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_slave_Inter_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_slave_Inter_0_AWCACHE;
  assign M00_AXI_awid[6:0] = m00_couplers_to_slave_Inter_0_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_slave_Inter_0_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_slave_Inter_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_slave_Inter_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_slave_Inter_0_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_slave_Inter_0_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_slave_Inter_0_AWSIZE;
  assign M00_AXI_awuser[31:0] = m00_couplers_to_slave_Inter_0_AWUSER;
  assign M00_AXI_awvalid = m00_couplers_to_slave_Inter_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_slave_Inter_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_slave_Inter_0_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_slave_Inter_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_slave_Inter_0_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_slave_Inter_0_WSTRB;
  assign M00_AXI_wuser[63:0] = m00_couplers_to_slave_Inter_0_WUSER;
  assign M00_AXI_wvalid = m00_couplers_to_slave_Inter_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[33:0] = m01_couplers_to_slave_Inter_0_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_slave_Inter_0_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_slave_Inter_0_ARCACHE;
  assign M01_AXI_arid[6:0] = m01_couplers_to_slave_Inter_0_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_slave_Inter_0_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_slave_Inter_0_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_slave_Inter_0_ARPROT;
  assign M01_AXI_arqos[3:0] = m01_couplers_to_slave_Inter_0_ARQOS;
  assign M01_AXI_arregion[3:0] = m01_couplers_to_slave_Inter_0_ARREGION;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_slave_Inter_0_ARSIZE;
  assign M01_AXI_aruser[31:0] = m01_couplers_to_slave_Inter_0_ARUSER;
  assign M01_AXI_arvalid = m01_couplers_to_slave_Inter_0_ARVALID;
  assign M01_AXI_awaddr[33:0] = m01_couplers_to_slave_Inter_0_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_slave_Inter_0_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_slave_Inter_0_AWCACHE;
  assign M01_AXI_awid[6:0] = m01_couplers_to_slave_Inter_0_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_slave_Inter_0_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_slave_Inter_0_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_slave_Inter_0_AWPROT;
  assign M01_AXI_awqos[3:0] = m01_couplers_to_slave_Inter_0_AWQOS;
  assign M01_AXI_awregion[3:0] = m01_couplers_to_slave_Inter_0_AWREGION;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_slave_Inter_0_AWSIZE;
  assign M01_AXI_awuser[31:0] = m01_couplers_to_slave_Inter_0_AWUSER;
  assign M01_AXI_awvalid = m01_couplers_to_slave_Inter_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_slave_Inter_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_slave_Inter_0_RREADY;
  assign M01_AXI_wdata[511:0] = m01_couplers_to_slave_Inter_0_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_slave_Inter_0_WLAST;
  assign M01_AXI_wstrb[63:0] = m01_couplers_to_slave_Inter_0_WSTRB;
  assign M01_AXI_wuser[63:0] = m01_couplers_to_slave_Inter_0_WUSER;
  assign M01_AXI_wvalid = m01_couplers_to_slave_Inter_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = slave_Inter_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = slave_Inter_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[3:0] = slave_Inter_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = slave_Inter_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = slave_Inter_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = slave_Inter_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[3:0] = slave_Inter_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = slave_Inter_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = slave_Inter_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = slave_Inter_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = slave_Inter_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = slave_Inter_0_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = slave_Inter_0_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = slave_Inter_0_to_s01_couplers_RID;
  assign S01_AXI_rlast = slave_Inter_0_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = slave_Inter_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = slave_Inter_0_to_s01_couplers_RVALID;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = slave_Inter_0_to_s02_couplers_ARREADY;
  assign S02_AXI_rdata[31:0] = slave_Inter_0_to_s02_couplers_RDATA;
  assign S02_AXI_rid[0] = slave_Inter_0_to_s02_couplers_RID;
  assign S02_AXI_rlast = slave_Inter_0_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = slave_Inter_0_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = slave_Inter_0_to_s02_couplers_RVALID;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN;
  assign S03_AXI_arready = slave_Inter_0_to_s03_couplers_ARREADY;
  assign S03_AXI_rdata[31:0] = slave_Inter_0_to_s03_couplers_RDATA;
  assign S03_AXI_rid[0] = slave_Inter_0_to_s03_couplers_RID;
  assign S03_AXI_rlast = slave_Inter_0_to_s03_couplers_RLAST;
  assign S03_AXI_rresp[1:0] = slave_Inter_0_to_s03_couplers_RRESP;
  assign S03_AXI_rvalid = slave_Inter_0_to_s03_couplers_RVALID;
  assign S04_ACLK_1 = S04_ACLK;
  assign S04_ARESETN_1 = S04_ARESETN;
  assign S04_AXI_arready = slave_Inter_0_to_s04_couplers_ARREADY;
  assign S04_AXI_awready = slave_Inter_0_to_s04_couplers_AWREADY;
  assign S04_AXI_bid[0] = slave_Inter_0_to_s04_couplers_BID;
  assign S04_AXI_bresp[1:0] = slave_Inter_0_to_s04_couplers_BRESP;
  assign S04_AXI_bvalid = slave_Inter_0_to_s04_couplers_BVALID;
  assign S04_AXI_rdata[127:0] = slave_Inter_0_to_s04_couplers_RDATA;
  assign S04_AXI_rid[0] = slave_Inter_0_to_s04_couplers_RID;
  assign S04_AXI_rlast = slave_Inter_0_to_s04_couplers_RLAST;
  assign S04_AXI_rresp[1:0] = slave_Inter_0_to_s04_couplers_RRESP;
  assign S04_AXI_rvalid = slave_Inter_0_to_s04_couplers_RVALID;
  assign S04_AXI_wready = slave_Inter_0_to_s04_couplers_WREADY;
  assign m00_couplers_to_slave_Inter_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_slave_Inter_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_slave_Inter_0_BID = M00_AXI_bid[6:0];
  assign m00_couplers_to_slave_Inter_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_slave_Inter_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_slave_Inter_0_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_slave_Inter_0_RID = M00_AXI_rid[6:0];
  assign m00_couplers_to_slave_Inter_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_slave_Inter_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_slave_Inter_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_slave_Inter_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_slave_Inter_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_slave_Inter_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_slave_Inter_0_BID = M01_AXI_bid[6:0];
  assign m01_couplers_to_slave_Inter_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_slave_Inter_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_slave_Inter_0_RDATA = M01_AXI_rdata[511:0];
  assign m01_couplers_to_slave_Inter_0_RID = M01_AXI_rid[6:0];
  assign m01_couplers_to_slave_Inter_0_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_slave_Inter_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_slave_Inter_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_slave_Inter_0_WREADY = M01_AXI_wready;
  assign slave_Inter_0_ACLK_net = ACLK;
  assign slave_Inter_0_ARESETN_net = ARESETN;
  assign slave_Inter_0_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign slave_Inter_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign slave_Inter_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign slave_Inter_0_to_s00_couplers_ARID = S00_AXI_arid[3:0];
  assign slave_Inter_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign slave_Inter_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign slave_Inter_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign slave_Inter_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign slave_Inter_0_to_s00_couplers_ARUSER = S00_AXI_aruser[31:0];
  assign slave_Inter_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign slave_Inter_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign slave_Inter_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign slave_Inter_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign slave_Inter_0_to_s00_couplers_AWID = S00_AXI_awid[3:0];
  assign slave_Inter_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign slave_Inter_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign slave_Inter_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign slave_Inter_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign slave_Inter_0_to_s00_couplers_AWUSER = S00_AXI_awuser[31:0];
  assign slave_Inter_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign slave_Inter_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign slave_Inter_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign slave_Inter_0_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign slave_Inter_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign slave_Inter_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign slave_Inter_0_to_s00_couplers_WUSER = S00_AXI_wuser[63:0];
  assign slave_Inter_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign slave_Inter_0_to_s01_couplers_ARADDR = S01_AXI_araddr[63:0];
  assign slave_Inter_0_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign slave_Inter_0_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign slave_Inter_0_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign slave_Inter_0_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign slave_Inter_0_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign slave_Inter_0_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign slave_Inter_0_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign slave_Inter_0_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign slave_Inter_0_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign slave_Inter_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign slave_Inter_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign slave_Inter_0_to_s02_couplers_ARADDR = S02_AXI_araddr[63:0];
  assign slave_Inter_0_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign slave_Inter_0_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign slave_Inter_0_to_s02_couplers_ARID = S02_AXI_arid[0];
  assign slave_Inter_0_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign slave_Inter_0_to_s02_couplers_ARLOCK = S02_AXI_arlock[1:0];
  assign slave_Inter_0_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign slave_Inter_0_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign slave_Inter_0_to_s02_couplers_ARREGION = S02_AXI_arregion[3:0];
  assign slave_Inter_0_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign slave_Inter_0_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign slave_Inter_0_to_s02_couplers_RREADY = S02_AXI_rready;
  assign slave_Inter_0_to_s03_couplers_ARADDR = S03_AXI_araddr[63:0];
  assign slave_Inter_0_to_s03_couplers_ARBURST = S03_AXI_arburst[1:0];
  assign slave_Inter_0_to_s03_couplers_ARCACHE = S03_AXI_arcache[3:0];
  assign slave_Inter_0_to_s03_couplers_ARID = S03_AXI_arid[0];
  assign slave_Inter_0_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign slave_Inter_0_to_s03_couplers_ARLOCK = S03_AXI_arlock[1:0];
  assign slave_Inter_0_to_s03_couplers_ARPROT = S03_AXI_arprot[2:0];
  assign slave_Inter_0_to_s03_couplers_ARQOS = S03_AXI_arqos[3:0];
  assign slave_Inter_0_to_s03_couplers_ARREGION = S03_AXI_arregion[3:0];
  assign slave_Inter_0_to_s03_couplers_ARSIZE = S03_AXI_arsize[2:0];
  assign slave_Inter_0_to_s03_couplers_ARVALID = S03_AXI_arvalid;
  assign slave_Inter_0_to_s03_couplers_RREADY = S03_AXI_rready;
  assign slave_Inter_0_to_s04_couplers_ARADDR = S04_AXI_araddr[63:0];
  assign slave_Inter_0_to_s04_couplers_ARBURST = S04_AXI_arburst[1:0];
  assign slave_Inter_0_to_s04_couplers_ARCACHE = S04_AXI_arcache[3:0];
  assign slave_Inter_0_to_s04_couplers_ARID = S04_AXI_arid[0];
  assign slave_Inter_0_to_s04_couplers_ARLEN = S04_AXI_arlen[7:0];
  assign slave_Inter_0_to_s04_couplers_ARLOCK = S04_AXI_arlock[1:0];
  assign slave_Inter_0_to_s04_couplers_ARPROT = S04_AXI_arprot[2:0];
  assign slave_Inter_0_to_s04_couplers_ARQOS = S04_AXI_arqos[3:0];
  assign slave_Inter_0_to_s04_couplers_ARREGION = S04_AXI_arregion[3:0];
  assign slave_Inter_0_to_s04_couplers_ARSIZE = S04_AXI_arsize[2:0];
  assign slave_Inter_0_to_s04_couplers_ARVALID = S04_AXI_arvalid;
  assign slave_Inter_0_to_s04_couplers_AWADDR = S04_AXI_awaddr[63:0];
  assign slave_Inter_0_to_s04_couplers_AWBURST = S04_AXI_awburst[1:0];
  assign slave_Inter_0_to_s04_couplers_AWCACHE = S04_AXI_awcache[3:0];
  assign slave_Inter_0_to_s04_couplers_AWID = S04_AXI_awid[0];
  assign slave_Inter_0_to_s04_couplers_AWLEN = S04_AXI_awlen[7:0];
  assign slave_Inter_0_to_s04_couplers_AWLOCK = S04_AXI_awlock[1:0];
  assign slave_Inter_0_to_s04_couplers_AWPROT = S04_AXI_awprot[2:0];
  assign slave_Inter_0_to_s04_couplers_AWQOS = S04_AXI_awqos[3:0];
  assign slave_Inter_0_to_s04_couplers_AWREGION = S04_AXI_awregion[3:0];
  assign slave_Inter_0_to_s04_couplers_AWSIZE = S04_AXI_awsize[2:0];
  assign slave_Inter_0_to_s04_couplers_AWVALID = S04_AXI_awvalid;
  assign slave_Inter_0_to_s04_couplers_BREADY = S04_AXI_bready;
  assign slave_Inter_0_to_s04_couplers_RREADY = S04_AXI_rready;
  assign slave_Inter_0_to_s04_couplers_WDATA = S04_AXI_wdata[127:0];
  assign slave_Inter_0_to_s04_couplers_WLAST = S04_AXI_wlast;
  assign slave_Inter_0_to_s04_couplers_WSTRB = S04_AXI_wstrb[15:0];
  assign slave_Inter_0_to_s04_couplers_WVALID = S04_AXI_wvalid;
  m00_couplers_imp_13G0G8Z m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_slave_Inter_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_slave_Inter_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_slave_Inter_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_slave_Inter_0_ARID),
        .M_AXI_arlen(m00_couplers_to_slave_Inter_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_slave_Inter_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_slave_Inter_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_slave_Inter_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_slave_Inter_0_ARREADY),
        .M_AXI_arregion(m00_couplers_to_slave_Inter_0_ARREGION),
        .M_AXI_arsize(m00_couplers_to_slave_Inter_0_ARSIZE),
        .M_AXI_aruser(m00_couplers_to_slave_Inter_0_ARUSER),
        .M_AXI_arvalid(m00_couplers_to_slave_Inter_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_slave_Inter_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_slave_Inter_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_slave_Inter_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_slave_Inter_0_AWID),
        .M_AXI_awlen(m00_couplers_to_slave_Inter_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_slave_Inter_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_slave_Inter_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_slave_Inter_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_slave_Inter_0_AWREADY),
        .M_AXI_awregion(m00_couplers_to_slave_Inter_0_AWREGION),
        .M_AXI_awsize(m00_couplers_to_slave_Inter_0_AWSIZE),
        .M_AXI_awuser(m00_couplers_to_slave_Inter_0_AWUSER),
        .M_AXI_awvalid(m00_couplers_to_slave_Inter_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_slave_Inter_0_BID),
        .M_AXI_bready(m00_couplers_to_slave_Inter_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_slave_Inter_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_slave_Inter_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_slave_Inter_0_RDATA),
        .M_AXI_rid(m00_couplers_to_slave_Inter_0_RID),
        .M_AXI_rlast(m00_couplers_to_slave_Inter_0_RLAST),
        .M_AXI_rready(m00_couplers_to_slave_Inter_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_slave_Inter_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_slave_Inter_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_slave_Inter_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_slave_Inter_0_WLAST),
        .M_AXI_wready(m00_couplers_to_slave_Inter_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_slave_Inter_0_WSTRB),
        .M_AXI_wuser(m00_couplers_to_slave_Inter_0_WUSER),
        .M_AXI_wvalid(m00_couplers_to_slave_Inter_0_WVALID),
        .S_ACLK(slave_Inter_0_ACLK_net),
        .S_ARESETN(slave_Inter_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m00_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m00_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wuser(xbar_to_m00_couplers_WUSER),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_5XAVTJ m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_slave_Inter_0_ARADDR),
        .M_AXI_arburst(m01_couplers_to_slave_Inter_0_ARBURST),
        .M_AXI_arcache(m01_couplers_to_slave_Inter_0_ARCACHE),
        .M_AXI_arid(m01_couplers_to_slave_Inter_0_ARID),
        .M_AXI_arlen(m01_couplers_to_slave_Inter_0_ARLEN),
        .M_AXI_arlock(m01_couplers_to_slave_Inter_0_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_slave_Inter_0_ARPROT),
        .M_AXI_arqos(m01_couplers_to_slave_Inter_0_ARQOS),
        .M_AXI_arready(m01_couplers_to_slave_Inter_0_ARREADY),
        .M_AXI_arregion(m01_couplers_to_slave_Inter_0_ARREGION),
        .M_AXI_arsize(m01_couplers_to_slave_Inter_0_ARSIZE),
        .M_AXI_aruser(m01_couplers_to_slave_Inter_0_ARUSER),
        .M_AXI_arvalid(m01_couplers_to_slave_Inter_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_slave_Inter_0_AWADDR),
        .M_AXI_awburst(m01_couplers_to_slave_Inter_0_AWBURST),
        .M_AXI_awcache(m01_couplers_to_slave_Inter_0_AWCACHE),
        .M_AXI_awid(m01_couplers_to_slave_Inter_0_AWID),
        .M_AXI_awlen(m01_couplers_to_slave_Inter_0_AWLEN),
        .M_AXI_awlock(m01_couplers_to_slave_Inter_0_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_slave_Inter_0_AWPROT),
        .M_AXI_awqos(m01_couplers_to_slave_Inter_0_AWQOS),
        .M_AXI_awready(m01_couplers_to_slave_Inter_0_AWREADY),
        .M_AXI_awregion(m01_couplers_to_slave_Inter_0_AWREGION),
        .M_AXI_awsize(m01_couplers_to_slave_Inter_0_AWSIZE),
        .M_AXI_awuser(m01_couplers_to_slave_Inter_0_AWUSER),
        .M_AXI_awvalid(m01_couplers_to_slave_Inter_0_AWVALID),
        .M_AXI_bid(m01_couplers_to_slave_Inter_0_BID),
        .M_AXI_bready(m01_couplers_to_slave_Inter_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_slave_Inter_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_slave_Inter_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_slave_Inter_0_RDATA),
        .M_AXI_rid(m01_couplers_to_slave_Inter_0_RID),
        .M_AXI_rlast(m01_couplers_to_slave_Inter_0_RLAST),
        .M_AXI_rready(m01_couplers_to_slave_Inter_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_slave_Inter_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_slave_Inter_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_slave_Inter_0_WDATA),
        .M_AXI_wlast(m01_couplers_to_slave_Inter_0_WLAST),
        .M_AXI_wready(m01_couplers_to_slave_Inter_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_slave_Inter_0_WSTRB),
        .M_AXI_wuser(m01_couplers_to_slave_Inter_0_WUSER),
        .M_AXI_wvalid(m01_couplers_to_slave_Inter_0_WVALID),
        .S_ACLK(slave_Inter_0_ACLK_net),
        .S_ARESETN(slave_Inter_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m01_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m01_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wuser(xbar_to_m01_couplers_WUSER),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_14HO664 s00_couplers
       (.M_ACLK(slave_Inter_0_ACLK_net),
        .M_ARESETN(slave_Inter_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wuser(s00_couplers_to_xbar_WUSER),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(slave_Inter_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(slave_Inter_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(slave_Inter_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(slave_Inter_0_to_s00_couplers_ARID),
        .S_AXI_arlen(slave_Inter_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(slave_Inter_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(slave_Inter_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(slave_Inter_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(slave_Inter_0_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(slave_Inter_0_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(slave_Inter_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(slave_Inter_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(slave_Inter_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(slave_Inter_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(slave_Inter_0_to_s00_couplers_AWID),
        .S_AXI_awlen(slave_Inter_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(slave_Inter_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(slave_Inter_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(slave_Inter_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(slave_Inter_0_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(slave_Inter_0_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(slave_Inter_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(slave_Inter_0_to_s00_couplers_BID),
        .S_AXI_bready(slave_Inter_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(slave_Inter_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(slave_Inter_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(slave_Inter_0_to_s00_couplers_RDATA),
        .S_AXI_rid(slave_Inter_0_to_s00_couplers_RID),
        .S_AXI_rlast(slave_Inter_0_to_s00_couplers_RLAST),
        .S_AXI_rready(slave_Inter_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(slave_Inter_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(slave_Inter_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(slave_Inter_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(slave_Inter_0_to_s00_couplers_WLAST),
        .S_AXI_wready(slave_Inter_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(slave_Inter_0_to_s00_couplers_WSTRB),
        .S_AXI_wuser(slave_Inter_0_to_s00_couplers_WUSER),
        .S_AXI_wvalid(slave_Inter_0_to_s00_couplers_WVALID));
  s01_couplers_imp_2Y12I0 s01_couplers
       (.M_ACLK(slave_Inter_0_ACLK_net),
        .M_ARESETN(slave_Inter_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(slave_Inter_0_to_s01_couplers_ARADDR),
        .S_AXI_arburst(slave_Inter_0_to_s01_couplers_ARBURST),
        .S_AXI_arcache(slave_Inter_0_to_s01_couplers_ARCACHE),
        .S_AXI_arid(slave_Inter_0_to_s01_couplers_ARID),
        .S_AXI_arlen(slave_Inter_0_to_s01_couplers_ARLEN),
        .S_AXI_arlock(slave_Inter_0_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(slave_Inter_0_to_s01_couplers_ARPROT),
        .S_AXI_arqos(slave_Inter_0_to_s01_couplers_ARQOS),
        .S_AXI_arready(slave_Inter_0_to_s01_couplers_ARREADY),
        .S_AXI_arregion(slave_Inter_0_to_s01_couplers_ARREGION),
        .S_AXI_arsize(slave_Inter_0_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(slave_Inter_0_to_s01_couplers_ARVALID),
        .S_AXI_rdata(slave_Inter_0_to_s01_couplers_RDATA),
        .S_AXI_rid(slave_Inter_0_to_s01_couplers_RID),
        .S_AXI_rlast(slave_Inter_0_to_s01_couplers_RLAST),
        .S_AXI_rready(slave_Inter_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(slave_Inter_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(slave_Inter_0_to_s01_couplers_RVALID));
  s02_couplers_imp_YJAOK5 s02_couplers
       (.M_ACLK(slave_Inter_0_ACLK_net),
        .M_ARESETN(slave_Inter_0_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(slave_Inter_0_to_s02_couplers_ARADDR),
        .S_AXI_arburst(slave_Inter_0_to_s02_couplers_ARBURST),
        .S_AXI_arcache(slave_Inter_0_to_s02_couplers_ARCACHE),
        .S_AXI_arid(slave_Inter_0_to_s02_couplers_ARID),
        .S_AXI_arlen(slave_Inter_0_to_s02_couplers_ARLEN),
        .S_AXI_arlock(slave_Inter_0_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(slave_Inter_0_to_s02_couplers_ARPROT),
        .S_AXI_arqos(slave_Inter_0_to_s02_couplers_ARQOS),
        .S_AXI_arready(slave_Inter_0_to_s02_couplers_ARREADY),
        .S_AXI_arregion(slave_Inter_0_to_s02_couplers_ARREGION),
        .S_AXI_arsize(slave_Inter_0_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(slave_Inter_0_to_s02_couplers_ARVALID),
        .S_AXI_rdata(slave_Inter_0_to_s02_couplers_RDATA),
        .S_AXI_rid(slave_Inter_0_to_s02_couplers_RID),
        .S_AXI_rlast(slave_Inter_0_to_s02_couplers_RLAST),
        .S_AXI_rready(slave_Inter_0_to_s02_couplers_RREADY),
        .S_AXI_rresp(slave_Inter_0_to_s02_couplers_RRESP),
        .S_AXI_rvalid(slave_Inter_0_to_s02_couplers_RVALID));
  s03_couplers_imp_1S3UPDT s03_couplers
       (.M_ACLK(slave_Inter_0_ACLK_net),
        .M_ARESETN(slave_Inter_0_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_araddr(slave_Inter_0_to_s03_couplers_ARADDR),
        .S_AXI_arburst(slave_Inter_0_to_s03_couplers_ARBURST),
        .S_AXI_arcache(slave_Inter_0_to_s03_couplers_ARCACHE),
        .S_AXI_arid(slave_Inter_0_to_s03_couplers_ARID),
        .S_AXI_arlen(slave_Inter_0_to_s03_couplers_ARLEN),
        .S_AXI_arlock(slave_Inter_0_to_s03_couplers_ARLOCK),
        .S_AXI_arprot(slave_Inter_0_to_s03_couplers_ARPROT),
        .S_AXI_arqos(slave_Inter_0_to_s03_couplers_ARQOS),
        .S_AXI_arready(slave_Inter_0_to_s03_couplers_ARREADY),
        .S_AXI_arregion(slave_Inter_0_to_s03_couplers_ARREGION),
        .S_AXI_arsize(slave_Inter_0_to_s03_couplers_ARSIZE),
        .S_AXI_arvalid(slave_Inter_0_to_s03_couplers_ARVALID),
        .S_AXI_rdata(slave_Inter_0_to_s03_couplers_RDATA),
        .S_AXI_rid(slave_Inter_0_to_s03_couplers_RID),
        .S_AXI_rlast(slave_Inter_0_to_s03_couplers_RLAST),
        .S_AXI_rready(slave_Inter_0_to_s03_couplers_RREADY),
        .S_AXI_rresp(slave_Inter_0_to_s03_couplers_RRESP),
        .S_AXI_rvalid(slave_Inter_0_to_s03_couplers_RVALID));
  s04_couplers_imp_14FBDF3 s04_couplers
       (.M_ACLK(slave_Inter_0_ACLK_net),
        .M_ARESETN(slave_Inter_0_ARESETN_net),
        .M_AXI_araddr(s04_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s04_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s04_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s04_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s04_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s04_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s04_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s04_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s04_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s04_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s04_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s04_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s04_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s04_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s04_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s04_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s04_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s04_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s04_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s04_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s04_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s04_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s04_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s04_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s04_couplers_to_xbar_RLAST),
        .M_AXI_rready(s04_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s04_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s04_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s04_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s04_couplers_to_xbar_WLAST),
        .M_AXI_wready(s04_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s04_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s04_couplers_to_xbar_WVALID),
        .S_ACLK(S04_ACLK_1),
        .S_ARESETN(S04_ARESETN_1),
        .S_AXI_araddr(slave_Inter_0_to_s04_couplers_ARADDR),
        .S_AXI_arburst(slave_Inter_0_to_s04_couplers_ARBURST),
        .S_AXI_arcache(slave_Inter_0_to_s04_couplers_ARCACHE),
        .S_AXI_arid(slave_Inter_0_to_s04_couplers_ARID),
        .S_AXI_arlen(slave_Inter_0_to_s04_couplers_ARLEN),
        .S_AXI_arlock(slave_Inter_0_to_s04_couplers_ARLOCK),
        .S_AXI_arprot(slave_Inter_0_to_s04_couplers_ARPROT),
        .S_AXI_arqos(slave_Inter_0_to_s04_couplers_ARQOS),
        .S_AXI_arready(slave_Inter_0_to_s04_couplers_ARREADY),
        .S_AXI_arregion(slave_Inter_0_to_s04_couplers_ARREGION),
        .S_AXI_arsize(slave_Inter_0_to_s04_couplers_ARSIZE),
        .S_AXI_arvalid(slave_Inter_0_to_s04_couplers_ARVALID),
        .S_AXI_awaddr(slave_Inter_0_to_s04_couplers_AWADDR),
        .S_AXI_awburst(slave_Inter_0_to_s04_couplers_AWBURST),
        .S_AXI_awcache(slave_Inter_0_to_s04_couplers_AWCACHE),
        .S_AXI_awid(slave_Inter_0_to_s04_couplers_AWID),
        .S_AXI_awlen(slave_Inter_0_to_s04_couplers_AWLEN),
        .S_AXI_awlock(slave_Inter_0_to_s04_couplers_AWLOCK),
        .S_AXI_awprot(slave_Inter_0_to_s04_couplers_AWPROT),
        .S_AXI_awqos(slave_Inter_0_to_s04_couplers_AWQOS),
        .S_AXI_awready(slave_Inter_0_to_s04_couplers_AWREADY),
        .S_AXI_awregion(slave_Inter_0_to_s04_couplers_AWREGION),
        .S_AXI_awsize(slave_Inter_0_to_s04_couplers_AWSIZE),
        .S_AXI_awvalid(slave_Inter_0_to_s04_couplers_AWVALID),
        .S_AXI_bid(slave_Inter_0_to_s04_couplers_BID),
        .S_AXI_bready(slave_Inter_0_to_s04_couplers_BREADY),
        .S_AXI_bresp(slave_Inter_0_to_s04_couplers_BRESP),
        .S_AXI_bvalid(slave_Inter_0_to_s04_couplers_BVALID),
        .S_AXI_rdata(slave_Inter_0_to_s04_couplers_RDATA),
        .S_AXI_rid(slave_Inter_0_to_s04_couplers_RID),
        .S_AXI_rlast(slave_Inter_0_to_s04_couplers_RLAST),
        .S_AXI_rready(slave_Inter_0_to_s04_couplers_RREADY),
        .S_AXI_rresp(slave_Inter_0_to_s04_couplers_RRESP),
        .S_AXI_rvalid(slave_Inter_0_to_s04_couplers_RVALID),
        .S_AXI_wdata(slave_Inter_0_to_s04_couplers_WDATA),
        .S_AXI_wlast(slave_Inter_0_to_s04_couplers_WLAST),
        .S_AXI_wready(slave_Inter_0_to_s04_couplers_WREADY),
        .S_AXI_wstrb(slave_Inter_0_to_s04_couplers_WSTRB),
        .S_AXI_wvalid(slave_Inter_0_to_s04_couplers_WVALID));
  matmul_design_xbar_1 xbar
       (.aclk(slave_Inter_0_ACLK_net),
        .aresetn(slave_Inter_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_aruser({xbar_to_m01_couplers_ARUSER,xbar_to_m00_couplers_ARUSER}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awuser({xbar_to_m01_couplers_AWUSER,xbar_to_m00_couplers_AWUSER}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wuser({xbar_to_m01_couplers_WUSER,xbar_to_m00_couplers_WUSER}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s04_couplers_to_xbar_ARADDR,s03_couplers_to_xbar_ARADDR,s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s04_couplers_to_xbar_ARBURST,s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s04_couplers_to_xbar_ARCACHE,s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s04_couplers_to_xbar_ARLEN,s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s04_couplers_to_xbar_ARLOCK,s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s04_couplers_to_xbar_ARPROT,s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s04_couplers_to_xbar_ARQOS,s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s04_couplers_to_xbar_ARREADY,s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s04_couplers_to_xbar_ARSIZE,s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARUSER}),
        .s_axi_arvalid({s04_couplers_to_xbar_ARVALID,s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s04_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s04_couplers_to_xbar_AWBURST,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s04_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s04_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s04_couplers_to_xbar_AWLOCK,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s04_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s04_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s04_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[3:1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s04_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWUSER}),
        .s_axi_awvalid({s04_couplers_to_xbar_AWVALID,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready({s04_couplers_to_xbar_BREADY,1'b0,1'b0,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s04_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[7:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s04_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[3:1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s04_couplers_to_xbar_RDATA,s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast({s04_couplers_to_xbar_RLAST,s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s04_couplers_to_xbar_RREADY,s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s04_couplers_to_xbar_RRESP,s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s04_couplers_to_xbar_RVALID,s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s04_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s04_couplers_to_xbar_WLAST,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s04_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[3:1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s04_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WUSER}),
        .s_axi_wvalid({s04_couplers_to_xbar_WVALID,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module memory_imp_YCXND9
   (DDR_0_SDRAM_act_n,
    DDR_0_SDRAM_adr,
    DDR_0_SDRAM_ba,
    DDR_0_SDRAM_bg,
    DDR_0_SDRAM_ck_c,
    DDR_0_SDRAM_ck_t,
    DDR_0_SDRAM_cke,
    DDR_0_SDRAM_cs_n,
    DDR_0_SDRAM_dq,
    DDR_0_SDRAM_dqs_c,
    DDR_0_SDRAM_dqs_t,
    DDR_0_SDRAM_odt,
    DDR_0_SDRAM_par,
    DDR_0_SDRAM_reset_n,
    DDR_0_SYS_CLK_clk_n,
    DDR_0_SYS_CLK_clk_p,
    DDR_0_S_AXI_CTRL_araddr,
    DDR_0_S_AXI_CTRL_arprot,
    DDR_0_S_AXI_CTRL_arready,
    DDR_0_S_AXI_CTRL_arvalid,
    DDR_0_S_AXI_CTRL_awaddr,
    DDR_0_S_AXI_CTRL_awprot,
    DDR_0_S_AXI_CTRL_awready,
    DDR_0_S_AXI_CTRL_awvalid,
    DDR_0_S_AXI_CTRL_bready,
    DDR_0_S_AXI_CTRL_bresp,
    DDR_0_S_AXI_CTRL_bvalid,
    DDR_0_S_AXI_CTRL_rdata,
    DDR_0_S_AXI_CTRL_rready,
    DDR_0_S_AXI_CTRL_rresp,
    DDR_0_S_AXI_CTRL_rvalid,
    DDR_0_S_AXI_CTRL_wdata,
    DDR_0_S_AXI_CTRL_wready,
    DDR_0_S_AXI_CTRL_wstrb,
    DDR_0_S_AXI_CTRL_wvalid,
    DDR_0_S_AXI_araddr,
    DDR_0_S_AXI_arburst,
    DDR_0_S_AXI_arcache,
    DDR_0_S_AXI_arid,
    DDR_0_S_AXI_arlen,
    DDR_0_S_AXI_arlock,
    DDR_0_S_AXI_arprot,
    DDR_0_S_AXI_arqos,
    DDR_0_S_AXI_arready,
    DDR_0_S_AXI_arregion,
    DDR_0_S_AXI_arsize,
    DDR_0_S_AXI_aruser,
    DDR_0_S_AXI_arvalid,
    DDR_0_S_AXI_awaddr,
    DDR_0_S_AXI_awburst,
    DDR_0_S_AXI_awcache,
    DDR_0_S_AXI_awid,
    DDR_0_S_AXI_awlen,
    DDR_0_S_AXI_awlock,
    DDR_0_S_AXI_awprot,
    DDR_0_S_AXI_awqos,
    DDR_0_S_AXI_awready,
    DDR_0_S_AXI_awregion,
    DDR_0_S_AXI_awsize,
    DDR_0_S_AXI_awuser,
    DDR_0_S_AXI_awvalid,
    DDR_0_S_AXI_bid,
    DDR_0_S_AXI_bready,
    DDR_0_S_AXI_bresp,
    DDR_0_S_AXI_bvalid,
    DDR_0_S_AXI_rdata,
    DDR_0_S_AXI_rid,
    DDR_0_S_AXI_rlast,
    DDR_0_S_AXI_rready,
    DDR_0_S_AXI_rresp,
    DDR_0_S_AXI_rvalid,
    DDR_0_S_AXI_wdata,
    DDR_0_S_AXI_wlast,
    DDR_0_S_AXI_wready,
    DDR_0_S_AXI_wstrb,
    DDR_0_S_AXI_wuser,
    DDR_0_S_AXI_wvalid,
    DDR_0_peripheral_aresetn,
    DDR_0_ui_clk,
    DDR_1_SDRAM_act_n,
    DDR_1_SDRAM_adr,
    DDR_1_SDRAM_ba,
    DDR_1_SDRAM_bg,
    DDR_1_SDRAM_ck_c,
    DDR_1_SDRAM_ck_t,
    DDR_1_SDRAM_cke,
    DDR_1_SDRAM_cs_n,
    DDR_1_SDRAM_dq,
    DDR_1_SDRAM_dqs_c,
    DDR_1_SDRAM_dqs_t,
    DDR_1_SDRAM_odt,
    DDR_1_SDRAM_par,
    DDR_1_SDRAM_reset_n,
    DDR_1_SYS_CLK_clk_n,
    DDR_1_SYS_CLK_clk_p,
    DDR_1_S_AXI_CTRL_araddr,
    DDR_1_S_AXI_CTRL_arprot,
    DDR_1_S_AXI_CTRL_arready,
    DDR_1_S_AXI_CTRL_arvalid,
    DDR_1_S_AXI_CTRL_awaddr,
    DDR_1_S_AXI_CTRL_awprot,
    DDR_1_S_AXI_CTRL_awready,
    DDR_1_S_AXI_CTRL_awvalid,
    DDR_1_S_AXI_CTRL_bready,
    DDR_1_S_AXI_CTRL_bresp,
    DDR_1_S_AXI_CTRL_bvalid,
    DDR_1_S_AXI_CTRL_rdata,
    DDR_1_S_AXI_CTRL_rready,
    DDR_1_S_AXI_CTRL_rresp,
    DDR_1_S_AXI_CTRL_rvalid,
    DDR_1_S_AXI_CTRL_wdata,
    DDR_1_S_AXI_CTRL_wready,
    DDR_1_S_AXI_CTRL_wstrb,
    DDR_1_S_AXI_CTRL_wvalid,
    DDR_1_S_AXI_araddr,
    DDR_1_S_AXI_arburst,
    DDR_1_S_AXI_arcache,
    DDR_1_S_AXI_arid,
    DDR_1_S_AXI_arlen,
    DDR_1_S_AXI_arlock,
    DDR_1_S_AXI_arprot,
    DDR_1_S_AXI_arqos,
    DDR_1_S_AXI_arready,
    DDR_1_S_AXI_arregion,
    DDR_1_S_AXI_arsize,
    DDR_1_S_AXI_aruser,
    DDR_1_S_AXI_arvalid,
    DDR_1_S_AXI_awaddr,
    DDR_1_S_AXI_awburst,
    DDR_1_S_AXI_awcache,
    DDR_1_S_AXI_awid,
    DDR_1_S_AXI_awlen,
    DDR_1_S_AXI_awlock,
    DDR_1_S_AXI_awprot,
    DDR_1_S_AXI_awqos,
    DDR_1_S_AXI_awready,
    DDR_1_S_AXI_awregion,
    DDR_1_S_AXI_awsize,
    DDR_1_S_AXI_awuser,
    DDR_1_S_AXI_awvalid,
    DDR_1_S_AXI_bid,
    DDR_1_S_AXI_bready,
    DDR_1_S_AXI_bresp,
    DDR_1_S_AXI_bvalid,
    DDR_1_S_AXI_rdata,
    DDR_1_S_AXI_rid,
    DDR_1_S_AXI_rlast,
    DDR_1_S_AXI_rready,
    DDR_1_S_AXI_rresp,
    DDR_1_S_AXI_rvalid,
    DDR_1_S_AXI_wdata,
    DDR_1_S_AXI_wlast,
    DDR_1_S_AXI_wready,
    DDR_1_S_AXI_wstrb,
    DDR_1_S_AXI_wuser,
    DDR_1_S_AXI_wvalid,
    DDR_1_peripheral_aresetn,
    DDR_1_ui_clk,
    DDR_rst);
  output DDR_0_SDRAM_act_n;
  output [16:0]DDR_0_SDRAM_adr;
  output [1:0]DDR_0_SDRAM_ba;
  output [1:0]DDR_0_SDRAM_bg;
  output DDR_0_SDRAM_ck_c;
  output DDR_0_SDRAM_ck_t;
  output DDR_0_SDRAM_cke;
  output DDR_0_SDRAM_cs_n;
  inout [71:0]DDR_0_SDRAM_dq;
  inout [17:0]DDR_0_SDRAM_dqs_c;
  inout [17:0]DDR_0_SDRAM_dqs_t;
  output DDR_0_SDRAM_odt;
  output DDR_0_SDRAM_par;
  output DDR_0_SDRAM_reset_n;
  input DDR_0_SYS_CLK_clk_n;
  input DDR_0_SYS_CLK_clk_p;
  input [31:0]DDR_0_S_AXI_CTRL_araddr;
  input [2:0]DDR_0_S_AXI_CTRL_arprot;
  output DDR_0_S_AXI_CTRL_arready;
  input DDR_0_S_AXI_CTRL_arvalid;
  input [31:0]DDR_0_S_AXI_CTRL_awaddr;
  input [2:0]DDR_0_S_AXI_CTRL_awprot;
  output DDR_0_S_AXI_CTRL_awready;
  input DDR_0_S_AXI_CTRL_awvalid;
  input DDR_0_S_AXI_CTRL_bready;
  output [1:0]DDR_0_S_AXI_CTRL_bresp;
  output DDR_0_S_AXI_CTRL_bvalid;
  output [31:0]DDR_0_S_AXI_CTRL_rdata;
  input DDR_0_S_AXI_CTRL_rready;
  output [1:0]DDR_0_S_AXI_CTRL_rresp;
  output DDR_0_S_AXI_CTRL_rvalid;
  input [31:0]DDR_0_S_AXI_CTRL_wdata;
  output DDR_0_S_AXI_CTRL_wready;
  input [3:0]DDR_0_S_AXI_CTRL_wstrb;
  input DDR_0_S_AXI_CTRL_wvalid;
  input [33:0]DDR_0_S_AXI_araddr;
  input [1:0]DDR_0_S_AXI_arburst;
  input [3:0]DDR_0_S_AXI_arcache;
  input [6:0]DDR_0_S_AXI_arid;
  input [7:0]DDR_0_S_AXI_arlen;
  input [0:0]DDR_0_S_AXI_arlock;
  input [2:0]DDR_0_S_AXI_arprot;
  input [3:0]DDR_0_S_AXI_arqos;
  output DDR_0_S_AXI_arready;
  input [3:0]DDR_0_S_AXI_arregion;
  input [2:0]DDR_0_S_AXI_arsize;
  input [31:0]DDR_0_S_AXI_aruser;
  input DDR_0_S_AXI_arvalid;
  input [33:0]DDR_0_S_AXI_awaddr;
  input [1:0]DDR_0_S_AXI_awburst;
  input [3:0]DDR_0_S_AXI_awcache;
  input [6:0]DDR_0_S_AXI_awid;
  input [7:0]DDR_0_S_AXI_awlen;
  input [0:0]DDR_0_S_AXI_awlock;
  input [2:0]DDR_0_S_AXI_awprot;
  input [3:0]DDR_0_S_AXI_awqos;
  output DDR_0_S_AXI_awready;
  input [3:0]DDR_0_S_AXI_awregion;
  input [2:0]DDR_0_S_AXI_awsize;
  input [31:0]DDR_0_S_AXI_awuser;
  input DDR_0_S_AXI_awvalid;
  output [6:0]DDR_0_S_AXI_bid;
  input DDR_0_S_AXI_bready;
  output [1:0]DDR_0_S_AXI_bresp;
  output DDR_0_S_AXI_bvalid;
  output [511:0]DDR_0_S_AXI_rdata;
  output [6:0]DDR_0_S_AXI_rid;
  output DDR_0_S_AXI_rlast;
  input DDR_0_S_AXI_rready;
  output [1:0]DDR_0_S_AXI_rresp;
  output DDR_0_S_AXI_rvalid;
  input [511:0]DDR_0_S_AXI_wdata;
  input DDR_0_S_AXI_wlast;
  output DDR_0_S_AXI_wready;
  input [63:0]DDR_0_S_AXI_wstrb;
  input [63:0]DDR_0_S_AXI_wuser;
  input DDR_0_S_AXI_wvalid;
  output [0:0]DDR_0_peripheral_aresetn;
  output DDR_0_ui_clk;
  output DDR_1_SDRAM_act_n;
  output [16:0]DDR_1_SDRAM_adr;
  output [1:0]DDR_1_SDRAM_ba;
  output [1:0]DDR_1_SDRAM_bg;
  output DDR_1_SDRAM_ck_c;
  output DDR_1_SDRAM_ck_t;
  output DDR_1_SDRAM_cke;
  output DDR_1_SDRAM_cs_n;
  inout [71:0]DDR_1_SDRAM_dq;
  inout [17:0]DDR_1_SDRAM_dqs_c;
  inout [17:0]DDR_1_SDRAM_dqs_t;
  output DDR_1_SDRAM_odt;
  output DDR_1_SDRAM_par;
  output DDR_1_SDRAM_reset_n;
  input DDR_1_SYS_CLK_clk_n;
  input DDR_1_SYS_CLK_clk_p;
  input [31:0]DDR_1_S_AXI_CTRL_araddr;
  input [2:0]DDR_1_S_AXI_CTRL_arprot;
  output DDR_1_S_AXI_CTRL_arready;
  input DDR_1_S_AXI_CTRL_arvalid;
  input [31:0]DDR_1_S_AXI_CTRL_awaddr;
  input [2:0]DDR_1_S_AXI_CTRL_awprot;
  output DDR_1_S_AXI_CTRL_awready;
  input DDR_1_S_AXI_CTRL_awvalid;
  input DDR_1_S_AXI_CTRL_bready;
  output [1:0]DDR_1_S_AXI_CTRL_bresp;
  output DDR_1_S_AXI_CTRL_bvalid;
  output [31:0]DDR_1_S_AXI_CTRL_rdata;
  input DDR_1_S_AXI_CTRL_rready;
  output [1:0]DDR_1_S_AXI_CTRL_rresp;
  output DDR_1_S_AXI_CTRL_rvalid;
  input [31:0]DDR_1_S_AXI_CTRL_wdata;
  output DDR_1_S_AXI_CTRL_wready;
  input [3:0]DDR_1_S_AXI_CTRL_wstrb;
  input DDR_1_S_AXI_CTRL_wvalid;
  input [33:0]DDR_1_S_AXI_araddr;
  input [1:0]DDR_1_S_AXI_arburst;
  input [3:0]DDR_1_S_AXI_arcache;
  input [6:0]DDR_1_S_AXI_arid;
  input [7:0]DDR_1_S_AXI_arlen;
  input [0:0]DDR_1_S_AXI_arlock;
  input [2:0]DDR_1_S_AXI_arprot;
  input [3:0]DDR_1_S_AXI_arqos;
  output DDR_1_S_AXI_arready;
  input [3:0]DDR_1_S_AXI_arregion;
  input [2:0]DDR_1_S_AXI_arsize;
  input [31:0]DDR_1_S_AXI_aruser;
  input DDR_1_S_AXI_arvalid;
  input [33:0]DDR_1_S_AXI_awaddr;
  input [1:0]DDR_1_S_AXI_awburst;
  input [3:0]DDR_1_S_AXI_awcache;
  input [6:0]DDR_1_S_AXI_awid;
  input [7:0]DDR_1_S_AXI_awlen;
  input [0:0]DDR_1_S_AXI_awlock;
  input [2:0]DDR_1_S_AXI_awprot;
  input [3:0]DDR_1_S_AXI_awqos;
  output DDR_1_S_AXI_awready;
  input [3:0]DDR_1_S_AXI_awregion;
  input [2:0]DDR_1_S_AXI_awsize;
  input [31:0]DDR_1_S_AXI_awuser;
  input DDR_1_S_AXI_awvalid;
  output [6:0]DDR_1_S_AXI_bid;
  input DDR_1_S_AXI_bready;
  output [1:0]DDR_1_S_AXI_bresp;
  output DDR_1_S_AXI_bvalid;
  output [511:0]DDR_1_S_AXI_rdata;
  output [6:0]DDR_1_S_AXI_rid;
  output DDR_1_S_AXI_rlast;
  input DDR_1_S_AXI_rready;
  output [1:0]DDR_1_S_AXI_rresp;
  output DDR_1_S_AXI_rvalid;
  input [511:0]DDR_1_S_AXI_wdata;
  input DDR_1_S_AXI_wlast;
  output DDR_1_S_AXI_wready;
  input [63:0]DDR_1_S_AXI_wstrb;
  input [63:0]DDR_1_S_AXI_wuser;
  input DDR_1_S_AXI_wvalid;
  output [0:0]DDR_1_peripheral_aresetn;
  output DDR_1_ui_clk;
  input DDR_rst;

  wire DDR_0_SDRAM_ACT_N;
  wire [16:0]DDR_0_SDRAM_ADR;
  wire [1:0]DDR_0_SDRAM_BA;
  wire [1:0]DDR_0_SDRAM_BG;
  wire DDR_0_SDRAM_CKE;
  wire DDR_0_SDRAM_CK_C;
  wire DDR_0_SDRAM_CK_T;
  wire DDR_0_SDRAM_CS_N;
  wire [71:0]DDR_0_SDRAM_DQ;
  wire [17:0]DDR_0_SDRAM_DQS_C;
  wire [17:0]DDR_0_SDRAM_DQS_T;
  wire DDR_0_SDRAM_ODT;
  wire DDR_0_SDRAM_PAR;
  wire DDR_0_SDRAM_RESET_N;
  wire DDR_0_SYS_CLK_1_CLK_N;
  wire DDR_0_SYS_CLK_1_CLK_P;
  wire [33:0]DDR_0_S_AXI_1_ARADDR;
  wire [1:0]DDR_0_S_AXI_1_ARBURST;
  wire [3:0]DDR_0_S_AXI_1_ARCACHE;
  wire [6:0]DDR_0_S_AXI_1_ARID;
  wire [7:0]DDR_0_S_AXI_1_ARLEN;
  wire [0:0]DDR_0_S_AXI_1_ARLOCK;
  wire [2:0]DDR_0_S_AXI_1_ARPROT;
  wire [3:0]DDR_0_S_AXI_1_ARQOS;
  wire DDR_0_S_AXI_1_ARREADY;
  wire [3:0]DDR_0_S_AXI_1_ARREGION;
  wire [2:0]DDR_0_S_AXI_1_ARSIZE;
  wire [31:0]DDR_0_S_AXI_1_ARUSER;
  wire DDR_0_S_AXI_1_ARVALID;
  wire [33:0]DDR_0_S_AXI_1_AWADDR;
  wire [1:0]DDR_0_S_AXI_1_AWBURST;
  wire [3:0]DDR_0_S_AXI_1_AWCACHE;
  wire [6:0]DDR_0_S_AXI_1_AWID;
  wire [7:0]DDR_0_S_AXI_1_AWLEN;
  wire [0:0]DDR_0_S_AXI_1_AWLOCK;
  wire [2:0]DDR_0_S_AXI_1_AWPROT;
  wire [3:0]DDR_0_S_AXI_1_AWQOS;
  wire DDR_0_S_AXI_1_AWREADY;
  wire [3:0]DDR_0_S_AXI_1_AWREGION;
  wire [2:0]DDR_0_S_AXI_1_AWSIZE;
  wire [31:0]DDR_0_S_AXI_1_AWUSER;
  wire DDR_0_S_AXI_1_AWVALID;
  wire [6:0]DDR_0_S_AXI_1_BID;
  wire DDR_0_S_AXI_1_BREADY;
  wire [1:0]DDR_0_S_AXI_1_BRESP;
  wire DDR_0_S_AXI_1_BVALID;
  wire [511:0]DDR_0_S_AXI_1_RDATA;
  wire [6:0]DDR_0_S_AXI_1_RID;
  wire DDR_0_S_AXI_1_RLAST;
  wire DDR_0_S_AXI_1_RREADY;
  wire [1:0]DDR_0_S_AXI_1_RRESP;
  wire DDR_0_S_AXI_1_RVALID;
  wire [511:0]DDR_0_S_AXI_1_WDATA;
  wire DDR_0_S_AXI_1_WLAST;
  wire DDR_0_S_AXI_1_WREADY;
  wire [63:0]DDR_0_S_AXI_1_WSTRB;
  wire [63:0]DDR_0_S_AXI_1_WUSER;
  wire DDR_0_S_AXI_1_WVALID;
  wire [31:0]DDR_0_S_AXI_CTRL_1_ARADDR;
  wire [2:0]DDR_0_S_AXI_CTRL_1_ARPROT;
  wire DDR_0_S_AXI_CTRL_1_ARREADY;
  wire DDR_0_S_AXI_CTRL_1_ARVALID;
  wire [31:0]DDR_0_S_AXI_CTRL_1_AWADDR;
  wire [2:0]DDR_0_S_AXI_CTRL_1_AWPROT;
  wire DDR_0_S_AXI_CTRL_1_AWREADY;
  wire DDR_0_S_AXI_CTRL_1_AWVALID;
  wire DDR_0_S_AXI_CTRL_1_BREADY;
  wire [1:0]DDR_0_S_AXI_CTRL_1_BRESP;
  wire DDR_0_S_AXI_CTRL_1_BVALID;
  wire [31:0]DDR_0_S_AXI_CTRL_1_RDATA;
  wire DDR_0_S_AXI_CTRL_1_RREADY;
  wire [1:0]DDR_0_S_AXI_CTRL_1_RRESP;
  wire DDR_0_S_AXI_CTRL_1_RVALID;
  wire [31:0]DDR_0_S_AXI_CTRL_1_WDATA;
  wire DDR_0_S_AXI_CTRL_1_WREADY;
  wire [3:0]DDR_0_S_AXI_CTRL_1_WSTRB;
  wire DDR_0_S_AXI_CTRL_1_WVALID;
  wire [0:0]DDR_0_peripheral_aresetn;
  wire DDR_0_ui_clk1;
  wire DDR_1_SDRAM_ACT_N;
  wire [16:0]DDR_1_SDRAM_ADR;
  wire [1:0]DDR_1_SDRAM_BA;
  wire [1:0]DDR_1_SDRAM_BG;
  wire DDR_1_SDRAM_CKE;
  wire DDR_1_SDRAM_CK_C;
  wire DDR_1_SDRAM_CK_T;
  wire DDR_1_SDRAM_CS_N;
  wire [71:0]DDR_1_SDRAM_DQ;
  wire [17:0]DDR_1_SDRAM_DQS_C;
  wire [17:0]DDR_1_SDRAM_DQS_T;
  wire DDR_1_SDRAM_ODT;
  wire DDR_1_SDRAM_PAR;
  wire DDR_1_SDRAM_RESET_N;
  wire DDR_1_SYS_CLK_1_CLK_N;
  wire DDR_1_SYS_CLK_1_CLK_P;
  wire [33:0]DDR_1_S_AXI_1_ARADDR;
  wire [1:0]DDR_1_S_AXI_1_ARBURST;
  wire [3:0]DDR_1_S_AXI_1_ARCACHE;
  wire [6:0]DDR_1_S_AXI_1_ARID;
  wire [7:0]DDR_1_S_AXI_1_ARLEN;
  wire [0:0]DDR_1_S_AXI_1_ARLOCK;
  wire [2:0]DDR_1_S_AXI_1_ARPROT;
  wire [3:0]DDR_1_S_AXI_1_ARQOS;
  wire DDR_1_S_AXI_1_ARREADY;
  wire [3:0]DDR_1_S_AXI_1_ARREGION;
  wire [2:0]DDR_1_S_AXI_1_ARSIZE;
  wire [31:0]DDR_1_S_AXI_1_ARUSER;
  wire DDR_1_S_AXI_1_ARVALID;
  wire [33:0]DDR_1_S_AXI_1_AWADDR;
  wire [1:0]DDR_1_S_AXI_1_AWBURST;
  wire [3:0]DDR_1_S_AXI_1_AWCACHE;
  wire [6:0]DDR_1_S_AXI_1_AWID;
  wire [7:0]DDR_1_S_AXI_1_AWLEN;
  wire [0:0]DDR_1_S_AXI_1_AWLOCK;
  wire [2:0]DDR_1_S_AXI_1_AWPROT;
  wire [3:0]DDR_1_S_AXI_1_AWQOS;
  wire DDR_1_S_AXI_1_AWREADY;
  wire [3:0]DDR_1_S_AXI_1_AWREGION;
  wire [2:0]DDR_1_S_AXI_1_AWSIZE;
  wire [31:0]DDR_1_S_AXI_1_AWUSER;
  wire DDR_1_S_AXI_1_AWVALID;
  wire [6:0]DDR_1_S_AXI_1_BID;
  wire DDR_1_S_AXI_1_BREADY;
  wire [1:0]DDR_1_S_AXI_1_BRESP;
  wire DDR_1_S_AXI_1_BVALID;
  wire [511:0]DDR_1_S_AXI_1_RDATA;
  wire [6:0]DDR_1_S_AXI_1_RID;
  wire DDR_1_S_AXI_1_RLAST;
  wire DDR_1_S_AXI_1_RREADY;
  wire [1:0]DDR_1_S_AXI_1_RRESP;
  wire DDR_1_S_AXI_1_RVALID;
  wire [511:0]DDR_1_S_AXI_1_WDATA;
  wire DDR_1_S_AXI_1_WLAST;
  wire DDR_1_S_AXI_1_WREADY;
  wire [63:0]DDR_1_S_AXI_1_WSTRB;
  wire [63:0]DDR_1_S_AXI_1_WUSER;
  wire DDR_1_S_AXI_1_WVALID;
  wire [31:0]DDR_1_S_AXI_CTRL_1_ARADDR;
  wire [2:0]DDR_1_S_AXI_CTRL_1_ARPROT;
  wire DDR_1_S_AXI_CTRL_1_ARREADY;
  wire DDR_1_S_AXI_CTRL_1_ARVALID;
  wire [31:0]DDR_1_S_AXI_CTRL_1_AWADDR;
  wire [2:0]DDR_1_S_AXI_CTRL_1_AWPROT;
  wire DDR_1_S_AXI_CTRL_1_AWREADY;
  wire DDR_1_S_AXI_CTRL_1_AWVALID;
  wire DDR_1_S_AXI_CTRL_1_BREADY;
  wire [1:0]DDR_1_S_AXI_CTRL_1_BRESP;
  wire DDR_1_S_AXI_CTRL_1_BVALID;
  wire [31:0]DDR_1_S_AXI_CTRL_1_RDATA;
  wire DDR_1_S_AXI_CTRL_1_RREADY;
  wire [1:0]DDR_1_S_AXI_CTRL_1_RRESP;
  wire DDR_1_S_AXI_CTRL_1_RVALID;
  wire [31:0]DDR_1_S_AXI_CTRL_1_WDATA;
  wire DDR_1_S_AXI_CTRL_1_WREADY;
  wire [3:0]DDR_1_S_AXI_CTRL_1_WSTRB;
  wire DDR_1_S_AXI_CTRL_1_WVALID;
  wire [0:0]DDR_1_peripheral_aresetn;
  wire DDR_1_ui_clk;
  wire DDR_rst_1;
  wire [0:0]sys_rst_NOT_Res;

  assign DDR_0_SDRAM_act_n = DDR_0_SDRAM_ACT_N;
  assign DDR_0_SDRAM_adr[16:0] = DDR_0_SDRAM_ADR;
  assign DDR_0_SDRAM_ba[1:0] = DDR_0_SDRAM_BA;
  assign DDR_0_SDRAM_bg[1:0] = DDR_0_SDRAM_BG;
  assign DDR_0_SDRAM_ck_c = DDR_0_SDRAM_CK_C;
  assign DDR_0_SDRAM_ck_t = DDR_0_SDRAM_CK_T;
  assign DDR_0_SDRAM_cke = DDR_0_SDRAM_CKE;
  assign DDR_0_SDRAM_cs_n = DDR_0_SDRAM_CS_N;
  assign DDR_0_SDRAM_odt = DDR_0_SDRAM_ODT;
  assign DDR_0_SDRAM_par = DDR_0_SDRAM_PAR;
  assign DDR_0_SDRAM_reset_n = DDR_0_SDRAM_RESET_N;
  assign DDR_0_SYS_CLK_1_CLK_N = DDR_0_SYS_CLK_clk_n;
  assign DDR_0_SYS_CLK_1_CLK_P = DDR_0_SYS_CLK_clk_p;
  assign DDR_0_S_AXI_1_ARADDR = DDR_0_S_AXI_araddr[33:0];
  assign DDR_0_S_AXI_1_ARBURST = DDR_0_S_AXI_arburst[1:0];
  assign DDR_0_S_AXI_1_ARCACHE = DDR_0_S_AXI_arcache[3:0];
  assign DDR_0_S_AXI_1_ARID = DDR_0_S_AXI_arid[6:0];
  assign DDR_0_S_AXI_1_ARLEN = DDR_0_S_AXI_arlen[7:0];
  assign DDR_0_S_AXI_1_ARLOCK = DDR_0_S_AXI_arlock[0];
  assign DDR_0_S_AXI_1_ARPROT = DDR_0_S_AXI_arprot[2:0];
  assign DDR_0_S_AXI_1_ARQOS = DDR_0_S_AXI_arqos[3:0];
  assign DDR_0_S_AXI_1_ARREGION = DDR_0_S_AXI_arregion[3:0];
  assign DDR_0_S_AXI_1_ARSIZE = DDR_0_S_AXI_arsize[2:0];
  assign DDR_0_S_AXI_1_ARUSER = DDR_0_S_AXI_aruser[31:0];
  assign DDR_0_S_AXI_1_ARVALID = DDR_0_S_AXI_arvalid;
  assign DDR_0_S_AXI_1_AWADDR = DDR_0_S_AXI_awaddr[33:0];
  assign DDR_0_S_AXI_1_AWBURST = DDR_0_S_AXI_awburst[1:0];
  assign DDR_0_S_AXI_1_AWCACHE = DDR_0_S_AXI_awcache[3:0];
  assign DDR_0_S_AXI_1_AWID = DDR_0_S_AXI_awid[6:0];
  assign DDR_0_S_AXI_1_AWLEN = DDR_0_S_AXI_awlen[7:0];
  assign DDR_0_S_AXI_1_AWLOCK = DDR_0_S_AXI_awlock[0];
  assign DDR_0_S_AXI_1_AWPROT = DDR_0_S_AXI_awprot[2:0];
  assign DDR_0_S_AXI_1_AWQOS = DDR_0_S_AXI_awqos[3:0];
  assign DDR_0_S_AXI_1_AWREGION = DDR_0_S_AXI_awregion[3:0];
  assign DDR_0_S_AXI_1_AWSIZE = DDR_0_S_AXI_awsize[2:0];
  assign DDR_0_S_AXI_1_AWUSER = DDR_0_S_AXI_awuser[31:0];
  assign DDR_0_S_AXI_1_AWVALID = DDR_0_S_AXI_awvalid;
  assign DDR_0_S_AXI_1_BREADY = DDR_0_S_AXI_bready;
  assign DDR_0_S_AXI_1_RREADY = DDR_0_S_AXI_rready;
  assign DDR_0_S_AXI_1_WDATA = DDR_0_S_AXI_wdata[511:0];
  assign DDR_0_S_AXI_1_WLAST = DDR_0_S_AXI_wlast;
  assign DDR_0_S_AXI_1_WSTRB = DDR_0_S_AXI_wstrb[63:0];
  assign DDR_0_S_AXI_1_WUSER = DDR_0_S_AXI_wuser[63:0];
  assign DDR_0_S_AXI_1_WVALID = DDR_0_S_AXI_wvalid;
  assign DDR_0_S_AXI_CTRL_1_ARADDR = DDR_0_S_AXI_CTRL_araddr[31:0];
  assign DDR_0_S_AXI_CTRL_1_ARPROT = DDR_0_S_AXI_CTRL_arprot[2:0];
  assign DDR_0_S_AXI_CTRL_1_ARVALID = DDR_0_S_AXI_CTRL_arvalid;
  assign DDR_0_S_AXI_CTRL_1_AWADDR = DDR_0_S_AXI_CTRL_awaddr[31:0];
  assign DDR_0_S_AXI_CTRL_1_AWPROT = DDR_0_S_AXI_CTRL_awprot[2:0];
  assign DDR_0_S_AXI_CTRL_1_AWVALID = DDR_0_S_AXI_CTRL_awvalid;
  assign DDR_0_S_AXI_CTRL_1_BREADY = DDR_0_S_AXI_CTRL_bready;
  assign DDR_0_S_AXI_CTRL_1_RREADY = DDR_0_S_AXI_CTRL_rready;
  assign DDR_0_S_AXI_CTRL_1_WDATA = DDR_0_S_AXI_CTRL_wdata[31:0];
  assign DDR_0_S_AXI_CTRL_1_WSTRB = DDR_0_S_AXI_CTRL_wstrb[3:0];
  assign DDR_0_S_AXI_CTRL_1_WVALID = DDR_0_S_AXI_CTRL_wvalid;
  assign DDR_0_S_AXI_CTRL_arready = DDR_0_S_AXI_CTRL_1_ARREADY;
  assign DDR_0_S_AXI_CTRL_awready = DDR_0_S_AXI_CTRL_1_AWREADY;
  assign DDR_0_S_AXI_CTRL_bresp[1:0] = DDR_0_S_AXI_CTRL_1_BRESP;
  assign DDR_0_S_AXI_CTRL_bvalid = DDR_0_S_AXI_CTRL_1_BVALID;
  assign DDR_0_S_AXI_CTRL_rdata[31:0] = DDR_0_S_AXI_CTRL_1_RDATA;
  assign DDR_0_S_AXI_CTRL_rresp[1:0] = DDR_0_S_AXI_CTRL_1_RRESP;
  assign DDR_0_S_AXI_CTRL_rvalid = DDR_0_S_AXI_CTRL_1_RVALID;
  assign DDR_0_S_AXI_CTRL_wready = DDR_0_S_AXI_CTRL_1_WREADY;
  assign DDR_0_S_AXI_arready = DDR_0_S_AXI_1_ARREADY;
  assign DDR_0_S_AXI_awready = DDR_0_S_AXI_1_AWREADY;
  assign DDR_0_S_AXI_bid[6:0] = DDR_0_S_AXI_1_BID;
  assign DDR_0_S_AXI_bresp[1:0] = DDR_0_S_AXI_1_BRESP;
  assign DDR_0_S_AXI_bvalid = DDR_0_S_AXI_1_BVALID;
  assign DDR_0_S_AXI_rdata[511:0] = DDR_0_S_AXI_1_RDATA;
  assign DDR_0_S_AXI_rid[6:0] = DDR_0_S_AXI_1_RID;
  assign DDR_0_S_AXI_rlast = DDR_0_S_AXI_1_RLAST;
  assign DDR_0_S_AXI_rresp[1:0] = DDR_0_S_AXI_1_RRESP;
  assign DDR_0_S_AXI_rvalid = DDR_0_S_AXI_1_RVALID;
  assign DDR_0_S_AXI_wready = DDR_0_S_AXI_1_WREADY;
  assign DDR_0_ui_clk = DDR_0_ui_clk1;
  assign DDR_1_SDRAM_act_n = DDR_1_SDRAM_ACT_N;
  assign DDR_1_SDRAM_adr[16:0] = DDR_1_SDRAM_ADR;
  assign DDR_1_SDRAM_ba[1:0] = DDR_1_SDRAM_BA;
  assign DDR_1_SDRAM_bg[1:0] = DDR_1_SDRAM_BG;
  assign DDR_1_SDRAM_ck_c = DDR_1_SDRAM_CK_C;
  assign DDR_1_SDRAM_ck_t = DDR_1_SDRAM_CK_T;
  assign DDR_1_SDRAM_cke = DDR_1_SDRAM_CKE;
  assign DDR_1_SDRAM_cs_n = DDR_1_SDRAM_CS_N;
  assign DDR_1_SDRAM_odt = DDR_1_SDRAM_ODT;
  assign DDR_1_SDRAM_par = DDR_1_SDRAM_PAR;
  assign DDR_1_SDRAM_reset_n = DDR_1_SDRAM_RESET_N;
  assign DDR_1_SYS_CLK_1_CLK_N = DDR_1_SYS_CLK_clk_n;
  assign DDR_1_SYS_CLK_1_CLK_P = DDR_1_SYS_CLK_clk_p;
  assign DDR_1_S_AXI_1_ARADDR = DDR_1_S_AXI_araddr[33:0];
  assign DDR_1_S_AXI_1_ARBURST = DDR_1_S_AXI_arburst[1:0];
  assign DDR_1_S_AXI_1_ARCACHE = DDR_1_S_AXI_arcache[3:0];
  assign DDR_1_S_AXI_1_ARID = DDR_1_S_AXI_arid[6:0];
  assign DDR_1_S_AXI_1_ARLEN = DDR_1_S_AXI_arlen[7:0];
  assign DDR_1_S_AXI_1_ARLOCK = DDR_1_S_AXI_arlock[0];
  assign DDR_1_S_AXI_1_ARPROT = DDR_1_S_AXI_arprot[2:0];
  assign DDR_1_S_AXI_1_ARQOS = DDR_1_S_AXI_arqos[3:0];
  assign DDR_1_S_AXI_1_ARREGION = DDR_1_S_AXI_arregion[3:0];
  assign DDR_1_S_AXI_1_ARSIZE = DDR_1_S_AXI_arsize[2:0];
  assign DDR_1_S_AXI_1_ARUSER = DDR_1_S_AXI_aruser[31:0];
  assign DDR_1_S_AXI_1_ARVALID = DDR_1_S_AXI_arvalid;
  assign DDR_1_S_AXI_1_AWADDR = DDR_1_S_AXI_awaddr[33:0];
  assign DDR_1_S_AXI_1_AWBURST = DDR_1_S_AXI_awburst[1:0];
  assign DDR_1_S_AXI_1_AWCACHE = DDR_1_S_AXI_awcache[3:0];
  assign DDR_1_S_AXI_1_AWID = DDR_1_S_AXI_awid[6:0];
  assign DDR_1_S_AXI_1_AWLEN = DDR_1_S_AXI_awlen[7:0];
  assign DDR_1_S_AXI_1_AWLOCK = DDR_1_S_AXI_awlock[0];
  assign DDR_1_S_AXI_1_AWPROT = DDR_1_S_AXI_awprot[2:0];
  assign DDR_1_S_AXI_1_AWQOS = DDR_1_S_AXI_awqos[3:0];
  assign DDR_1_S_AXI_1_AWREGION = DDR_1_S_AXI_awregion[3:0];
  assign DDR_1_S_AXI_1_AWSIZE = DDR_1_S_AXI_awsize[2:0];
  assign DDR_1_S_AXI_1_AWUSER = DDR_1_S_AXI_awuser[31:0];
  assign DDR_1_S_AXI_1_AWVALID = DDR_1_S_AXI_awvalid;
  assign DDR_1_S_AXI_1_BREADY = DDR_1_S_AXI_bready;
  assign DDR_1_S_AXI_1_RREADY = DDR_1_S_AXI_rready;
  assign DDR_1_S_AXI_1_WDATA = DDR_1_S_AXI_wdata[511:0];
  assign DDR_1_S_AXI_1_WLAST = DDR_1_S_AXI_wlast;
  assign DDR_1_S_AXI_1_WSTRB = DDR_1_S_AXI_wstrb[63:0];
  assign DDR_1_S_AXI_1_WUSER = DDR_1_S_AXI_wuser[63:0];
  assign DDR_1_S_AXI_1_WVALID = DDR_1_S_AXI_wvalid;
  assign DDR_1_S_AXI_CTRL_1_ARADDR = DDR_1_S_AXI_CTRL_araddr[31:0];
  assign DDR_1_S_AXI_CTRL_1_ARPROT = DDR_1_S_AXI_CTRL_arprot[2:0];
  assign DDR_1_S_AXI_CTRL_1_ARVALID = DDR_1_S_AXI_CTRL_arvalid;
  assign DDR_1_S_AXI_CTRL_1_AWADDR = DDR_1_S_AXI_CTRL_awaddr[31:0];
  assign DDR_1_S_AXI_CTRL_1_AWPROT = DDR_1_S_AXI_CTRL_awprot[2:0];
  assign DDR_1_S_AXI_CTRL_1_AWVALID = DDR_1_S_AXI_CTRL_awvalid;
  assign DDR_1_S_AXI_CTRL_1_BREADY = DDR_1_S_AXI_CTRL_bready;
  assign DDR_1_S_AXI_CTRL_1_RREADY = DDR_1_S_AXI_CTRL_rready;
  assign DDR_1_S_AXI_CTRL_1_WDATA = DDR_1_S_AXI_CTRL_wdata[31:0];
  assign DDR_1_S_AXI_CTRL_1_WSTRB = DDR_1_S_AXI_CTRL_wstrb[3:0];
  assign DDR_1_S_AXI_CTRL_1_WVALID = DDR_1_S_AXI_CTRL_wvalid;
  assign DDR_1_S_AXI_CTRL_arready = DDR_1_S_AXI_CTRL_1_ARREADY;
  assign DDR_1_S_AXI_CTRL_awready = DDR_1_S_AXI_CTRL_1_AWREADY;
  assign DDR_1_S_AXI_CTRL_bresp[1:0] = DDR_1_S_AXI_CTRL_1_BRESP;
  assign DDR_1_S_AXI_CTRL_bvalid = DDR_1_S_AXI_CTRL_1_BVALID;
  assign DDR_1_S_AXI_CTRL_rdata[31:0] = DDR_1_S_AXI_CTRL_1_RDATA;
  assign DDR_1_S_AXI_CTRL_rresp[1:0] = DDR_1_S_AXI_CTRL_1_RRESP;
  assign DDR_1_S_AXI_CTRL_rvalid = DDR_1_S_AXI_CTRL_1_RVALID;
  assign DDR_1_S_AXI_CTRL_wready = DDR_1_S_AXI_CTRL_1_WREADY;
  assign DDR_1_S_AXI_arready = DDR_1_S_AXI_1_ARREADY;
  assign DDR_1_S_AXI_awready = DDR_1_S_AXI_1_AWREADY;
  assign DDR_1_S_AXI_bid[6:0] = DDR_1_S_AXI_1_BID;
  assign DDR_1_S_AXI_bresp[1:0] = DDR_1_S_AXI_1_BRESP;
  assign DDR_1_S_AXI_bvalid = DDR_1_S_AXI_1_BVALID;
  assign DDR_1_S_AXI_rdata[511:0] = DDR_1_S_AXI_1_RDATA;
  assign DDR_1_S_AXI_rid[6:0] = DDR_1_S_AXI_1_RID;
  assign DDR_1_S_AXI_rlast = DDR_1_S_AXI_1_RLAST;
  assign DDR_1_S_AXI_rresp[1:0] = DDR_1_S_AXI_1_RRESP;
  assign DDR_1_S_AXI_rvalid = DDR_1_S_AXI_1_RVALID;
  assign DDR_1_S_AXI_wready = DDR_1_S_AXI_1_WREADY;
  assign DDR_rst_1 = DDR_rst;
  DDR_0_imp_1OQQHJ1 DDR_0
       (.SDRAM_act_n(DDR_0_SDRAM_ACT_N),
        .SDRAM_adr(DDR_0_SDRAM_ADR),
        .SDRAM_ba(DDR_0_SDRAM_BA),
        .SDRAM_bg(DDR_0_SDRAM_BG),
        .SDRAM_ck_c(DDR_0_SDRAM_CK_C),
        .SDRAM_ck_t(DDR_0_SDRAM_CK_T),
        .SDRAM_cke(DDR_0_SDRAM_CKE),
        .SDRAM_cs_n(DDR_0_SDRAM_CS_N),
        .SDRAM_dq(DDR_0_SDRAM_dq[71:0]),
        .SDRAM_dqs_c(DDR_0_SDRAM_dqs_c[17:0]),
        .SDRAM_dqs_t(DDR_0_SDRAM_dqs_t[17:0]),
        .SDRAM_odt(DDR_0_SDRAM_ODT),
        .SDRAM_par(DDR_0_SDRAM_PAR),
        .SDRAM_reset_n(DDR_0_SDRAM_RESET_N),
        .SYS_CLK_clk_n(DDR_0_SYS_CLK_1_CLK_N),
        .SYS_CLK_clk_p(DDR_0_SYS_CLK_1_CLK_P),
        .S_AXI_CTRL_araddr(DDR_0_S_AXI_CTRL_1_ARADDR),
        .S_AXI_CTRL_arprot(DDR_0_S_AXI_CTRL_1_ARPROT),
        .S_AXI_CTRL_arready(DDR_0_S_AXI_CTRL_1_ARREADY),
        .S_AXI_CTRL_arvalid(DDR_0_S_AXI_CTRL_1_ARVALID),
        .S_AXI_CTRL_awaddr(DDR_0_S_AXI_CTRL_1_AWADDR),
        .S_AXI_CTRL_awprot(DDR_0_S_AXI_CTRL_1_AWPROT),
        .S_AXI_CTRL_awready(DDR_0_S_AXI_CTRL_1_AWREADY),
        .S_AXI_CTRL_awvalid(DDR_0_S_AXI_CTRL_1_AWVALID),
        .S_AXI_CTRL_bready(DDR_0_S_AXI_CTRL_1_BREADY),
        .S_AXI_CTRL_bresp(DDR_0_S_AXI_CTRL_1_BRESP),
        .S_AXI_CTRL_bvalid(DDR_0_S_AXI_CTRL_1_BVALID),
        .S_AXI_CTRL_rdata(DDR_0_S_AXI_CTRL_1_RDATA),
        .S_AXI_CTRL_rready(DDR_0_S_AXI_CTRL_1_RREADY),
        .S_AXI_CTRL_rresp(DDR_0_S_AXI_CTRL_1_RRESP),
        .S_AXI_CTRL_rvalid(DDR_0_S_AXI_CTRL_1_RVALID),
        .S_AXI_CTRL_wdata(DDR_0_S_AXI_CTRL_1_WDATA),
        .S_AXI_CTRL_wready(DDR_0_S_AXI_CTRL_1_WREADY),
        .S_AXI_CTRL_wstrb(DDR_0_S_AXI_CTRL_1_WSTRB),
        .S_AXI_CTRL_wvalid(DDR_0_S_AXI_CTRL_1_WVALID),
        .S_AXI_araddr(DDR_0_S_AXI_1_ARADDR),
        .S_AXI_arburst(DDR_0_S_AXI_1_ARBURST),
        .S_AXI_arcache(DDR_0_S_AXI_1_ARCACHE),
        .S_AXI_arid(DDR_0_S_AXI_1_ARID),
        .S_AXI_arlen(DDR_0_S_AXI_1_ARLEN),
        .S_AXI_arlock(DDR_0_S_AXI_1_ARLOCK),
        .S_AXI_arprot(DDR_0_S_AXI_1_ARPROT),
        .S_AXI_arqos(DDR_0_S_AXI_1_ARQOS),
        .S_AXI_arready(DDR_0_S_AXI_1_ARREADY),
        .S_AXI_arregion(DDR_0_S_AXI_1_ARREGION),
        .S_AXI_arsize(DDR_0_S_AXI_1_ARSIZE),
        .S_AXI_aruser(DDR_0_S_AXI_1_ARUSER),
        .S_AXI_arvalid(DDR_0_S_AXI_1_ARVALID),
        .S_AXI_awaddr(DDR_0_S_AXI_1_AWADDR),
        .S_AXI_awburst(DDR_0_S_AXI_1_AWBURST),
        .S_AXI_awcache(DDR_0_S_AXI_1_AWCACHE),
        .S_AXI_awid(DDR_0_S_AXI_1_AWID),
        .S_AXI_awlen(DDR_0_S_AXI_1_AWLEN),
        .S_AXI_awlock(DDR_0_S_AXI_1_AWLOCK),
        .S_AXI_awprot(DDR_0_S_AXI_1_AWPROT),
        .S_AXI_awqos(DDR_0_S_AXI_1_AWQOS),
        .S_AXI_awready(DDR_0_S_AXI_1_AWREADY),
        .S_AXI_awregion(DDR_0_S_AXI_1_AWREGION),
        .S_AXI_awsize(DDR_0_S_AXI_1_AWSIZE),
        .S_AXI_awuser(DDR_0_S_AXI_1_AWUSER),
        .S_AXI_awvalid(DDR_0_S_AXI_1_AWVALID),
        .S_AXI_bid(DDR_0_S_AXI_1_BID),
        .S_AXI_bready(DDR_0_S_AXI_1_BREADY),
        .S_AXI_bresp(DDR_0_S_AXI_1_BRESP),
        .S_AXI_bvalid(DDR_0_S_AXI_1_BVALID),
        .S_AXI_rdata(DDR_0_S_AXI_1_RDATA),
        .S_AXI_rid(DDR_0_S_AXI_1_RID),
        .S_AXI_rlast(DDR_0_S_AXI_1_RLAST),
        .S_AXI_rready(DDR_0_S_AXI_1_RREADY),
        .S_AXI_rresp(DDR_0_S_AXI_1_RRESP),
        .S_AXI_rvalid(DDR_0_S_AXI_1_RVALID),
        .S_AXI_wdata(DDR_0_S_AXI_1_WDATA),
        .S_AXI_wlast(DDR_0_S_AXI_1_WLAST),
        .S_AXI_wready(DDR_0_S_AXI_1_WREADY),
        .S_AXI_wstrb(DDR_0_S_AXI_1_WSTRB),
        .S_AXI_wuser(DDR_0_S_AXI_1_WUSER),
        .S_AXI_wvalid(DDR_0_S_AXI_1_WVALID),
        .peripheral_aresetn(DDR_0_peripheral_aresetn),
        .rst(DDR_rst_1),
        .sys_rst(sys_rst_NOT_Res),
        .ui_clk(DDR_0_ui_clk1));
  DDR_1_imp_JY3T57 DDR_1
       (.SDRAM_act_n(DDR_1_SDRAM_ACT_N),
        .SDRAM_adr(DDR_1_SDRAM_ADR),
        .SDRAM_ba(DDR_1_SDRAM_BA),
        .SDRAM_bg(DDR_1_SDRAM_BG),
        .SDRAM_ck_c(DDR_1_SDRAM_CK_C),
        .SDRAM_ck_t(DDR_1_SDRAM_CK_T),
        .SDRAM_cke(DDR_1_SDRAM_CKE),
        .SDRAM_cs_n(DDR_1_SDRAM_CS_N),
        .SDRAM_dq(DDR_1_SDRAM_dq[71:0]),
        .SDRAM_dqs_c(DDR_1_SDRAM_dqs_c[17:0]),
        .SDRAM_dqs_t(DDR_1_SDRAM_dqs_t[17:0]),
        .SDRAM_odt(DDR_1_SDRAM_ODT),
        .SDRAM_par(DDR_1_SDRAM_PAR),
        .SDRAM_reset_n(DDR_1_SDRAM_RESET_N),
        .SYS_CLK_clk_n(DDR_1_SYS_CLK_1_CLK_N),
        .SYS_CLK_clk_p(DDR_1_SYS_CLK_1_CLK_P),
        .S_AXI_CTRL_araddr(DDR_1_S_AXI_CTRL_1_ARADDR),
        .S_AXI_CTRL_arprot(DDR_1_S_AXI_CTRL_1_ARPROT),
        .S_AXI_CTRL_arready(DDR_1_S_AXI_CTRL_1_ARREADY),
        .S_AXI_CTRL_arvalid(DDR_1_S_AXI_CTRL_1_ARVALID),
        .S_AXI_CTRL_awaddr(DDR_1_S_AXI_CTRL_1_AWADDR),
        .S_AXI_CTRL_awprot(DDR_1_S_AXI_CTRL_1_AWPROT),
        .S_AXI_CTRL_awready(DDR_1_S_AXI_CTRL_1_AWREADY),
        .S_AXI_CTRL_awvalid(DDR_1_S_AXI_CTRL_1_AWVALID),
        .S_AXI_CTRL_bready(DDR_1_S_AXI_CTRL_1_BREADY),
        .S_AXI_CTRL_bresp(DDR_1_S_AXI_CTRL_1_BRESP),
        .S_AXI_CTRL_bvalid(DDR_1_S_AXI_CTRL_1_BVALID),
        .S_AXI_CTRL_rdata(DDR_1_S_AXI_CTRL_1_RDATA),
        .S_AXI_CTRL_rready(DDR_1_S_AXI_CTRL_1_RREADY),
        .S_AXI_CTRL_rresp(DDR_1_S_AXI_CTRL_1_RRESP),
        .S_AXI_CTRL_rvalid(DDR_1_S_AXI_CTRL_1_RVALID),
        .S_AXI_CTRL_wdata(DDR_1_S_AXI_CTRL_1_WDATA),
        .S_AXI_CTRL_wready(DDR_1_S_AXI_CTRL_1_WREADY),
        .S_AXI_CTRL_wstrb(DDR_1_S_AXI_CTRL_1_WSTRB),
        .S_AXI_CTRL_wvalid(DDR_1_S_AXI_CTRL_1_WVALID),
        .S_AXI_araddr(DDR_1_S_AXI_1_ARADDR),
        .S_AXI_arburst(DDR_1_S_AXI_1_ARBURST),
        .S_AXI_arcache(DDR_1_S_AXI_1_ARCACHE),
        .S_AXI_arid(DDR_1_S_AXI_1_ARID),
        .S_AXI_arlen(DDR_1_S_AXI_1_ARLEN),
        .S_AXI_arlock(DDR_1_S_AXI_1_ARLOCK),
        .S_AXI_arprot(DDR_1_S_AXI_1_ARPROT),
        .S_AXI_arqos(DDR_1_S_AXI_1_ARQOS),
        .S_AXI_arready(DDR_1_S_AXI_1_ARREADY),
        .S_AXI_arregion(DDR_1_S_AXI_1_ARREGION),
        .S_AXI_arsize(DDR_1_S_AXI_1_ARSIZE),
        .S_AXI_aruser(DDR_1_S_AXI_1_ARUSER),
        .S_AXI_arvalid(DDR_1_S_AXI_1_ARVALID),
        .S_AXI_awaddr(DDR_1_S_AXI_1_AWADDR),
        .S_AXI_awburst(DDR_1_S_AXI_1_AWBURST),
        .S_AXI_awcache(DDR_1_S_AXI_1_AWCACHE),
        .S_AXI_awid(DDR_1_S_AXI_1_AWID),
        .S_AXI_awlen(DDR_1_S_AXI_1_AWLEN),
        .S_AXI_awlock(DDR_1_S_AXI_1_AWLOCK),
        .S_AXI_awprot(DDR_1_S_AXI_1_AWPROT),
        .S_AXI_awqos(DDR_1_S_AXI_1_AWQOS),
        .S_AXI_awready(DDR_1_S_AXI_1_AWREADY),
        .S_AXI_awregion(DDR_1_S_AXI_1_AWREGION),
        .S_AXI_awsize(DDR_1_S_AXI_1_AWSIZE),
        .S_AXI_awuser(DDR_1_S_AXI_1_AWUSER),
        .S_AXI_awvalid(DDR_1_S_AXI_1_AWVALID),
        .S_AXI_bid(DDR_1_S_AXI_1_BID),
        .S_AXI_bready(DDR_1_S_AXI_1_BREADY),
        .S_AXI_bresp(DDR_1_S_AXI_1_BRESP),
        .S_AXI_bvalid(DDR_1_S_AXI_1_BVALID),
        .S_AXI_rdata(DDR_1_S_AXI_1_RDATA),
        .S_AXI_rid(DDR_1_S_AXI_1_RID),
        .S_AXI_rlast(DDR_1_S_AXI_1_RLAST),
        .S_AXI_rready(DDR_1_S_AXI_1_RREADY),
        .S_AXI_rresp(DDR_1_S_AXI_1_RRESP),
        .S_AXI_rvalid(DDR_1_S_AXI_1_RVALID),
        .S_AXI_wdata(DDR_1_S_AXI_1_WDATA),
        .S_AXI_wlast(DDR_1_S_AXI_1_WLAST),
        .S_AXI_wready(DDR_1_S_AXI_1_WREADY),
        .S_AXI_wstrb(DDR_1_S_AXI_1_WSTRB),
        .S_AXI_wuser(DDR_1_S_AXI_1_WUSER),
        .S_AXI_wvalid(DDR_1_S_AXI_1_WVALID),
        .peripheral_aresetn(DDR_1_peripheral_aresetn),
        .rst(DDR_rst_1),
        .sys_rst(sys_rst_NOT_Res),
        .ui_clk(DDR_1_ui_clk));
  matmul_design_sys_rst_NOT_0 sys_rst_NOT
       (.Op1(DDR_rst_1),
        .Res(sys_rst_NOT_Res));
endmodule

module s00_couplers_imp_13JNQ0A
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [63:0]s00_couplers_to_s00_couplers_TDATA;
  wire [0:0]s00_couplers_to_s00_couplers_TDEST;
  wire [0:0]s00_couplers_to_s00_couplers_TID;
  wire s00_couplers_to_s00_couplers_TLAST;
  wire s00_couplers_to_s00_couplers_TREADY;
  wire s00_couplers_to_s00_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = s00_couplers_to_s00_couplers_TDATA;
  assign M_AXIS_tdest[0] = s00_couplers_to_s00_couplers_TDEST;
  assign M_AXIS_tid[0] = s00_couplers_to_s00_couplers_TID;
  assign M_AXIS_tlast = s00_couplers_to_s00_couplers_TLAST;
  assign M_AXIS_tvalid = s00_couplers_to_s00_couplers_TVALID;
  assign S_AXIS_tready = s00_couplers_to_s00_couplers_TREADY;
  assign s00_couplers_to_s00_couplers_TDATA = S_AXIS_tdata[63:0];
  assign s00_couplers_to_s00_couplers_TDEST = S_AXIS_tdest[0];
  assign s00_couplers_to_s00_couplers_TID = S_AXIS_tid[0];
  assign s00_couplers_to_s00_couplers_TLAST = S_AXIS_tlast;
  assign s00_couplers_to_s00_couplers_TREADY = M_AXIS_tready;
  assign s00_couplers_to_s00_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s00_couplers_imp_14HO664
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [31:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [31:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [6:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [6:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output [63:0]M_AXI_wuser;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [31:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [31:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input [63:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s00_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_ARCACHE;
  wire [3:0]auto_cc_to_s00_data_fifo_ARID;
  wire [7:0]auto_cc_to_s00_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_ARQOS;
  wire auto_cc_to_s00_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_ARSIZE;
  wire [31:0]auto_cc_to_s00_data_fifo_ARUSER;
  wire auto_cc_to_s00_data_fifo_ARVALID;
  wire [63:0]auto_cc_to_s00_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_AWCACHE;
  wire [3:0]auto_cc_to_s00_data_fifo_AWID;
  wire [7:0]auto_cc_to_s00_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_AWQOS;
  wire auto_cc_to_s00_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_AWSIZE;
  wire [31:0]auto_cc_to_s00_data_fifo_AWUSER;
  wire auto_cc_to_s00_data_fifo_AWVALID;
  wire [3:0]auto_cc_to_s00_data_fifo_BID;
  wire auto_cc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_BRESP;
  wire auto_cc_to_s00_data_fifo_BVALID;
  wire [511:0]auto_cc_to_s00_data_fifo_RDATA;
  wire [3:0]auto_cc_to_s00_data_fifo_RID;
  wire auto_cc_to_s00_data_fifo_RLAST;
  wire auto_cc_to_s00_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_RRESP;
  wire auto_cc_to_s00_data_fifo_RVALID;
  wire [511:0]auto_cc_to_s00_data_fifo_WDATA;
  wire auto_cc_to_s00_data_fifo_WLAST;
  wire auto_cc_to_s00_data_fifo_WREADY;
  wire [63:0]auto_cc_to_s00_data_fifo_WSTRB;
  wire [63:0]auto_cc_to_s00_data_fifo_WUSER;
  wire auto_cc_to_s00_data_fifo_WVALID;
  wire [63:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [3:0]s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire [31:0]s00_couplers_to_auto_cc_ARUSER;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [63:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [3:0]s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire [31:0]s00_couplers_to_auto_cc_AWUSER;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [3:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [511:0]s00_couplers_to_auto_cc_RDATA;
  wire [3:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [511:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [63:0]s00_couplers_to_auto_cc_WSTRB;
  wire [63:0]s00_couplers_to_auto_cc_WUSER;
  wire s00_couplers_to_auto_cc_WVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARUSER;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWUSER;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [6:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [6:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [63:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire [63:0]s00_data_fifo_to_s00_couplers_WUSER;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[31:0] = s00_data_fifo_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[31:0] = s00_data_fifo_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wuser[63:0] = s00_data_fifo_to_s00_couplers_WUSER;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[3:0] = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[3:0] = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid[3:0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARUSER = S_AXI_aruser[31:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid[3:0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWUSER = S_AXI_awuser[31:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_auto_cc_WUSER = S_AXI_wuser[63:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[6:0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[6:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  matmul_design_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .m_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .m_axi_aruser(auto_cc_to_s00_data_fifo_ARUSER),
        .m_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .m_axi_awuser(auto_cc_to_s00_data_fifo_AWUSER),
        .m_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .m_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .m_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .m_axi_wuser(auto_cc_to_s00_data_fifo_WUSER),
        .m_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wuser(s00_couplers_to_auto_cc_WUSER),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
  matmul_design_s00_data_fifo_6 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_aruser(s00_data_fifo_to_s00_couplers_ARUSER),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awuser(s00_data_fifo_to_s00_couplers_AWUSER),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID[3:0]),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID[3:0]),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wuser(s00_data_fifo_to_s00_couplers_WUSER),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .s_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .s_axi_aruser(auto_cc_to_s00_data_fifo_ARUSER),
        .s_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .s_axi_awuser(auto_cc_to_s00_data_fifo_AWUSER),
        .s_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .s_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .s_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .s_axi_wuser(auto_cc_to_s00_data_fifo_WUSER),
        .s_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_1DGJWMR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1IG63BD
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [1:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [63:0]s00_couplers_to_s00_couplers_TDATA;
  wire [1:0]s00_couplers_to_s00_couplers_TDEST;
  wire [0:0]s00_couplers_to_s00_couplers_TID;
  wire s00_couplers_to_s00_couplers_TLAST;
  wire s00_couplers_to_s00_couplers_TREADY;
  wire s00_couplers_to_s00_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = s00_couplers_to_s00_couplers_TDATA;
  assign M_AXIS_tdest[1:0] = s00_couplers_to_s00_couplers_TDEST;
  assign M_AXIS_tid[0] = s00_couplers_to_s00_couplers_TID;
  assign M_AXIS_tlast = s00_couplers_to_s00_couplers_TLAST;
  assign M_AXIS_tvalid = s00_couplers_to_s00_couplers_TVALID;
  assign S_AXIS_tready = s00_couplers_to_s00_couplers_TREADY;
  assign s00_couplers_to_s00_couplers_TDATA = S_AXIS_tdata[63:0];
  assign s00_couplers_to_s00_couplers_TDEST = S_AXIS_tdest[1:0];
  assign s00_couplers_to_s00_couplers_TID = S_AXIS_tid[0];
  assign s00_couplers_to_s00_couplers_TLAST = S_AXIS_tlast;
  assign s00_couplers_to_s00_couplers_TREADY = M_AXIS_tready;
  assign s00_couplers_to_s00_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s00_couplers_imp_2N0GAE
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [63:0]s00_couplers_to_s00_couplers_TDATA;
  wire [0:0]s00_couplers_to_s00_couplers_TDEST;
  wire [0:0]s00_couplers_to_s00_couplers_TID;
  wire s00_couplers_to_s00_couplers_TLAST;
  wire s00_couplers_to_s00_couplers_TREADY;
  wire s00_couplers_to_s00_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = s00_couplers_to_s00_couplers_TDATA;
  assign M_AXIS_tdest[0] = s00_couplers_to_s00_couplers_TDEST;
  assign M_AXIS_tid[0] = s00_couplers_to_s00_couplers_TID;
  assign M_AXIS_tlast = s00_couplers_to_s00_couplers_TLAST;
  assign M_AXIS_tvalid = s00_couplers_to_s00_couplers_TVALID;
  assign S_AXIS_tready = s00_couplers_to_s00_couplers_TREADY;
  assign s00_couplers_to_s00_couplers_TDATA = S_AXIS_tdata[63:0];
  assign s00_couplers_to_s00_couplers_TDEST = S_AXIS_tdest[0];
  assign s00_couplers_to_s00_couplers_TID = S_AXIS_tid[0];
  assign s00_couplers_to_s00_couplers_TLAST = S_AXIS_tlast;
  assign s00_couplers_to_s00_couplers_TREADY = M_AXIS_tready;
  assign s00_couplers_to_s00_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s00_couplers_imp_9UYHX0
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [1:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [0:0]S_AXIS_tvalid;

  wire [63:0]s00_couplers_to_s00_couplers_TDATA;
  wire [1:0]s00_couplers_to_s00_couplers_TDEST;
  wire [0:0]s00_couplers_to_s00_couplers_TID;
  wire [0:0]s00_couplers_to_s00_couplers_TLAST;
  wire [0:0]s00_couplers_to_s00_couplers_TREADY;
  wire [0:0]s00_couplers_to_s00_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = s00_couplers_to_s00_couplers_TDATA;
  assign M_AXIS_tdest[1:0] = s00_couplers_to_s00_couplers_TDEST;
  assign M_AXIS_tid[0] = s00_couplers_to_s00_couplers_TID;
  assign M_AXIS_tlast[0] = s00_couplers_to_s00_couplers_TLAST;
  assign M_AXIS_tvalid[0] = s00_couplers_to_s00_couplers_TVALID;
  assign S_AXIS_tready[0] = s00_couplers_to_s00_couplers_TREADY;
  assign s00_couplers_to_s00_couplers_TDATA = S_AXIS_tdata[63:0];
  assign s00_couplers_to_s00_couplers_TDEST = S_AXIS_tdest[1:0];
  assign s00_couplers_to_s00_couplers_TID = S_AXIS_tid[0];
  assign s00_couplers_to_s00_couplers_TLAST = S_AXIS_tlast[0];
  assign s00_couplers_to_s00_couplers_TREADY = M_AXIS_tready[0];
  assign s00_couplers_to_s00_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module s00_couplers_imp_O6J51C
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_cc_ARADDR;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [31:0]s00_couplers_to_auto_cc_AWADDR;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [31:0]s00_couplers_to_auto_cc_RDATA;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [31:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [3:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  matmul_design_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_RYJBH2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_AWADDR;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWPROT;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_data_fifo_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  matmul_design_s00_data_fifo_7 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_data_fifo_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_data_fifo_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_data_fifo_WDATA),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s01_couplers_imp_14RR7VM
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [63:0]s01_couplers_to_s01_couplers_TDATA;
  wire [0:0]s01_couplers_to_s01_couplers_TDEST;
  wire [0:0]s01_couplers_to_s01_couplers_TID;
  wire s01_couplers_to_s01_couplers_TLAST;
  wire s01_couplers_to_s01_couplers_TREADY;
  wire s01_couplers_to_s01_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = s01_couplers_to_s01_couplers_TDATA;
  assign M_AXIS_tdest[0] = s01_couplers_to_s01_couplers_TDEST;
  assign M_AXIS_tid[0] = s01_couplers_to_s01_couplers_TID;
  assign M_AXIS_tlast = s01_couplers_to_s01_couplers_TLAST;
  assign M_AXIS_tvalid = s01_couplers_to_s01_couplers_TVALID;
  assign S_AXIS_tready = s01_couplers_to_s01_couplers_TREADY;
  assign s01_couplers_to_s01_couplers_TDATA = S_AXIS_tdata[63:0];
  assign s01_couplers_to_s01_couplers_TDEST = S_AXIS_tdest[0];
  assign s01_couplers_to_s01_couplers_TID = S_AXIS_tid[0];
  assign s01_couplers_to_s01_couplers_TLAST = S_AXIS_tlast;
  assign s01_couplers_to_s01_couplers_TREADY = M_AXIS_tready;
  assign s01_couplers_to_s01_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s01_couplers_imp_1FBPNTS
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [1:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [63:0]s01_couplers_to_s01_couplers_TDATA;
  wire [1:0]s01_couplers_to_s01_couplers_TDEST;
  wire [0:0]s01_couplers_to_s01_couplers_TID;
  wire s01_couplers_to_s01_couplers_TLAST;
  wire s01_couplers_to_s01_couplers_TREADY;
  wire s01_couplers_to_s01_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = s01_couplers_to_s01_couplers_TDATA;
  assign M_AXIS_tdest[1:0] = s01_couplers_to_s01_couplers_TDEST;
  assign M_AXIS_tid[0] = s01_couplers_to_s01_couplers_TID;
  assign M_AXIS_tlast = s01_couplers_to_s01_couplers_TLAST;
  assign M_AXIS_tvalid = s01_couplers_to_s01_couplers_TVALID;
  assign S_AXIS_tready = s01_couplers_to_s01_couplers_TREADY;
  assign s01_couplers_to_s01_couplers_TDATA = S_AXIS_tdata[63:0];
  assign s01_couplers_to_s01_couplers_TDEST = S_AXIS_tdest[1:0];
  assign s01_couplers_to_s01_couplers_TID = S_AXIS_tid[0];
  assign s01_couplers_to_s01_couplers_TLAST = S_AXIS_tlast;
  assign s01_couplers_to_s01_couplers_TREADY = M_AXIS_tready;
  assign s01_couplers_to_s01_couplers_TVALID = S_AXIS_tvalid;
endmodule

module s01_couplers_imp_2Y12I0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s01_couplers_ARQOS;
  wire auto_us_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s01_couplers_ARSIZE;
  wire auto_us_df_to_s01_couplers_ARVALID;
  wire [511:0]auto_us_df_to_s01_couplers_RDATA;
  wire auto_us_df_to_s01_couplers_RLAST;
  wire auto_us_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_df_to_s01_couplers_RRESP;
  wire auto_us_df_to_s01_couplers_RVALID;
  wire [63:0]s01_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_df_ARCACHE;
  wire [0:0]s01_couplers_to_auto_us_df_ARID;
  wire [7:0]s01_couplers_to_auto_us_df_ARLEN;
  wire [1:0]s01_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_df_ARQOS;
  wire s01_couplers_to_auto_us_df_ARREADY;
  wire [3:0]s01_couplers_to_auto_us_df_ARREGION;
  wire [2:0]s01_couplers_to_auto_us_df_ARSIZE;
  wire s01_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_df_RDATA;
  wire [0:0]s01_couplers_to_auto_us_df_RID;
  wire s01_couplers_to_auto_us_df_RLAST;
  wire s01_couplers_to_auto_us_df_RREADY;
  wire [1:0]s01_couplers_to_auto_us_df_RRESP;
  wire s01_couplers_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_auto_us_df_RID;
  assign S_AXI_rlast = s01_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_df_RVALID;
  assign auto_us_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_df_ARID = S_AXI_arid[0];
  assign s01_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_df_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  matmul_design_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_couplers_to_auto_us_df_ARID),
        .s_axi_arlen(s01_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_df_ARLOCK[0]),
        .s_axi_arprot(s01_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion(s01_couplers_to_auto_us_df_ARREGION),
        .s_axi_arsize(s01_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_df_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_df_RDATA),
        .s_axi_rid(s01_couplers_to_auto_us_df_RID),
        .s_axi_rlast(s01_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_df_RVALID));
endmodule

module s02_couplers_imp_1RA9ZMN
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [0:0]M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [63:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [0:0]S_AXIS_tvalid;

  wire [63:0]s02_couplers_to_s02_couplers_TDATA;
  wire [0:0]s02_couplers_to_s02_couplers_TDEST;
  wire [0:0]s02_couplers_to_s02_couplers_TID;
  wire [0:0]s02_couplers_to_s02_couplers_TLAST;
  wire [0:0]s02_couplers_to_s02_couplers_TREADY;
  wire [0:0]s02_couplers_to_s02_couplers_TVALID;

  assign M_AXIS_tdata[63:0] = s02_couplers_to_s02_couplers_TDATA;
  assign M_AXIS_tdest[0] = s02_couplers_to_s02_couplers_TDEST;
  assign M_AXIS_tid[0] = s02_couplers_to_s02_couplers_TID;
  assign M_AXIS_tlast[0] = s02_couplers_to_s02_couplers_TLAST;
  assign M_AXIS_tvalid[0] = s02_couplers_to_s02_couplers_TVALID;
  assign S_AXIS_tready[0] = s02_couplers_to_s02_couplers_TREADY;
  assign s02_couplers_to_s02_couplers_TDATA = S_AXIS_tdata[63:0];
  assign s02_couplers_to_s02_couplers_TDEST = S_AXIS_tdest[0];
  assign s02_couplers_to_s02_couplers_TID = S_AXIS_tid[0];
  assign s02_couplers_to_s02_couplers_TLAST = S_AXIS_tlast[0];
  assign s02_couplers_to_s02_couplers_TREADY = M_AXIS_tready[0];
  assign s02_couplers_to_s02_couplers_TVALID = S_AXIS_tvalid[0];
endmodule

module s02_couplers_imp_YJAOK5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s02_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s02_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s02_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s02_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s02_couplers_ARQOS;
  wire auto_us_df_to_s02_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s02_couplers_ARSIZE;
  wire auto_us_df_to_s02_couplers_ARVALID;
  wire [511:0]auto_us_df_to_s02_couplers_RDATA;
  wire auto_us_df_to_s02_couplers_RLAST;
  wire auto_us_df_to_s02_couplers_RREADY;
  wire [1:0]auto_us_df_to_s02_couplers_RRESP;
  wire auto_us_df_to_s02_couplers_RVALID;
  wire [63:0]s02_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s02_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s02_couplers_to_auto_us_df_ARCACHE;
  wire [0:0]s02_couplers_to_auto_us_df_ARID;
  wire [7:0]s02_couplers_to_auto_us_df_ARLEN;
  wire [1:0]s02_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s02_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s02_couplers_to_auto_us_df_ARQOS;
  wire s02_couplers_to_auto_us_df_ARREADY;
  wire [3:0]s02_couplers_to_auto_us_df_ARREGION;
  wire [2:0]s02_couplers_to_auto_us_df_ARSIZE;
  wire s02_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s02_couplers_to_auto_us_df_RDATA;
  wire [0:0]s02_couplers_to_auto_us_df_RID;
  wire s02_couplers_to_auto_us_df_RLAST;
  wire s02_couplers_to_auto_us_df_RREADY;
  wire [1:0]s02_couplers_to_auto_us_df_RRESP;
  wire s02_couplers_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s02_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s02_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_rdata[31:0] = s02_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rid[0] = s02_couplers_to_auto_us_df_RID;
  assign S_AXI_rlast = s02_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_auto_us_df_RVALID;
  assign auto_us_df_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s02_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[63:0];
  assign s02_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_auto_us_df_ARID = S_AXI_arid[0];
  assign s02_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock[1:0];
  assign s02_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_auto_us_df_ARREGION = S_AXI_arregion[3:0];
  assign s02_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  matmul_design_auto_us_df_1 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s02_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s02_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s02_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s02_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s02_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s02_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s02_couplers_to_auto_us_df_ARID),
        .s_axi_arlen(s02_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s02_couplers_to_auto_us_df_ARLOCK[0]),
        .s_axi_arprot(s02_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s02_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s02_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion(s02_couplers_to_auto_us_df_ARREGION),
        .s_axi_arsize(s02_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_auto_us_df_ARVALID),
        .s_axi_rdata(s02_couplers_to_auto_us_df_RDATA),
        .s_axi_rid(s02_couplers_to_auto_us_df_RID),
        .s_axi_rlast(s02_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s02_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s02_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s02_couplers_to_auto_us_df_RVALID));
endmodule

module s03_couplers_imp_1S3UPDT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s03_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s03_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s03_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s03_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s03_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s03_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s03_couplers_ARQOS;
  wire auto_us_df_to_s03_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s03_couplers_ARSIZE;
  wire auto_us_df_to_s03_couplers_ARVALID;
  wire [511:0]auto_us_df_to_s03_couplers_RDATA;
  wire auto_us_df_to_s03_couplers_RLAST;
  wire auto_us_df_to_s03_couplers_RREADY;
  wire [1:0]auto_us_df_to_s03_couplers_RRESP;
  wire auto_us_df_to_s03_couplers_RVALID;
  wire [63:0]s03_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s03_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s03_couplers_to_auto_us_df_ARCACHE;
  wire [0:0]s03_couplers_to_auto_us_df_ARID;
  wire [7:0]s03_couplers_to_auto_us_df_ARLEN;
  wire [1:0]s03_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s03_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s03_couplers_to_auto_us_df_ARQOS;
  wire s03_couplers_to_auto_us_df_ARREADY;
  wire [3:0]s03_couplers_to_auto_us_df_ARREGION;
  wire [2:0]s03_couplers_to_auto_us_df_ARSIZE;
  wire s03_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s03_couplers_to_auto_us_df_RDATA;
  wire [0:0]s03_couplers_to_auto_us_df_RID;
  wire s03_couplers_to_auto_us_df_RLAST;
  wire s03_couplers_to_auto_us_df_RREADY;
  wire [1:0]s03_couplers_to_auto_us_df_RRESP;
  wire s03_couplers_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s03_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s03_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s03_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_rdata[31:0] = s03_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rid[0] = s03_couplers_to_auto_us_df_RID;
  assign S_AXI_rlast = s03_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_auto_us_df_RVALID;
  assign auto_us_df_to_s03_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s03_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s03_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign s03_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[63:0];
  assign s03_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_auto_us_df_ARID = S_AXI_arid[0];
  assign s03_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock[1:0];
  assign s03_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s03_couplers_to_auto_us_df_ARREGION = S_AXI_arregion[3:0];
  assign s03_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  matmul_design_auto_us_df_2 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s03_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s03_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s03_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s03_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s03_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s03_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s03_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s03_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s03_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s03_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s03_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s03_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s03_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s03_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s03_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s03_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s03_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s03_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s03_couplers_to_auto_us_df_ARID),
        .s_axi_arlen(s03_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s03_couplers_to_auto_us_df_ARLOCK[0]),
        .s_axi_arprot(s03_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s03_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s03_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion(s03_couplers_to_auto_us_df_ARREGION),
        .s_axi_arsize(s03_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s03_couplers_to_auto_us_df_ARVALID),
        .s_axi_rdata(s03_couplers_to_auto_us_df_RDATA),
        .s_axi_rid(s03_couplers_to_auto_us_df_RID),
        .s_axi_rlast(s03_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s03_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s03_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s03_couplers_to_auto_us_df_RVALID));
endmodule

module s04_couplers_imp_14FBDF3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_df_to_s04_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s04_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s04_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s04_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s04_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s04_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s04_couplers_ARQOS;
  wire auto_us_df_to_s04_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s04_couplers_ARSIZE;
  wire auto_us_df_to_s04_couplers_ARVALID;
  wire [63:0]auto_us_df_to_s04_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s04_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s04_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s04_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s04_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s04_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s04_couplers_AWQOS;
  wire auto_us_df_to_s04_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s04_couplers_AWSIZE;
  wire auto_us_df_to_s04_couplers_AWVALID;
  wire auto_us_df_to_s04_couplers_BREADY;
  wire [1:0]auto_us_df_to_s04_couplers_BRESP;
  wire auto_us_df_to_s04_couplers_BVALID;
  wire [511:0]auto_us_df_to_s04_couplers_RDATA;
  wire auto_us_df_to_s04_couplers_RLAST;
  wire auto_us_df_to_s04_couplers_RREADY;
  wire [1:0]auto_us_df_to_s04_couplers_RRESP;
  wire auto_us_df_to_s04_couplers_RVALID;
  wire [511:0]auto_us_df_to_s04_couplers_WDATA;
  wire auto_us_df_to_s04_couplers_WLAST;
  wire auto_us_df_to_s04_couplers_WREADY;
  wire [63:0]auto_us_df_to_s04_couplers_WSTRB;
  wire auto_us_df_to_s04_couplers_WVALID;
  wire [63:0]s04_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s04_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s04_couplers_to_auto_us_df_ARCACHE;
  wire [0:0]s04_couplers_to_auto_us_df_ARID;
  wire [7:0]s04_couplers_to_auto_us_df_ARLEN;
  wire [1:0]s04_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s04_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s04_couplers_to_auto_us_df_ARQOS;
  wire s04_couplers_to_auto_us_df_ARREADY;
  wire [3:0]s04_couplers_to_auto_us_df_ARREGION;
  wire [2:0]s04_couplers_to_auto_us_df_ARSIZE;
  wire s04_couplers_to_auto_us_df_ARVALID;
  wire [63:0]s04_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s04_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s04_couplers_to_auto_us_df_AWCACHE;
  wire [0:0]s04_couplers_to_auto_us_df_AWID;
  wire [7:0]s04_couplers_to_auto_us_df_AWLEN;
  wire [1:0]s04_couplers_to_auto_us_df_AWLOCK;
  wire [2:0]s04_couplers_to_auto_us_df_AWPROT;
  wire [3:0]s04_couplers_to_auto_us_df_AWQOS;
  wire s04_couplers_to_auto_us_df_AWREADY;
  wire [3:0]s04_couplers_to_auto_us_df_AWREGION;
  wire [2:0]s04_couplers_to_auto_us_df_AWSIZE;
  wire s04_couplers_to_auto_us_df_AWVALID;
  wire [0:0]s04_couplers_to_auto_us_df_BID;
  wire s04_couplers_to_auto_us_df_BREADY;
  wire [1:0]s04_couplers_to_auto_us_df_BRESP;
  wire s04_couplers_to_auto_us_df_BVALID;
  wire [127:0]s04_couplers_to_auto_us_df_RDATA;
  wire [0:0]s04_couplers_to_auto_us_df_RID;
  wire s04_couplers_to_auto_us_df_RLAST;
  wire s04_couplers_to_auto_us_df_RREADY;
  wire [1:0]s04_couplers_to_auto_us_df_RRESP;
  wire s04_couplers_to_auto_us_df_RVALID;
  wire [127:0]s04_couplers_to_auto_us_df_WDATA;
  wire s04_couplers_to_auto_us_df_WLAST;
  wire s04_couplers_to_auto_us_df_WREADY;
  wire [15:0]s04_couplers_to_auto_us_df_WSTRB;
  wire s04_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_df_to_s04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s04_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s04_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s04_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s04_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s04_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_us_df_to_s04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s04_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s04_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s04_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s04_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s04_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s04_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s04_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s04_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_df_to_s04_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s04_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_df_to_s04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s04_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_awready = s04_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bid[0] = s04_couplers_to_auto_us_df_BID;
  assign S_AXI_bresp[1:0] = s04_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s04_couplers_to_auto_us_df_BVALID;
  assign S_AXI_rdata[127:0] = s04_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rid[0] = s04_couplers_to_auto_us_df_RID;
  assign S_AXI_rlast = s04_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s04_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s04_couplers_to_auto_us_df_RVALID;
  assign S_AXI_wready = s04_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s04_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s04_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s04_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s04_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s04_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s04_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s04_couplers_WREADY = M_AXI_wready;
  assign s04_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[63:0];
  assign s04_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s04_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s04_couplers_to_auto_us_df_ARID = S_AXI_arid[0];
  assign s04_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s04_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock[1:0];
  assign s04_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s04_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s04_couplers_to_auto_us_df_ARREGION = S_AXI_arregion[3:0];
  assign s04_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s04_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s04_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[63:0];
  assign s04_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s04_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s04_couplers_to_auto_us_df_AWID = S_AXI_awid[0];
  assign s04_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s04_couplers_to_auto_us_df_AWLOCK = S_AXI_awlock[1:0];
  assign s04_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s04_couplers_to_auto_us_df_AWQOS = S_AXI_awqos[3:0];
  assign s04_couplers_to_auto_us_df_AWREGION = S_AXI_awregion[3:0];
  assign s04_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s04_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s04_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s04_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  assign s04_couplers_to_auto_us_df_WDATA = S_AXI_wdata[127:0];
  assign s04_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s04_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[15:0];
  assign s04_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  matmul_design_auto_us_df_3 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s04_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s04_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s04_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s04_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s04_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s04_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s04_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s04_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s04_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s04_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s04_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s04_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s04_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s04_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s04_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s04_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s04_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s04_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s04_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s04_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s04_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s04_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s04_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s04_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s04_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s04_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s04_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s04_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s04_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s04_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s04_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s04_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s04_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s04_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s04_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s04_couplers_to_auto_us_df_ARID),
        .s_axi_arlen(s04_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s04_couplers_to_auto_us_df_ARLOCK[0]),
        .s_axi_arprot(s04_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s04_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s04_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion(s04_couplers_to_auto_us_df_ARREGION),
        .s_axi_arsize(s04_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s04_couplers_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s04_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s04_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s04_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awid(s04_couplers_to_auto_us_df_AWID),
        .s_axi_awlen(s04_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(s04_couplers_to_auto_us_df_AWLOCK[0]),
        .s_axi_awprot(s04_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos(s04_couplers_to_auto_us_df_AWQOS),
        .s_axi_awready(s04_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion(s04_couplers_to_auto_us_df_AWREGION),
        .s_axi_awsize(s04_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s04_couplers_to_auto_us_df_AWVALID),
        .s_axi_bid(s04_couplers_to_auto_us_df_BID),
        .s_axi_bready(s04_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s04_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s04_couplers_to_auto_us_df_BVALID),
        .s_axi_rdata(s04_couplers_to_auto_us_df_RDATA),
        .s_axi_rid(s04_couplers_to_auto_us_df_RID),
        .s_axi_rlast(s04_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s04_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s04_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s04_couplers_to_auto_us_df_RVALID),
        .s_axi_wdata(s04_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s04_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s04_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s04_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s04_couplers_to_auto_us_df_WVALID));
endmodule

module system_reset_imp_1AZT7C7
   (clk_app,
    clk_app_managed_rstn,
    clk_app_rstn,
    clk_gen_locked,
    managed_reset,
    pcie_perstn);
  input clk_app;
  output [0:0]clk_app_managed_rstn;
  output [0:0]clk_app_rstn;
  input clk_gen_locked;
  input managed_reset;
  input pcie_perstn;

  wire clk_app_1;
  wire clk_gen_locked_1;
  wire managed_reset_1;
  wire [0:0]managed_reset_AND_Res;
  wire pcie_perstn_1;
  wire [0:0]proc_sys_reset_clk_app_managed_peripheral_aresetn;
  wire [0:0]proc_sys_reset_clk_app_peripheral_aresetn;

  assign clk_app_1 = clk_app;
  assign clk_app_managed_rstn[0] = proc_sys_reset_clk_app_managed_peripheral_aresetn;
  assign clk_app_rstn[0] = proc_sys_reset_clk_app_peripheral_aresetn;
  assign clk_gen_locked_1 = clk_gen_locked;
  assign managed_reset_1 = managed_reset;
  assign pcie_perstn_1 = pcie_perstn;
  matmul_design_managed_reset_AND_0 managed_reset_AND
       (.Op1(managed_reset_1),
        .Op2(proc_sys_reset_clk_app_peripheral_aresetn),
        .Res(managed_reset_AND_Res));
  matmul_design_proc_sys_reset_clk_app_0 proc_sys_reset_clk_app
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_gen_locked_1),
        .ext_reset_in(pcie_perstn_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_clk_app_peripheral_aresetn),
        .slowest_sync_clk(clk_app_1));
  matmul_design_proc_sys_reset_clk_app_managed_0 proc_sys_reset_clk_app_managed
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_gen_locked_1),
        .ext_reset_in(managed_reset_AND_Res),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_clk_app_managed_peripheral_aresetn),
        .slowest_sync_clk(clk_app_1));
endmodule
