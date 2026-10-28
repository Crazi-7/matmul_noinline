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


// IP VLNV: bsc:ompss:picos_ompss_manager:7.5
// IP Revision: 0

(* X_CORE_INFO = "picos_ompss_manager_wrapper,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "matmul_design_Picos_OmpSs_Manager_0,picos_ompss_manager_wrapper,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module matmul_design_Picos_OmpSs_Manager_0 (
  clk,
  rstn,
  taskwait_in_tvalid,
  taskwait_in_tready,
  taskwait_in_tid,
  taskwait_in_tdata,
  taskwait_in_tlast,
  taskwait_out_tvalid,
  taskwait_out_tready,
  taskwait_out_tdest,
  taskwait_out_tdata,
  taskwait_out_tlast,
  spawn_in_tvalid,
  spawn_in_tready,
  spawn_in_tid,
  spawn_in_tdata,
  spawn_in_tlast,
  spawn_out_tvalid,
  spawn_out_tready,
  spawn_out_tdest,
  spawn_out_tdata,
  spawn_out_tlast,
  cmdout_in_tvalid,
  cmdout_in_tready,
  cmdout_in_tid,
  cmdout_in_tdata,
  cmdin_out_tvalid,
  cmdin_out_tready,
  cmdin_out_tdest,
  cmdin_out_tdata,
  cmdin_out_tlast,
  spawnin_queue_clk,
  spawnin_queue_rst,
  spawnin_queue_en,
  spawnin_queue_we,
  spawnin_queue_addr,
  spawnin_queue_din,
  spawnin_queue_dout,
  spawnout_queue_clk,
  spawnout_queue_rst,
  spawnout_queue_en,
  spawnout_queue_we,
  spawnout_queue_addr,
  spawnout_queue_din,
  spawnout_queue_dout,
  cmdin_queue_clk,
  cmdin_queue_rst,
  cmdin_queue_en,
  cmdin_queue_we,
  cmdin_queue_addr,
  cmdin_queue_din,
  cmdin_queue_dout,
  cmdout_queue_clk,
  cmdout_queue_rst,
  cmdout_queue_en,
  cmdout_queue_we,
  cmdout_queue_addr,
  cmdout_queue_din,
  cmdout_queue_dout
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF cmdin_out:cmdout_in:lock_in:lock_out:spawn_in:spawn_out:taskwait_in:taskwait_out:spawnin_queue:spawnout_queue:axilite:cmdin_queue:cmdout_queue, ASSOCIATED_RESET rstn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_in TVALID" *)
input wire taskwait_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_in TREADY" *)
output wire taskwait_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_in TID" *)
input wire [0 : 0] taskwait_in_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_in TDATA" *)
input wire [63 : 0] taskwait_in_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME taskwait_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_in TLAST" *)
input wire taskwait_in_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_out TVALID" *)
output wire taskwait_out_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_out TREADY" *)
input wire taskwait_out_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_out TDEST" *)
output wire [0 : 0] taskwait_out_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_out TDATA" *)
output wire [63 : 0] taskwait_out_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME taskwait_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 taskwait_out TLAST" *)
output wire taskwait_out_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_in TVALID" *)
input wire spawn_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_in TREADY" *)
output wire spawn_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_in TID" *)
input wire [0 : 0] spawn_in_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_in TDATA" *)
input wire [63 : 0] spawn_in_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spawn_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_in TLAST" *)
input wire spawn_in_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_out TVALID" *)
output wire spawn_out_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_out TREADY" *)
input wire spawn_out_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_out TDEST" *)
output wire [0 : 0] spawn_out_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_out TDATA" *)
output wire [63 : 0] spawn_out_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spawn_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 spawn_out TLAST" *)
output wire spawn_out_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdout_in TVALID" *)
input wire cmdout_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdout_in TREADY" *)
output wire cmdout_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdout_in TID" *)
input wire [0 : 0] cmdout_in_tid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmdout_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdout_in TDATA" *)
input wire [63 : 0] cmdout_in_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdin_out TVALID" *)
output wire cmdin_out_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdin_out TREADY" *)
input wire cmdin_out_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdin_out TDEST" *)
output wire [0 : 0] cmdin_out_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdin_out TDATA" *)
output wire [63 : 0] cmdin_out_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmdin_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cmdin_out TLAST" *)
output wire cmdin_out_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnin_queue CLK" *)
output wire spawnin_queue_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnin_queue RST" *)
output wire spawnin_queue_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnin_queue EN" *)
output wire spawnin_queue_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnin_queue WE" *)
output wire [7 : 0] spawnin_queue_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnin_queue ADDR" *)
output wire [31 : 0] spawnin_queue_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnin_queue DIN" *)
output wire [63 : 0] spawnin_queue_din;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spawnin_queue, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnin_queue DOUT" *)
input wire [63 : 0] spawnin_queue_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnout_queue CLK" *)
output wire spawnout_queue_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnout_queue RST" *)
output wire spawnout_queue_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnout_queue EN" *)
output wire spawnout_queue_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnout_queue WE" *)
output wire [7 : 0] spawnout_queue_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnout_queue ADDR" *)
output wire [31 : 0] spawnout_queue_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnout_queue DIN" *)
output wire [63 : 0] spawnout_queue_din;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spawnout_queue, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 spawnout_queue DOUT" *)
input wire [63 : 0] spawnout_queue_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdin_queue CLK" *)
output wire cmdin_queue_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdin_queue RST" *)
output wire cmdin_queue_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdin_queue EN" *)
output wire cmdin_queue_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdin_queue WE" *)
output wire [7 : 0] cmdin_queue_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdin_queue ADDR" *)
output wire [31 : 0] cmdin_queue_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdin_queue DIN" *)
output wire [63 : 0] cmdin_queue_din;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmdin_queue, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdin_queue DOUT" *)
input wire [63 : 0] cmdin_queue_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdout_queue CLK" *)
output wire cmdout_queue_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdout_queue RST" *)
output wire cmdout_queue_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdout_queue EN" *)
output wire cmdout_queue_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdout_queue WE" *)
output wire [7 : 0] cmdout_queue_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdout_queue ADDR" *)
output wire [31 : 0] cmdout_queue_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdout_queue DIN" *)
output wire [63 : 0] cmdout_queue_din;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmdout_queue, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cmdout_queue DOUT" *)
input wire [63 : 0] cmdout_queue_dout;

  picos_ompss_manager_wrapper #(
    .MAX_ACCS(2),
    .MAX_ACC_CREATORS(2),
    .MAX_ACC_TYPES(2),
    .CMDIN_SUBQUEUE_LEN(512),
    .CMDOUT_SUBQUEUE_LEN(512),
    .SPAWNIN_QUEUE_LEN(1024),
    .SPAWNOUT_QUEUE_LEN(1024),
    .LOCK_SUPPORT(1'B0),
    .ENABLE_SPAWN_QUEUES(1'B1),
    .AXILITE_INTF(1'B0),
    .ENABLE_TASK_CREATION(1'B1),
    .ENABLE_DEPS(1'B1),
    .DBG_AVAIL_COUNT_EN(1'B0),
    .DBG_AVAIL_COUNT_W(1),
    .SCHED_COUNT(128'H00000000000000000000000000000000),
    .SCHED_ACCID(128'H00000000000000000000000000000100),
    .SCHED_TTYPE(512'H00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009DF921925C16AF73),
    .MAX_ARGS_PER_TASK(15),
    .MAX_DEPS_PER_TASK(8),
    .MAX_COPS_PER_TASK(15),
    .NUM_DCTS(1),
    .TM_SIZE(128),
    .DM_SIZE(512),
    .VM_SIZE(512),
    .DM_DS("BINTREE"),
    .DM_HASH("P_PEARSON"),
    .HASH_T_SIZE(64)
  ) inst (
    .clk(clk),
    .rstn(rstn),
    .taskwait_in_tvalid(taskwait_in_tvalid),
    .taskwait_in_tready(taskwait_in_tready),
    .taskwait_in_tid(taskwait_in_tid),
    .taskwait_in_tdata(taskwait_in_tdata),
    .taskwait_in_tlast(taskwait_in_tlast),
    .taskwait_out_tvalid(taskwait_out_tvalid),
    .taskwait_out_tready(taskwait_out_tready),
    .taskwait_out_tdest(taskwait_out_tdest),
    .taskwait_out_tdata(taskwait_out_tdata),
    .taskwait_out_tlast(taskwait_out_tlast),
    .spawn_in_tvalid(spawn_in_tvalid),
    .spawn_in_tready(spawn_in_tready),
    .spawn_in_tid(spawn_in_tid),
    .spawn_in_tdata(spawn_in_tdata),
    .spawn_in_tlast(spawn_in_tlast),
    .spawn_out_tvalid(spawn_out_tvalid),
    .spawn_out_tready(spawn_out_tready),
    .spawn_out_tdest(spawn_out_tdest),
    .spawn_out_tdata(spawn_out_tdata),
    .spawn_out_tlast(spawn_out_tlast),
    .lock_in_tvalid(1'B0),
    .lock_in_tready(),
    .lock_in_tid(1'B0),
    .lock_in_tdata(64'B0),
    .lock_out_tvalid(),
    .lock_out_tready(1'B1),
    .lock_out_tdest(),
    .lock_out_tdata(),
    .lock_out_tlast(),
    .cmdout_in_tvalid(cmdout_in_tvalid),
    .cmdout_in_tready(cmdout_in_tready),
    .cmdout_in_tid(cmdout_in_tid),
    .cmdout_in_tdata(cmdout_in_tdata),
    .cmdin_out_tvalid(cmdin_out_tvalid),
    .cmdin_out_tready(cmdin_out_tready),
    .cmdin_out_tdest(cmdin_out_tdest),
    .cmdin_out_tdata(cmdin_out_tdata),
    .cmdin_out_tlast(cmdin_out_tlast),
    .spawnin_queue_clk(spawnin_queue_clk),
    .spawnin_queue_rst(spawnin_queue_rst),
    .spawnin_queue_en(spawnin_queue_en),
    .spawnin_queue_we(spawnin_queue_we),
    .spawnin_queue_addr(spawnin_queue_addr),
    .spawnin_queue_din(spawnin_queue_din),
    .spawnin_queue_dout(spawnin_queue_dout),
    .spawnout_queue_clk(spawnout_queue_clk),
    .spawnout_queue_rst(spawnout_queue_rst),
    .spawnout_queue_en(spawnout_queue_en),
    .spawnout_queue_we(spawnout_queue_we),
    .spawnout_queue_addr(spawnout_queue_addr),
    .spawnout_queue_din(spawnout_queue_din),
    .spawnout_queue_dout(spawnout_queue_dout),
    .cmdin_queue_clk(cmdin_queue_clk),
    .cmdin_queue_rst(cmdin_queue_rst),
    .cmdin_queue_en(cmdin_queue_en),
    .cmdin_queue_we(cmdin_queue_we),
    .cmdin_queue_addr(cmdin_queue_addr),
    .cmdin_queue_din(cmdin_queue_din),
    .cmdin_queue_dout(cmdin_queue_dout),
    .cmdout_queue_clk(cmdout_queue_clk),
    .cmdout_queue_rst(cmdout_queue_rst),
    .cmdout_queue_en(cmdout_queue_en),
    .cmdout_queue_we(cmdout_queue_we),
    .cmdout_queue_addr(cmdout_queue_addr),
    .cmdout_queue_din(cmdout_queue_din),
    .cmdout_queue_dout(cmdout_queue_dout),
    .axilite_arvalid(1'B0),
    .axilite_arready(),
    .axilite_araddr(14'B0),
    .axilite_arprot(3'B0),
    .axilite_rvalid(),
    .axilite_rready(1'B0),
    .axilite_rdata(),
    .axilite_rresp()
  );
endmodule
