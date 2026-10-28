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


// IP VLNV: bsc:ompss:matmulBlock_wrapper:1.0
// IP Revision: 2114848400

(* X_CORE_INFO = "matmulBlock_wrapper,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "matmul_design_matmulBlock_ompss_0,matmulBlock_wrapper,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module matmul_design_matmulBlock_ompss_0 (
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
  m_axi_mcxx_memport_AWID,
  m_axi_mcxx_memport_AWADDR,
  m_axi_mcxx_memport_AWLEN,
  m_axi_mcxx_memport_AWSIZE,
  m_axi_mcxx_memport_AWBURST,
  m_axi_mcxx_memport_AWLOCK,
  m_axi_mcxx_memport_AWREGION,
  m_axi_mcxx_memport_AWCACHE,
  m_axi_mcxx_memport_AWPROT,
  m_axi_mcxx_memport_AWQOS,
  m_axi_mcxx_memport_AWVALID,
  m_axi_mcxx_memport_AWREADY,
  m_axi_mcxx_memport_WID,
  m_axi_mcxx_memport_WDATA,
  m_axi_mcxx_memport_WSTRB,
  m_axi_mcxx_memport_WLAST,
  m_axi_mcxx_memport_WVALID,
  m_axi_mcxx_memport_WREADY,
  m_axi_mcxx_memport_BID,
  m_axi_mcxx_memport_BRESP,
  m_axi_mcxx_memport_BVALID,
  m_axi_mcxx_memport_BREADY,
  m_axi_mcxx_memport_ARID,
  m_axi_mcxx_memport_ARADDR,
  m_axi_mcxx_memport_ARLEN,
  m_axi_mcxx_memport_ARSIZE,
  m_axi_mcxx_memport_ARBURST,
  m_axi_mcxx_memport_ARLOCK,
  m_axi_mcxx_memport_ARREGION,
  m_axi_mcxx_memport_ARCACHE,
  m_axi_mcxx_memport_ARPROT,
  m_axi_mcxx_memport_ARQOS,
  m_axi_mcxx_memport_ARVALID,
  m_axi_mcxx_memport_ARREADY,
  m_axi_mcxx_memport_RID,
  m_axi_mcxx_memport_RDATA,
  m_axi_mcxx_memport_RRESP,
  m_axi_mcxx_memport_RLAST,
  m_axi_mcxx_memport_RVALID,
  m_axi_mcxx_memport_RREADY
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF mcxx_inPort:mcxx_outPort:m_axi_mcxx_memport, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
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
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWID" *)
output wire [0 : 0] m_axi_mcxx_memport_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWADDR" *)
output wire [63 : 0] m_axi_mcxx_memport_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWLEN" *)
output wire [7 : 0] m_axi_mcxx_memport_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWSIZE" *)
output wire [2 : 0] m_axi_mcxx_memport_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWBURST" *)
output wire [1 : 0] m_axi_mcxx_memport_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWLOCK" *)
output wire [1 : 0] m_axi_mcxx_memport_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWREGION" *)
output wire [3 : 0] m_axi_mcxx_memport_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWCACHE" *)
output wire [3 : 0] m_axi_mcxx_memport_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWPROT" *)
output wire [2 : 0] m_axi_mcxx_memport_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWQOS" *)
output wire [3 : 0] m_axi_mcxx_memport_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWVALID" *)
output wire m_axi_mcxx_memport_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport AWREADY" *)
input wire m_axi_mcxx_memport_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport WID" *)
output wire [0 : 0] m_axi_mcxx_memport_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport WDATA" *)
output wire [127 : 0] m_axi_mcxx_memport_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport WSTRB" *)
output wire [15 : 0] m_axi_mcxx_memport_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport WLAST" *)
output wire m_axi_mcxx_memport_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport WVALID" *)
output wire m_axi_mcxx_memport_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport WREADY" *)
input wire m_axi_mcxx_memport_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport BID" *)
input wire [0 : 0] m_axi_mcxx_memport_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport BRESP" *)
input wire [1 : 0] m_axi_mcxx_memport_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport BVALID" *)
input wire m_axi_mcxx_memport_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport BREADY" *)
output wire m_axi_mcxx_memport_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARID" *)
output wire [0 : 0] m_axi_mcxx_memport_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARADDR" *)
output wire [63 : 0] m_axi_mcxx_memport_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARLEN" *)
output wire [7 : 0] m_axi_mcxx_memport_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARSIZE" *)
output wire [2 : 0] m_axi_mcxx_memport_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARBURST" *)
output wire [1 : 0] m_axi_mcxx_memport_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARLOCK" *)
output wire [1 : 0] m_axi_mcxx_memport_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARREGION" *)
output wire [3 : 0] m_axi_mcxx_memport_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARCACHE" *)
output wire [3 : 0] m_axi_mcxx_memport_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARPROT" *)
output wire [2 : 0] m_axi_mcxx_memport_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARQOS" *)
output wire [3 : 0] m_axi_mcxx_memport_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARVALID" *)
output wire m_axi_mcxx_memport_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport ARREADY" *)
input wire m_axi_mcxx_memport_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport RID" *)
input wire [0 : 0] m_axi_mcxx_memport_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport RDATA" *)
input wire [127 : 0] m_axi_mcxx_memport_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport RRESP" *)
input wire [1 : 0] m_axi_mcxx_memport_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport RLAST" *)
input wire m_axi_mcxx_memport_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport RVALID" *)
input wire m_axi_mcxx_memport_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mcxx_memport, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 128, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_\
DOMAIN matmul_design_clock_generator_0_clk_app, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mcxx_memport RREADY" *)
output wire m_axi_mcxx_memport_RREADY;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  matmulBlock_wrapper #(
    .C_M_AXI_MCXX_MEMPORT_ID_WIDTH(1),
    .C_M_AXI_MCXX_MEMPORT_ADDR_WIDTH(64),
    .C_M_AXI_MCXX_MEMPORT_DATA_WIDTH(128),
    .C_M_AXI_MCXX_MEMPORT_AWUSER_WIDTH(1),
    .C_M_AXI_MCXX_MEMPORT_ARUSER_WIDTH(1),
    .C_M_AXI_MCXX_MEMPORT_WUSER_WIDTH(1),
    .C_M_AXI_MCXX_MEMPORT_RUSER_WIDTH(1),
    .C_M_AXI_MCXX_MEMPORT_BUSER_WIDTH(1),
    .C_M_AXI_MCXX_MEMPORT_USER_VALUE(32'H00000000),
    .C_M_AXI_MCXX_MEMPORT_PROT_VALUE(3'B000),
    .C_M_AXI_MCXX_MEMPORT_CACHE_VALUE(4'B0011)
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
    .m_axi_mcxx_memport_AWID(m_axi_mcxx_memport_AWID),
    .m_axi_mcxx_memport_AWADDR(m_axi_mcxx_memport_AWADDR),
    .m_axi_mcxx_memport_AWLEN(m_axi_mcxx_memport_AWLEN),
    .m_axi_mcxx_memport_AWSIZE(m_axi_mcxx_memport_AWSIZE),
    .m_axi_mcxx_memport_AWBURST(m_axi_mcxx_memport_AWBURST),
    .m_axi_mcxx_memport_AWLOCK(m_axi_mcxx_memport_AWLOCK),
    .m_axi_mcxx_memport_AWREGION(m_axi_mcxx_memport_AWREGION),
    .m_axi_mcxx_memport_AWCACHE(m_axi_mcxx_memport_AWCACHE),
    .m_axi_mcxx_memport_AWPROT(m_axi_mcxx_memport_AWPROT),
    .m_axi_mcxx_memport_AWQOS(m_axi_mcxx_memport_AWQOS),
    .m_axi_mcxx_memport_AWUSER(),
    .m_axi_mcxx_memport_AWVALID(m_axi_mcxx_memport_AWVALID),
    .m_axi_mcxx_memport_AWREADY(m_axi_mcxx_memport_AWREADY),
    .m_axi_mcxx_memport_WID(m_axi_mcxx_memport_WID),
    .m_axi_mcxx_memport_WDATA(m_axi_mcxx_memport_WDATA),
    .m_axi_mcxx_memport_WSTRB(m_axi_mcxx_memport_WSTRB),
    .m_axi_mcxx_memport_WLAST(m_axi_mcxx_memport_WLAST),
    .m_axi_mcxx_memport_WUSER(),
    .m_axi_mcxx_memport_WVALID(m_axi_mcxx_memport_WVALID),
    .m_axi_mcxx_memport_WREADY(m_axi_mcxx_memport_WREADY),
    .m_axi_mcxx_memport_BID(m_axi_mcxx_memport_BID),
    .m_axi_mcxx_memport_BRESP(m_axi_mcxx_memport_BRESP),
    .m_axi_mcxx_memport_BUSER(1'B0),
    .m_axi_mcxx_memport_BVALID(m_axi_mcxx_memport_BVALID),
    .m_axi_mcxx_memport_BREADY(m_axi_mcxx_memport_BREADY),
    .m_axi_mcxx_memport_ARID(m_axi_mcxx_memport_ARID),
    .m_axi_mcxx_memport_ARADDR(m_axi_mcxx_memport_ARADDR),
    .m_axi_mcxx_memport_ARLEN(m_axi_mcxx_memport_ARLEN),
    .m_axi_mcxx_memport_ARSIZE(m_axi_mcxx_memport_ARSIZE),
    .m_axi_mcxx_memport_ARBURST(m_axi_mcxx_memport_ARBURST),
    .m_axi_mcxx_memport_ARLOCK(m_axi_mcxx_memport_ARLOCK),
    .m_axi_mcxx_memport_ARREGION(m_axi_mcxx_memport_ARREGION),
    .m_axi_mcxx_memport_ARCACHE(m_axi_mcxx_memport_ARCACHE),
    .m_axi_mcxx_memport_ARPROT(m_axi_mcxx_memport_ARPROT),
    .m_axi_mcxx_memport_ARQOS(m_axi_mcxx_memport_ARQOS),
    .m_axi_mcxx_memport_ARUSER(),
    .m_axi_mcxx_memport_ARVALID(m_axi_mcxx_memport_ARVALID),
    .m_axi_mcxx_memport_ARREADY(m_axi_mcxx_memport_ARREADY),
    .m_axi_mcxx_memport_RID(m_axi_mcxx_memport_RID),
    .m_axi_mcxx_memport_RDATA(m_axi_mcxx_memport_RDATA),
    .m_axi_mcxx_memport_RRESP(m_axi_mcxx_memport_RRESP),
    .m_axi_mcxx_memport_RLAST(m_axi_mcxx_memport_RLAST),
    .m_axi_mcxx_memport_RUSER(1'B0),
    .m_axi_mcxx_memport_RVALID(m_axi_mcxx_memport_RVALID),
    .m_axi_mcxx_memport_RREADY(m_axi_mcxx_memport_RREADY)
  );
endmodule
