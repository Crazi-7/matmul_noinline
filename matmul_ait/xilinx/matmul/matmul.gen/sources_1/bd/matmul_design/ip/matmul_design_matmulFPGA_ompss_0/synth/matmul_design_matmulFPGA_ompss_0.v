// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: bsc:ompss:matmulFPGA_wrapper:1.0
// IP Revision: 2114848399

(* X_CORE_INFO = "matmulFPGA_wrapper,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "matmul_design_matmulFPGA_ompss_0,matmulFPGA_wrapper,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module matmul_design_matmulFPGA_ompss_0 (
  ap_clk,
  ap_rst_n,
  mcxx_inPort_TVALID,
  mcxx_inPort_TREADY,
  mcxx_inPort_TDATA,
  mcxx_outPort_TVALID,
  mcxx_outPort_TREADY,
  mcxx_outPort_TDATA,
  mcxx_outPort_TDEST,
  mcxx_outPort_TKEEP,
  mcxx_outPort_TSTRB,
  mcxx_outPort_TUSER,
  mcxx_outPort_TLAST,
  mcxx_outPort_TID,
  mcxx_spawnInPort_TVALID,
  mcxx_spawnInPort_TREADY,
  mcxx_spawnInPort_TDATA,
  m_axi_mcxx_a_AWID,
  m_axi_mcxx_a_AWADDR,
  m_axi_mcxx_a_AWLEN,
  m_axi_mcxx_a_AWSIZE,
  m_axi_mcxx_a_AWBURST,
  m_axi_mcxx_a_AWLOCK,
  m_axi_mcxx_a_AWREGION,
  m_axi_mcxx_a_AWCACHE,
  m_axi_mcxx_a_AWPROT,
  m_axi_mcxx_a_AWQOS,
  m_axi_mcxx_a_AWVALID,
  m_axi_mcxx_a_AWREADY,
  m_axi_mcxx_a_WID,
  m_axi_mcxx_a_WDATA,
  m_axi_mcxx_a_WSTRB,
  m_axi_mcxx_a_WLAST,
  m_axi_mcxx_a_WVALID,
  m_axi_mcxx_a_WREADY,
  m_axi_mcxx_a_BID,
  m_axi_mcxx_a_BRESP,
  m_axi_mcxx_a_BVALID,
  m_axi_mcxx_a_BREADY,
  m_axi_mcxx_a_ARID,
  m_axi_mcxx_a_ARADDR,
  m_axi_mcxx_a_ARLEN,
  m_axi_mcxx_a_ARSIZE,
  m_axi_mcxx_a_ARBURST,
  m_axi_mcxx_a_ARLOCK,
  m_axi_mcxx_a_ARREGION,
  m_axi_mcxx_a_ARCACHE,
  m_axi_mcxx_a_ARPROT,
  m_axi_mcxx_a_ARQOS,
  m_axi_mcxx_a_ARVALID,
  m_axi_mcxx_a_ARREADY,
  m_axi_mcxx_a_RID,
  m_axi_mcxx_a_RDATA,
  m_axi_mcxx_a_RRESP,
  m_axi_mcxx_a_RLAST,
  m_axi_mcxx_a_RVALID,
  m_axi_mcxx_a_RREADY,
  m_axi_mcxx_b_AWID,
  m_axi_mcxx_b_AWADDR,
  m_axi_mcxx_b_AWLEN,
  m_axi_mcxx_b_AWSIZE,
  m_axi_mcxx_b_AWBURST,
  m_axi_mcxx_b_AWLOCK,
  m_axi_mcxx_b_AWREGION,
  m_axi_mcxx_b_AWCACHE,
  m_axi_mcxx_b_AWPROT,
  m_axi_mcxx_b_AWQOS,
  m_axi_mcxx_b_AWVALID,
  m_axi_mcxx_b_AWREADY,
  m_axi_mcxx_b_WID,
  m_axi_mcxx_b_WDATA,
  m_axi_mcxx_b_WSTRB,
  m_axi_mcxx_b_WLAST,
  m_axi_mcxx_b_WVALID,
  m_axi_mcxx_b_WREADY,
  m_axi_mcxx_b_BID,
  m_axi_mcxx_b_BRESP,
  m_axi_mcxx_b_BVALID,
  m_axi_mcxx_b_BREADY,
  m_axi_mcxx_b_ARID,
  m_axi_mcxx_b_ARADDR,
  m_axi_mcxx_b_ARLEN,
  m_axi_mcxx_b_ARSIZE,
  m_axi_mcxx_b_ARBURST,
  m_axi_mcxx_b_ARLOCK,
  m_axi_mcxx_b_ARREGION,
  m_axi_mcxx_b_ARCACHE,
  m_axi_mcxx_b_ARPROT,
  m_axi_mcxx_b_ARQOS,
  m_axi_mcxx_b_ARVALID,
  m_axi_mcxx_b_ARREADY,
  m_axi_mcxx_b_RID,
  m_axi_mcxx_b_RDATA,
  m_axi_mcxx_b_RRESP,
  m_axi_mcxx_b_RLAST,
  m_axi_mcxx_b_RVALID,
  m_axi_mcxx_b_RREADY,
  m_axi_mcxx_c_AWID,
  m_axi_mcxx_c_AWADDR,
  m_axi_mcxx_c_AWLEN,
  m_axi_mcxx_c_AWSIZE,
  m_axi_mcxx_c_AWBURST,
  m_axi_mcxx_c_AWLOCK,
  m_axi_mcxx_c_AWREGION,
  m_axi_mcxx_c_AWCACHE,
  m_axi_mcxx_c_AWPROT,
  m_axi_mcxx_c_AWQOS,
  m_axi_mcxx_c_AWVALID,
  m_axi_mcxx_c_AWREADY,
  m_axi_mcxx_c_WID,
  m_axi_mcxx_c_WDATA,
  m_axi_mcxx_c_WSTRB,
  m_axi_mcxx_c_WLAST,
  m_axi_mcxx_c_WVALID,
  m_axi_mcxx_c_WREADY,
  m_axi_mcxx_c_BID,
  m_axi_mcxx_c_BRESP,
  m_axi_mcxx_c_BVALID,
  m_axi_mcxx_c_BREADY,
  m_axi_mcxx_c_ARID,
  m_axi_mcxx_c_ARADDR,
  m_axi_mcxx_c_ARLEN,
  m_axi_mcxx_c_ARSIZE,
  m_axi_mcxx_c_ARBURST,
  m_axi_mcxx_c_ARLOCK,
  m_axi_mcxx_c_ARREGION,
  m_axi_mcxx_c_ARCACHE,
  m_axi_mcxx_c_ARPROT,
  m_axi_mcxx_c_ARQOS,
  m_axi_mcxx_c_ARVALID,
  m_axi_mcxx_c_ARREADY,
  m_axi_mcxx_c_RID,
  m_axi_mcxx_c_RDATA,
  m_axi_mcxx_c_RRESP,
  m_axi_mcxx_c_RLAST,
  m_axi_mcxx_c_RVALID,
  m_axi_mcxx_c_RREADY
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF mcxx_inPort:mcxx_outPort:mcxx_spawnInPort:m_axi_mcxx_a:m_axi_mcxx_b:m_axi_mcxx_c, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_inPort TVALID" *)
input wire mcxx_inPort_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_inPort TREADY" *)
output wire mcxx_inPort_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mcxx_inPort, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_inPort TDATA" *)
input wire [63 : 0] mcxx_inPort_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TVALID" *)
output wire mcxx_outPort_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TREADY" *)
input wire mcxx_outPort_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TDATA" *)
output wire [63 : 0] mcxx_outPort_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TDEST" *)
output wire [1 : 0] mcxx_outPort_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TKEEP" *)
output wire [7 : 0] mcxx_outPort_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TSTRB" *)
output wire [7 : 0] mcxx_outPort_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TUSER" *)
output wire [0 : 0] mcxx_outPort_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TLAST" *)
output wire [0 : 0] mcxx_outPort_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mcxx_outPort, TDATA_NUM_BYTES 8, TDEST_WIDTH 2, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_outPort TID" *)
output wire [0 : 0] mcxx_outPort_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_spawnInPort TVALID" *)
input wire mcxx_spawnInPort_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_spawnInPort TREADY" *)
output wire mcxx_spawnInPort_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mcxx_spawnInPort, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mcxx_spawnInPort TDATA" *)
input wire [7 : 0] mcxx_spawnInPort_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWID" *)
output wire [0 : 0] m_axi_mcxx_a_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWADDR" *)
output wire [63 : 0] m_axi_mcxx_a_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWLEN" *)
output wire [7 : 0] m_axi_mcxx_a_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWSIZE" *)
output wire [2 : 0] m_axi_mcxx_a_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWBURST" *)
output wire [1 : 0] m_axi_mcxx_a_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWLOCK" *)
output wire [1 : 0] m_axi_mcxx_a_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWREGION" *)
output wire [3 : 0] m_axi_mcxx_a_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWCACHE" *)
output wire [3 : 0] m_axi_mcxx_a_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWPROT" *)
output wire [2 : 0] m_axi_mcxx_a_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWQOS" *)
output wire [3 : 0] m_axi_mcxx_a_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWVALID" *)
output wire m_axi_mcxx_a_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a AWREADY" *)
input wire m_axi_mcxx_a_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a WID" *)
output wire [0 : 0] m_axi_mcxx_a_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a WDATA" *)
output wire [31 : 0] m_axi_mcxx_a_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a WSTRB" *)
output wire [3 : 0] m_axi_mcxx_a_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a WLAST" *)
output wire m_axi_mcxx_a_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a WVALID" *)
output wire m_axi_mcxx_a_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a WREADY" *)
input wire m_axi_mcxx_a_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a BID" *)
input wire [0 : 0] m_axi_mcxx_a_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a BRESP" *)
input wire [1 : 0] m_axi_mcxx_a_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a BVALID" *)
input wire m_axi_mcxx_a_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a BREADY" *)
output wire m_axi_mcxx_a_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARID" *)
output wire [0 : 0] m_axi_mcxx_a_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARADDR" *)
output wire [63 : 0] m_axi_mcxx_a_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARLEN" *)
output wire [7 : 0] m_axi_mcxx_a_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARSIZE" *)
output wire [2 : 0] m_axi_mcxx_a_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARBURST" *)
output wire [1 : 0] m_axi_mcxx_a_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARLOCK" *)
output wire [1 : 0] m_axi_mcxx_a_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARREGION" *)
output wire [3 : 0] m_axi_mcxx_a_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARCACHE" *)
output wire [3 : 0] m_axi_mcxx_a_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARPROT" *)
output wire [2 : 0] m_axi_mcxx_a_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARQOS" *)
output wire [3 : 0] m_axi_mcxx_a_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARVALID" *)
output wire m_axi_mcxx_a_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a ARREADY" *)
input wire m_axi_mcxx_a_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a RID" *)
input wire [0 : 0] m_axi_mcxx_a_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a RDATA" *)
input wire [31 : 0] m_axi_mcxx_a_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a RRESP" *)
input wire [1 : 0] m_axi_mcxx_a_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a RLAST" *)
input wire m_axi_mcxx_a_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a RVALID" *)
input wire m_axi_mcxx_a_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mcxx_a, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN m\
atmul_design_clock_generator_0_clk_app, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_a RREADY" *)
output wire m_axi_mcxx_a_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWID" *)
output wire [0 : 0] m_axi_mcxx_b_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWADDR" *)
output wire [63 : 0] m_axi_mcxx_b_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWLEN" *)
output wire [7 : 0] m_axi_mcxx_b_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWSIZE" *)
output wire [2 : 0] m_axi_mcxx_b_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWBURST" *)
output wire [1 : 0] m_axi_mcxx_b_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWLOCK" *)
output wire [1 : 0] m_axi_mcxx_b_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWREGION" *)
output wire [3 : 0] m_axi_mcxx_b_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWCACHE" *)
output wire [3 : 0] m_axi_mcxx_b_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWPROT" *)
output wire [2 : 0] m_axi_mcxx_b_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWQOS" *)
output wire [3 : 0] m_axi_mcxx_b_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWVALID" *)
output wire m_axi_mcxx_b_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b AWREADY" *)
input wire m_axi_mcxx_b_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b WID" *)
output wire [0 : 0] m_axi_mcxx_b_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b WDATA" *)
output wire [31 : 0] m_axi_mcxx_b_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b WSTRB" *)
output wire [3 : 0] m_axi_mcxx_b_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b WLAST" *)
output wire m_axi_mcxx_b_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b WVALID" *)
output wire m_axi_mcxx_b_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b WREADY" *)
input wire m_axi_mcxx_b_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b BID" *)
input wire [0 : 0] m_axi_mcxx_b_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b BRESP" *)
input wire [1 : 0] m_axi_mcxx_b_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b BVALID" *)
input wire m_axi_mcxx_b_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b BREADY" *)
output wire m_axi_mcxx_b_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARID" *)
output wire [0 : 0] m_axi_mcxx_b_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARADDR" *)
output wire [63 : 0] m_axi_mcxx_b_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARLEN" *)
output wire [7 : 0] m_axi_mcxx_b_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARSIZE" *)
output wire [2 : 0] m_axi_mcxx_b_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARBURST" *)
output wire [1 : 0] m_axi_mcxx_b_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARLOCK" *)
output wire [1 : 0] m_axi_mcxx_b_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARREGION" *)
output wire [3 : 0] m_axi_mcxx_b_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARCACHE" *)
output wire [3 : 0] m_axi_mcxx_b_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARPROT" *)
output wire [2 : 0] m_axi_mcxx_b_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARQOS" *)
output wire [3 : 0] m_axi_mcxx_b_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARVALID" *)
output wire m_axi_mcxx_b_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b ARREADY" *)
input wire m_axi_mcxx_b_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b RID" *)
input wire [0 : 0] m_axi_mcxx_b_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b RDATA" *)
input wire [31 : 0] m_axi_mcxx_b_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b RRESP" *)
input wire [1 : 0] m_axi_mcxx_b_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b RLAST" *)
input wire m_axi_mcxx_b_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b RVALID" *)
input wire m_axi_mcxx_b_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mcxx_b, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN m\
atmul_design_clock_generator_0_clk_app, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_b RREADY" *)
output wire m_axi_mcxx_b_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWID" *)
output wire [0 : 0] m_axi_mcxx_c_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWADDR" *)
output wire [63 : 0] m_axi_mcxx_c_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWLEN" *)
output wire [7 : 0] m_axi_mcxx_c_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWSIZE" *)
output wire [2 : 0] m_axi_mcxx_c_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWBURST" *)
output wire [1 : 0] m_axi_mcxx_c_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWLOCK" *)
output wire [1 : 0] m_axi_mcxx_c_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWREGION" *)
output wire [3 : 0] m_axi_mcxx_c_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWCACHE" *)
output wire [3 : 0] m_axi_mcxx_c_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWPROT" *)
output wire [2 : 0] m_axi_mcxx_c_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWQOS" *)
output wire [3 : 0] m_axi_mcxx_c_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWVALID" *)
output wire m_axi_mcxx_c_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c AWREADY" *)
input wire m_axi_mcxx_c_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c WID" *)
output wire [0 : 0] m_axi_mcxx_c_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c WDATA" *)
output wire [31 : 0] m_axi_mcxx_c_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c WSTRB" *)
output wire [3 : 0] m_axi_mcxx_c_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c WLAST" *)
output wire m_axi_mcxx_c_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c WVALID" *)
output wire m_axi_mcxx_c_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c WREADY" *)
input wire m_axi_mcxx_c_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c BID" *)
input wire [0 : 0] m_axi_mcxx_c_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c BRESP" *)
input wire [1 : 0] m_axi_mcxx_c_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c BVALID" *)
input wire m_axi_mcxx_c_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c BREADY" *)
output wire m_axi_mcxx_c_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARID" *)
output wire [0 : 0] m_axi_mcxx_c_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARADDR" *)
output wire [63 : 0] m_axi_mcxx_c_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARLEN" *)
output wire [7 : 0] m_axi_mcxx_c_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARSIZE" *)
output wire [2 : 0] m_axi_mcxx_c_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARBURST" *)
output wire [1 : 0] m_axi_mcxx_c_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARLOCK" *)
output wire [1 : 0] m_axi_mcxx_c_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARREGION" *)
output wire [3 : 0] m_axi_mcxx_c_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARCACHE" *)
output wire [3 : 0] m_axi_mcxx_c_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARPROT" *)
output wire [2 : 0] m_axi_mcxx_c_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARQOS" *)
output wire [3 : 0] m_axi_mcxx_c_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARVALID" *)
output wire m_axi_mcxx_c_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c ARREADY" *)
input wire m_axi_mcxx_c_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c RID" *)
input wire [0 : 0] m_axi_mcxx_c_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c RDATA" *)
input wire [31 : 0] m_axi_mcxx_c_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c RRESP" *)
input wire [1 : 0] m_axi_mcxx_c_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c RLAST" *)
input wire m_axi_mcxx_c_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c RVALID" *)
input wire m_axi_mcxx_c_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mcxx_c, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN m\
atmul_design_clock_generator_0_clk_app, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_c RREADY" *)
output wire m_axi_mcxx_c_RREADY;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  matmulFPGA_wrapper #(
    .C_M_AXI_MCXX_A_ID_WIDTH(1),
    .C_M_AXI_MCXX_A_ADDR_WIDTH(64),
    .C_M_AXI_MCXX_A_DATA_WIDTH(32),
    .C_M_AXI_MCXX_A_AWUSER_WIDTH(1),
    .C_M_AXI_MCXX_A_ARUSER_WIDTH(1),
    .C_M_AXI_MCXX_A_WUSER_WIDTH(1),
    .C_M_AXI_MCXX_A_RUSER_WIDTH(1),
    .C_M_AXI_MCXX_A_BUSER_WIDTH(1),
    .C_M_AXI_MCXX_A_USER_VALUE(32'H00000000),
    .C_M_AXI_MCXX_A_PROT_VALUE(3'B000),
    .C_M_AXI_MCXX_A_CACHE_VALUE(4'B0011),
    .C_M_AXI_MCXX_B_ID_WIDTH(1),
    .C_M_AXI_MCXX_B_ADDR_WIDTH(64),
    .C_M_AXI_MCXX_B_DATA_WIDTH(32),
    .C_M_AXI_MCXX_B_AWUSER_WIDTH(1),
    .C_M_AXI_MCXX_B_ARUSER_WIDTH(1),
    .C_M_AXI_MCXX_B_WUSER_WIDTH(1),
    .C_M_AXI_MCXX_B_RUSER_WIDTH(1),
    .C_M_AXI_MCXX_B_BUSER_WIDTH(1),
    .C_M_AXI_MCXX_B_USER_VALUE(32'H00000000),
    .C_M_AXI_MCXX_B_PROT_VALUE(3'B000),
    .C_M_AXI_MCXX_B_CACHE_VALUE(4'B0011),
    .C_M_AXI_MCXX_C_ID_WIDTH(1),
    .C_M_AXI_MCXX_C_ADDR_WIDTH(64),
    .C_M_AXI_MCXX_C_DATA_WIDTH(32),
    .C_M_AXI_MCXX_C_AWUSER_WIDTH(1),
    .C_M_AXI_MCXX_C_ARUSER_WIDTH(1),
    .C_M_AXI_MCXX_C_WUSER_WIDTH(1),
    .C_M_AXI_MCXX_C_RUSER_WIDTH(1),
    .C_M_AXI_MCXX_C_BUSER_WIDTH(1),
    .C_M_AXI_MCXX_C_USER_VALUE(32'H00000000),
    .C_M_AXI_MCXX_C_PROT_VALUE(3'B000),
    .C_M_AXI_MCXX_C_CACHE_VALUE(4'B0011)
  ) inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .mcxx_inPort_TVALID(mcxx_inPort_TVALID),
    .mcxx_inPort_TREADY(mcxx_inPort_TREADY),
    .mcxx_inPort_TDATA(mcxx_inPort_TDATA),
    .mcxx_outPort_TVALID(mcxx_outPort_TVALID),
    .mcxx_outPort_TREADY(mcxx_outPort_TREADY),
    .mcxx_outPort_TDATA(mcxx_outPort_TDATA),
    .mcxx_outPort_TDEST(mcxx_outPort_TDEST),
    .mcxx_outPort_TKEEP(mcxx_outPort_TKEEP),
    .mcxx_outPort_TSTRB(mcxx_outPort_TSTRB),
    .mcxx_outPort_TUSER(mcxx_outPort_TUSER),
    .mcxx_outPort_TLAST(mcxx_outPort_TLAST),
    .mcxx_outPort_TID(mcxx_outPort_TID),
    .mcxx_spawnInPort_TVALID(mcxx_spawnInPort_TVALID),
    .mcxx_spawnInPort_TREADY(mcxx_spawnInPort_TREADY),
    .mcxx_spawnInPort_TDATA(mcxx_spawnInPort_TDATA),
    .m_axi_mcxx_a_AWID(m_axi_mcxx_a_AWID),
    .m_axi_mcxx_a_AWADDR(m_axi_mcxx_a_AWADDR),
    .m_axi_mcxx_a_AWLEN(m_axi_mcxx_a_AWLEN),
    .m_axi_mcxx_a_AWSIZE(m_axi_mcxx_a_AWSIZE),
    .m_axi_mcxx_a_AWBURST(m_axi_mcxx_a_AWBURST),
    .m_axi_mcxx_a_AWLOCK(m_axi_mcxx_a_AWLOCK),
    .m_axi_mcxx_a_AWREGION(m_axi_mcxx_a_AWREGION),
    .m_axi_mcxx_a_AWCACHE(m_axi_mcxx_a_AWCACHE),
    .m_axi_mcxx_a_AWPROT(m_axi_mcxx_a_AWPROT),
    .m_axi_mcxx_a_AWQOS(m_axi_mcxx_a_AWQOS),
    .m_axi_mcxx_a_AWUSER(),
    .m_axi_mcxx_a_AWVALID(m_axi_mcxx_a_AWVALID),
    .m_axi_mcxx_a_AWREADY(m_axi_mcxx_a_AWREADY),
    .m_axi_mcxx_a_WID(m_axi_mcxx_a_WID),
    .m_axi_mcxx_a_WDATA(m_axi_mcxx_a_WDATA),
    .m_axi_mcxx_a_WSTRB(m_axi_mcxx_a_WSTRB),
    .m_axi_mcxx_a_WLAST(m_axi_mcxx_a_WLAST),
    .m_axi_mcxx_a_WUSER(),
    .m_axi_mcxx_a_WVALID(m_axi_mcxx_a_WVALID),
    .m_axi_mcxx_a_WREADY(m_axi_mcxx_a_WREADY),
    .m_axi_mcxx_a_BID(m_axi_mcxx_a_BID),
    .m_axi_mcxx_a_BRESP(m_axi_mcxx_a_BRESP),
    .m_axi_mcxx_a_BUSER(1'B0),
    .m_axi_mcxx_a_BVALID(m_axi_mcxx_a_BVALID),
    .m_axi_mcxx_a_BREADY(m_axi_mcxx_a_BREADY),
    .m_axi_mcxx_a_ARID(m_axi_mcxx_a_ARID),
    .m_axi_mcxx_a_ARADDR(m_axi_mcxx_a_ARADDR),
    .m_axi_mcxx_a_ARLEN(m_axi_mcxx_a_ARLEN),
    .m_axi_mcxx_a_ARSIZE(m_axi_mcxx_a_ARSIZE),
    .m_axi_mcxx_a_ARBURST(m_axi_mcxx_a_ARBURST),
    .m_axi_mcxx_a_ARLOCK(m_axi_mcxx_a_ARLOCK),
    .m_axi_mcxx_a_ARREGION(m_axi_mcxx_a_ARREGION),
    .m_axi_mcxx_a_ARCACHE(m_axi_mcxx_a_ARCACHE),
    .m_axi_mcxx_a_ARPROT(m_axi_mcxx_a_ARPROT),
    .m_axi_mcxx_a_ARQOS(m_axi_mcxx_a_ARQOS),
    .m_axi_mcxx_a_ARUSER(),
    .m_axi_mcxx_a_ARVALID(m_axi_mcxx_a_ARVALID),
    .m_axi_mcxx_a_ARREADY(m_axi_mcxx_a_ARREADY),
    .m_axi_mcxx_a_RID(m_axi_mcxx_a_RID),
    .m_axi_mcxx_a_RDATA(m_axi_mcxx_a_RDATA),
    .m_axi_mcxx_a_RRESP(m_axi_mcxx_a_RRESP),
    .m_axi_mcxx_a_RLAST(m_axi_mcxx_a_RLAST),
    .m_axi_mcxx_a_RUSER(1'B0),
    .m_axi_mcxx_a_RVALID(m_axi_mcxx_a_RVALID),
    .m_axi_mcxx_a_RREADY(m_axi_mcxx_a_RREADY),
    .m_axi_mcxx_b_AWID(m_axi_mcxx_b_AWID),
    .m_axi_mcxx_b_AWADDR(m_axi_mcxx_b_AWADDR),
    .m_axi_mcxx_b_AWLEN(m_axi_mcxx_b_AWLEN),
    .m_axi_mcxx_b_AWSIZE(m_axi_mcxx_b_AWSIZE),
    .m_axi_mcxx_b_AWBURST(m_axi_mcxx_b_AWBURST),
    .m_axi_mcxx_b_AWLOCK(m_axi_mcxx_b_AWLOCK),
    .m_axi_mcxx_b_AWREGION(m_axi_mcxx_b_AWREGION),
    .m_axi_mcxx_b_AWCACHE(m_axi_mcxx_b_AWCACHE),
    .m_axi_mcxx_b_AWPROT(m_axi_mcxx_b_AWPROT),
    .m_axi_mcxx_b_AWQOS(m_axi_mcxx_b_AWQOS),
    .m_axi_mcxx_b_AWUSER(),
    .m_axi_mcxx_b_AWVALID(m_axi_mcxx_b_AWVALID),
    .m_axi_mcxx_b_AWREADY(m_axi_mcxx_b_AWREADY),
    .m_axi_mcxx_b_WID(m_axi_mcxx_b_WID),
    .m_axi_mcxx_b_WDATA(m_axi_mcxx_b_WDATA),
    .m_axi_mcxx_b_WSTRB(m_axi_mcxx_b_WSTRB),
    .m_axi_mcxx_b_WLAST(m_axi_mcxx_b_WLAST),
    .m_axi_mcxx_b_WUSER(),
    .m_axi_mcxx_b_WVALID(m_axi_mcxx_b_WVALID),
    .m_axi_mcxx_b_WREADY(m_axi_mcxx_b_WREADY),
    .m_axi_mcxx_b_BID(m_axi_mcxx_b_BID),
    .m_axi_mcxx_b_BRESP(m_axi_mcxx_b_BRESP),
    .m_axi_mcxx_b_BUSER(1'B0),
    .m_axi_mcxx_b_BVALID(m_axi_mcxx_b_BVALID),
    .m_axi_mcxx_b_BREADY(m_axi_mcxx_b_BREADY),
    .m_axi_mcxx_b_ARID(m_axi_mcxx_b_ARID),
    .m_axi_mcxx_b_ARADDR(m_axi_mcxx_b_ARADDR),
    .m_axi_mcxx_b_ARLEN(m_axi_mcxx_b_ARLEN),
    .m_axi_mcxx_b_ARSIZE(m_axi_mcxx_b_ARSIZE),
    .m_axi_mcxx_b_ARBURST(m_axi_mcxx_b_ARBURST),
    .m_axi_mcxx_b_ARLOCK(m_axi_mcxx_b_ARLOCK),
    .m_axi_mcxx_b_ARREGION(m_axi_mcxx_b_ARREGION),
    .m_axi_mcxx_b_ARCACHE(m_axi_mcxx_b_ARCACHE),
    .m_axi_mcxx_b_ARPROT(m_axi_mcxx_b_ARPROT),
    .m_axi_mcxx_b_ARQOS(m_axi_mcxx_b_ARQOS),
    .m_axi_mcxx_b_ARUSER(),
    .m_axi_mcxx_b_ARVALID(m_axi_mcxx_b_ARVALID),
    .m_axi_mcxx_b_ARREADY(m_axi_mcxx_b_ARREADY),
    .m_axi_mcxx_b_RID(m_axi_mcxx_b_RID),
    .m_axi_mcxx_b_RDATA(m_axi_mcxx_b_RDATA),
    .m_axi_mcxx_b_RRESP(m_axi_mcxx_b_RRESP),
    .m_axi_mcxx_b_RLAST(m_axi_mcxx_b_RLAST),
    .m_axi_mcxx_b_RUSER(1'B0),
    .m_axi_mcxx_b_RVALID(m_axi_mcxx_b_RVALID),
    .m_axi_mcxx_b_RREADY(m_axi_mcxx_b_RREADY),
    .m_axi_mcxx_c_AWID(m_axi_mcxx_c_AWID),
    .m_axi_mcxx_c_AWADDR(m_axi_mcxx_c_AWADDR),
    .m_axi_mcxx_c_AWLEN(m_axi_mcxx_c_AWLEN),
    .m_axi_mcxx_c_AWSIZE(m_axi_mcxx_c_AWSIZE),
    .m_axi_mcxx_c_AWBURST(m_axi_mcxx_c_AWBURST),
    .m_axi_mcxx_c_AWLOCK(m_axi_mcxx_c_AWLOCK),
    .m_axi_mcxx_c_AWREGION(m_axi_mcxx_c_AWREGION),
    .m_axi_mcxx_c_AWCACHE(m_axi_mcxx_c_AWCACHE),
    .m_axi_mcxx_c_AWPROT(m_axi_mcxx_c_AWPROT),
    .m_axi_mcxx_c_AWQOS(m_axi_mcxx_c_AWQOS),
    .m_axi_mcxx_c_AWUSER(),
    .m_axi_mcxx_c_AWVALID(m_axi_mcxx_c_AWVALID),
    .m_axi_mcxx_c_AWREADY(m_axi_mcxx_c_AWREADY),
    .m_axi_mcxx_c_WID(m_axi_mcxx_c_WID),
    .m_axi_mcxx_c_WDATA(m_axi_mcxx_c_WDATA),
    .m_axi_mcxx_c_WSTRB(m_axi_mcxx_c_WSTRB),
    .m_axi_mcxx_c_WLAST(m_axi_mcxx_c_WLAST),
    .m_axi_mcxx_c_WUSER(),
    .m_axi_mcxx_c_WVALID(m_axi_mcxx_c_WVALID),
    .m_axi_mcxx_c_WREADY(m_axi_mcxx_c_WREADY),
    .m_axi_mcxx_c_BID(m_axi_mcxx_c_BID),
    .m_axi_mcxx_c_BRESP(m_axi_mcxx_c_BRESP),
    .m_axi_mcxx_c_BUSER(1'B0),
    .m_axi_mcxx_c_BVALID(m_axi_mcxx_c_BVALID),
    .m_axi_mcxx_c_BREADY(m_axi_mcxx_c_BREADY),
    .m_axi_mcxx_c_ARID(m_axi_mcxx_c_ARID),
    .m_axi_mcxx_c_ARADDR(m_axi_mcxx_c_ARADDR),
    .m_axi_mcxx_c_ARLEN(m_axi_mcxx_c_ARLEN),
    .m_axi_mcxx_c_ARSIZE(m_axi_mcxx_c_ARSIZE),
    .m_axi_mcxx_c_ARBURST(m_axi_mcxx_c_ARBURST),
    .m_axi_mcxx_c_ARLOCK(m_axi_mcxx_c_ARLOCK),
    .m_axi_mcxx_c_ARREGION(m_axi_mcxx_c_ARREGION),
    .m_axi_mcxx_c_ARCACHE(m_axi_mcxx_c_ARCACHE),
    .m_axi_mcxx_c_ARPROT(m_axi_mcxx_c_ARPROT),
    .m_axi_mcxx_c_ARQOS(m_axi_mcxx_c_ARQOS),
    .m_axi_mcxx_c_ARUSER(),
    .m_axi_mcxx_c_ARVALID(m_axi_mcxx_c_ARVALID),
    .m_axi_mcxx_c_ARREADY(m_axi_mcxx_c_ARREADY),
    .m_axi_mcxx_c_RID(m_axi_mcxx_c_RID),
    .m_axi_mcxx_c_RDATA(m_axi_mcxx_c_RDATA),
    .m_axi_mcxx_c_RRESP(m_axi_mcxx_c_RRESP),
    .m_axi_mcxx_c_RLAST(m_axi_mcxx_c_RLAST),
    .m_axi_mcxx_c_RUSER(1'B0),
    .m_axi_mcxx_c_RVALID(m_axi_mcxx_c_RVALID),
    .m_axi_mcxx_c_RREADY(m_axi_mcxx_c_RREADY)
  );
endmodule
