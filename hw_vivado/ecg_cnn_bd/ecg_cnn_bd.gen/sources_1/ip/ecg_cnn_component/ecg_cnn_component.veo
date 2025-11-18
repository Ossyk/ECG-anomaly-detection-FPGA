// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
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

// IP VLNV: unitn.edu:hls:ecg_cnn:1.0
// IP Revision: 2114326810

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ecg_cnn_component your_instance_name (
  .m_axi_WEIGHTS_AWVALID(m_axi_WEIGHTS_AWVALID),      // output wire m_axi_WEIGHTS_AWVALID
  .m_axi_WEIGHTS_AWREADY(m_axi_WEIGHTS_AWREADY),      // input wire m_axi_WEIGHTS_AWREADY
  .m_axi_WEIGHTS_AWADDR(m_axi_WEIGHTS_AWADDR),        // output wire [0 : 0] m_axi_WEIGHTS_AWADDR
  .m_axi_WEIGHTS_AWID(m_axi_WEIGHTS_AWID),            // output wire [0 : 0] m_axi_WEIGHTS_AWID
  .m_axi_WEIGHTS_AWLEN(m_axi_WEIGHTS_AWLEN),          // output wire [7 : 0] m_axi_WEIGHTS_AWLEN
  .m_axi_WEIGHTS_AWSIZE(m_axi_WEIGHTS_AWSIZE),        // output wire [2 : 0] m_axi_WEIGHTS_AWSIZE
  .m_axi_WEIGHTS_AWBURST(m_axi_WEIGHTS_AWBURST),      // output wire [1 : 0] m_axi_WEIGHTS_AWBURST
  .m_axi_WEIGHTS_AWLOCK(m_axi_WEIGHTS_AWLOCK),        // output wire [1 : 0] m_axi_WEIGHTS_AWLOCK
  .m_axi_WEIGHTS_AWCACHE(m_axi_WEIGHTS_AWCACHE),      // output wire [3 : 0] m_axi_WEIGHTS_AWCACHE
  .m_axi_WEIGHTS_AWPROT(m_axi_WEIGHTS_AWPROT),        // output wire [2 : 0] m_axi_WEIGHTS_AWPROT
  .m_axi_WEIGHTS_AWQOS(m_axi_WEIGHTS_AWQOS),          // output wire [3 : 0] m_axi_WEIGHTS_AWQOS
  .m_axi_WEIGHTS_AWREGION(m_axi_WEIGHTS_AWREGION),    // output wire [3 : 0] m_axi_WEIGHTS_AWREGION
  .m_axi_WEIGHTS_AWUSER(m_axi_WEIGHTS_AWUSER),        // output wire [0 : 0] m_axi_WEIGHTS_AWUSER
  .m_axi_WEIGHTS_WVALID(m_axi_WEIGHTS_WVALID),        // output wire m_axi_WEIGHTS_WVALID
  .m_axi_WEIGHTS_WREADY(m_axi_WEIGHTS_WREADY),        // input wire m_axi_WEIGHTS_WREADY
  .m_axi_WEIGHTS_WDATA(m_axi_WEIGHTS_WDATA),          // output wire [0 : 0] m_axi_WEIGHTS_WDATA
  .m_axi_WEIGHTS_WSTRB(m_axi_WEIGHTS_WSTRB),          // output wire [0 : 0] m_axi_WEIGHTS_WSTRB
  .m_axi_WEIGHTS_WLAST(m_axi_WEIGHTS_WLAST),          // output wire m_axi_WEIGHTS_WLAST
  .m_axi_WEIGHTS_WID(m_axi_WEIGHTS_WID),              // output wire [0 : 0] m_axi_WEIGHTS_WID
  .m_axi_WEIGHTS_WUSER(m_axi_WEIGHTS_WUSER),          // output wire [0 : 0] m_axi_WEIGHTS_WUSER
  .m_axi_WEIGHTS_ARVALID(m_axi_WEIGHTS_ARVALID),      // output wire m_axi_WEIGHTS_ARVALID
  .m_axi_WEIGHTS_ARREADY(m_axi_WEIGHTS_ARREADY),      // input wire m_axi_WEIGHTS_ARREADY
  .m_axi_WEIGHTS_ARADDR(m_axi_WEIGHTS_ARADDR),        // output wire [0 : 0] m_axi_WEIGHTS_ARADDR
  .m_axi_WEIGHTS_ARID(m_axi_WEIGHTS_ARID),            // output wire [0 : 0] m_axi_WEIGHTS_ARID
  .m_axi_WEIGHTS_ARLEN(m_axi_WEIGHTS_ARLEN),          // output wire [7 : 0] m_axi_WEIGHTS_ARLEN
  .m_axi_WEIGHTS_ARSIZE(m_axi_WEIGHTS_ARSIZE),        // output wire [2 : 0] m_axi_WEIGHTS_ARSIZE
  .m_axi_WEIGHTS_ARBURST(m_axi_WEIGHTS_ARBURST),      // output wire [1 : 0] m_axi_WEIGHTS_ARBURST
  .m_axi_WEIGHTS_ARLOCK(m_axi_WEIGHTS_ARLOCK),        // output wire [1 : 0] m_axi_WEIGHTS_ARLOCK
  .m_axi_WEIGHTS_ARCACHE(m_axi_WEIGHTS_ARCACHE),      // output wire [3 : 0] m_axi_WEIGHTS_ARCACHE
  .m_axi_WEIGHTS_ARPROT(m_axi_WEIGHTS_ARPROT),        // output wire [2 : 0] m_axi_WEIGHTS_ARPROT
  .m_axi_WEIGHTS_ARQOS(m_axi_WEIGHTS_ARQOS),          // output wire [3 : 0] m_axi_WEIGHTS_ARQOS
  .m_axi_WEIGHTS_ARREGION(m_axi_WEIGHTS_ARREGION),    // output wire [3 : 0] m_axi_WEIGHTS_ARREGION
  .m_axi_WEIGHTS_ARUSER(m_axi_WEIGHTS_ARUSER),        // output wire [0 : 0] m_axi_WEIGHTS_ARUSER
  .m_axi_WEIGHTS_RVALID(m_axi_WEIGHTS_RVALID),        // input wire m_axi_WEIGHTS_RVALID
  .m_axi_WEIGHTS_RREADY(m_axi_WEIGHTS_RREADY),        // output wire m_axi_WEIGHTS_RREADY
  .m_axi_WEIGHTS_RDATA(m_axi_WEIGHTS_RDATA),          // input wire [0 : 0] m_axi_WEIGHTS_RDATA
  .m_axi_WEIGHTS_RLAST(m_axi_WEIGHTS_RLAST),          // input wire m_axi_WEIGHTS_RLAST
  .m_axi_WEIGHTS_RID(m_axi_WEIGHTS_RID),              // input wire [0 : 0] m_axi_WEIGHTS_RID
  .m_axi_WEIGHTS_RUSER(m_axi_WEIGHTS_RUSER),          // input wire [0 : 0] m_axi_WEIGHTS_RUSER
  .m_axi_WEIGHTS_RRESP(m_axi_WEIGHTS_RRESP),          // input wire [1 : 0] m_axi_WEIGHTS_RRESP
  .m_axi_WEIGHTS_BVALID(m_axi_WEIGHTS_BVALID),        // input wire m_axi_WEIGHTS_BVALID
  .m_axi_WEIGHTS_BREADY(m_axi_WEIGHTS_BREADY),        // output wire m_axi_WEIGHTS_BREADY
  .m_axi_WEIGHTS_BRESP(m_axi_WEIGHTS_BRESP),          // input wire [1 : 0] m_axi_WEIGHTS_BRESP
  .m_axi_WEIGHTS_BID(m_axi_WEIGHTS_BID),              // input wire [0 : 0] m_axi_WEIGHTS_BID
  .m_axi_WEIGHTS_BUSER(m_axi_WEIGHTS_BUSER),          // input wire [0 : 0] m_axi_WEIGHTS_BUSER
  .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),              // input wire [3 : 0] s_axi_CTRL_ARADDR
  .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),            // output wire s_axi_CTRL_ARREADY
  .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),            // input wire s_axi_CTRL_ARVALID
  .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),              // input wire [3 : 0] s_axi_CTRL_AWADDR
  .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),            // output wire s_axi_CTRL_AWREADY
  .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),            // input wire s_axi_CTRL_AWVALID
  .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),              // input wire s_axi_CTRL_BREADY
  .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),                // output wire [1 : 0] s_axi_CTRL_BRESP
  .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),              // output wire s_axi_CTRL_BVALID
  .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),                // output wire [31 : 0] s_axi_CTRL_RDATA
  .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),              // input wire s_axi_CTRL_RREADY
  .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),                // output wire [1 : 0] s_axi_CTRL_RRESP
  .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),              // output wire s_axi_CTRL_RVALID
  .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),                // input wire [31 : 0] s_axi_CTRL_WDATA
  .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),              // output wire s_axi_CTRL_WREADY
  .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),                // input wire [3 : 0] s_axi_CTRL_WSTRB
  .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),              // input wire s_axi_CTRL_WVALID
  .s_axi_control_ARADDR(s_axi_control_ARADDR),        // input wire [5 : 0] s_axi_control_ARADDR
  .s_axi_control_ARREADY(s_axi_control_ARREADY),      // output wire s_axi_control_ARREADY
  .s_axi_control_ARVALID(s_axi_control_ARVALID),      // input wire s_axi_control_ARVALID
  .s_axi_control_AWADDR(s_axi_control_AWADDR),        // input wire [5 : 0] s_axi_control_AWADDR
  .s_axi_control_AWREADY(s_axi_control_AWREADY),      // output wire s_axi_control_AWREADY
  .s_axi_control_AWVALID(s_axi_control_AWVALID),      // input wire s_axi_control_AWVALID
  .s_axi_control_BREADY(s_axi_control_BREADY),        // input wire s_axi_control_BREADY
  .s_axi_control_BRESP(s_axi_control_BRESP),          // output wire [1 : 0] s_axi_control_BRESP
  .s_axi_control_BVALID(s_axi_control_BVALID),        // output wire s_axi_control_BVALID
  .s_axi_control_RDATA(s_axi_control_RDATA),          // output wire [31 : 0] s_axi_control_RDATA
  .s_axi_control_RREADY(s_axi_control_RREADY),        // input wire s_axi_control_RREADY
  .s_axi_control_RRESP(s_axi_control_RRESP),          // output wire [1 : 0] s_axi_control_RRESP
  .s_axi_control_RVALID(s_axi_control_RVALID),        // output wire s_axi_control_RVALID
  .s_axi_control_WDATA(s_axi_control_WDATA),          // input wire [31 : 0] s_axi_control_WDATA
  .s_axi_control_WREADY(s_axi_control_WREADY),        // output wire s_axi_control_WREADY
  .s_axi_control_WSTRB(s_axi_control_WSTRB),          // input wire [3 : 0] s_axi_control_WSTRB
  .s_axi_control_WVALID(s_axi_control_WVALID),        // input wire s_axi_control_WVALID
  .ap_clk(ap_clk),                                    // input wire ap_clk
  .ap_rst_n(ap_rst_n),                                // input wire ap_rst_n
  .interrupt(interrupt),                              // output wire interrupt
  .m_axi_INPUT_r_ARADDR(m_axi_INPUT_r_ARADDR),        // output wire [63 : 0] m_axi_INPUT_r_ARADDR
  .m_axi_INPUT_r_ARBURST(m_axi_INPUT_r_ARBURST),      // output wire [1 : 0] m_axi_INPUT_r_ARBURST
  .m_axi_INPUT_r_ARCACHE(m_axi_INPUT_r_ARCACHE),      // output wire [3 : 0] m_axi_INPUT_r_ARCACHE
  .m_axi_INPUT_r_ARID(m_axi_INPUT_r_ARID),            // output wire [0 : 0] m_axi_INPUT_r_ARID
  .m_axi_INPUT_r_ARLEN(m_axi_INPUT_r_ARLEN),          // output wire [7 : 0] m_axi_INPUT_r_ARLEN
  .m_axi_INPUT_r_ARLOCK(m_axi_INPUT_r_ARLOCK),        // output wire [1 : 0] m_axi_INPUT_r_ARLOCK
  .m_axi_INPUT_r_ARPROT(m_axi_INPUT_r_ARPROT),        // output wire [2 : 0] m_axi_INPUT_r_ARPROT
  .m_axi_INPUT_r_ARQOS(m_axi_INPUT_r_ARQOS),          // output wire [3 : 0] m_axi_INPUT_r_ARQOS
  .m_axi_INPUT_r_ARREADY(m_axi_INPUT_r_ARREADY),      // input wire m_axi_INPUT_r_ARREADY
  .m_axi_INPUT_r_ARREGION(m_axi_INPUT_r_ARREGION),    // output wire [3 : 0] m_axi_INPUT_r_ARREGION
  .m_axi_INPUT_r_ARSIZE(m_axi_INPUT_r_ARSIZE),        // output wire [2 : 0] m_axi_INPUT_r_ARSIZE
  .m_axi_INPUT_r_ARVALID(m_axi_INPUT_r_ARVALID),      // output wire m_axi_INPUT_r_ARVALID
  .m_axi_INPUT_r_AWADDR(m_axi_INPUT_r_AWADDR),        // output wire [63 : 0] m_axi_INPUT_r_AWADDR
  .m_axi_INPUT_r_AWBURST(m_axi_INPUT_r_AWBURST),      // output wire [1 : 0] m_axi_INPUT_r_AWBURST
  .m_axi_INPUT_r_AWCACHE(m_axi_INPUT_r_AWCACHE),      // output wire [3 : 0] m_axi_INPUT_r_AWCACHE
  .m_axi_INPUT_r_AWID(m_axi_INPUT_r_AWID),            // output wire [0 : 0] m_axi_INPUT_r_AWID
  .m_axi_INPUT_r_AWLEN(m_axi_INPUT_r_AWLEN),          // output wire [7 : 0] m_axi_INPUT_r_AWLEN
  .m_axi_INPUT_r_AWLOCK(m_axi_INPUT_r_AWLOCK),        // output wire [1 : 0] m_axi_INPUT_r_AWLOCK
  .m_axi_INPUT_r_AWPROT(m_axi_INPUT_r_AWPROT),        // output wire [2 : 0] m_axi_INPUT_r_AWPROT
  .m_axi_INPUT_r_AWQOS(m_axi_INPUT_r_AWQOS),          // output wire [3 : 0] m_axi_INPUT_r_AWQOS
  .m_axi_INPUT_r_AWREADY(m_axi_INPUT_r_AWREADY),      // input wire m_axi_INPUT_r_AWREADY
  .m_axi_INPUT_r_AWREGION(m_axi_INPUT_r_AWREGION),    // output wire [3 : 0] m_axi_INPUT_r_AWREGION
  .m_axi_INPUT_r_AWSIZE(m_axi_INPUT_r_AWSIZE),        // output wire [2 : 0] m_axi_INPUT_r_AWSIZE
  .m_axi_INPUT_r_AWVALID(m_axi_INPUT_r_AWVALID),      // output wire m_axi_INPUT_r_AWVALID
  .m_axi_INPUT_r_BID(m_axi_INPUT_r_BID),              // input wire [0 : 0] m_axi_INPUT_r_BID
  .m_axi_INPUT_r_BREADY(m_axi_INPUT_r_BREADY),        // output wire m_axi_INPUT_r_BREADY
  .m_axi_INPUT_r_BRESP(m_axi_INPUT_r_BRESP),          // input wire [1 : 0] m_axi_INPUT_r_BRESP
  .m_axi_INPUT_r_BVALID(m_axi_INPUT_r_BVALID),        // input wire m_axi_INPUT_r_BVALID
  .m_axi_INPUT_r_RDATA(m_axi_INPUT_r_RDATA),          // input wire [31 : 0] m_axi_INPUT_r_RDATA
  .m_axi_INPUT_r_RID(m_axi_INPUT_r_RID),              // input wire [0 : 0] m_axi_INPUT_r_RID
  .m_axi_INPUT_r_RLAST(m_axi_INPUT_r_RLAST),          // input wire m_axi_INPUT_r_RLAST
  .m_axi_INPUT_r_RREADY(m_axi_INPUT_r_RREADY),        // output wire m_axi_INPUT_r_RREADY
  .m_axi_INPUT_r_RRESP(m_axi_INPUT_r_RRESP),          // input wire [1 : 0] m_axi_INPUT_r_RRESP
  .m_axi_INPUT_r_RVALID(m_axi_INPUT_r_RVALID),        // input wire m_axi_INPUT_r_RVALID
  .m_axi_INPUT_r_WDATA(m_axi_INPUT_r_WDATA),          // output wire [31 : 0] m_axi_INPUT_r_WDATA
  .m_axi_INPUT_r_WID(m_axi_INPUT_r_WID),              // output wire [0 : 0] m_axi_INPUT_r_WID
  .m_axi_INPUT_r_WLAST(m_axi_INPUT_r_WLAST),          // output wire m_axi_INPUT_r_WLAST
  .m_axi_INPUT_r_WREADY(m_axi_INPUT_r_WREADY),        // input wire m_axi_INPUT_r_WREADY
  .m_axi_INPUT_r_WSTRB(m_axi_INPUT_r_WSTRB),          // output wire [3 : 0] m_axi_INPUT_r_WSTRB
  .m_axi_INPUT_r_WVALID(m_axi_INPUT_r_WVALID),        // output wire m_axi_INPUT_r_WVALID
  .m_axi_OUTPUT_r_ARADDR(m_axi_OUTPUT_r_ARADDR),      // output wire [63 : 0] m_axi_OUTPUT_r_ARADDR
  .m_axi_OUTPUT_r_ARBURST(m_axi_OUTPUT_r_ARBURST),    // output wire [1 : 0] m_axi_OUTPUT_r_ARBURST
  .m_axi_OUTPUT_r_ARCACHE(m_axi_OUTPUT_r_ARCACHE),    // output wire [3 : 0] m_axi_OUTPUT_r_ARCACHE
  .m_axi_OUTPUT_r_ARID(m_axi_OUTPUT_r_ARID),          // output wire [0 : 0] m_axi_OUTPUT_r_ARID
  .m_axi_OUTPUT_r_ARLEN(m_axi_OUTPUT_r_ARLEN),        // output wire [7 : 0] m_axi_OUTPUT_r_ARLEN
  .m_axi_OUTPUT_r_ARLOCK(m_axi_OUTPUT_r_ARLOCK),      // output wire [1 : 0] m_axi_OUTPUT_r_ARLOCK
  .m_axi_OUTPUT_r_ARPROT(m_axi_OUTPUT_r_ARPROT),      // output wire [2 : 0] m_axi_OUTPUT_r_ARPROT
  .m_axi_OUTPUT_r_ARQOS(m_axi_OUTPUT_r_ARQOS),        // output wire [3 : 0] m_axi_OUTPUT_r_ARQOS
  .m_axi_OUTPUT_r_ARREADY(m_axi_OUTPUT_r_ARREADY),    // input wire m_axi_OUTPUT_r_ARREADY
  .m_axi_OUTPUT_r_ARREGION(m_axi_OUTPUT_r_ARREGION),  // output wire [3 : 0] m_axi_OUTPUT_r_ARREGION
  .m_axi_OUTPUT_r_ARSIZE(m_axi_OUTPUT_r_ARSIZE),      // output wire [2 : 0] m_axi_OUTPUT_r_ARSIZE
  .m_axi_OUTPUT_r_ARVALID(m_axi_OUTPUT_r_ARVALID),    // output wire m_axi_OUTPUT_r_ARVALID
  .m_axi_OUTPUT_r_AWADDR(m_axi_OUTPUT_r_AWADDR),      // output wire [63 : 0] m_axi_OUTPUT_r_AWADDR
  .m_axi_OUTPUT_r_AWBURST(m_axi_OUTPUT_r_AWBURST),    // output wire [1 : 0] m_axi_OUTPUT_r_AWBURST
  .m_axi_OUTPUT_r_AWCACHE(m_axi_OUTPUT_r_AWCACHE),    // output wire [3 : 0] m_axi_OUTPUT_r_AWCACHE
  .m_axi_OUTPUT_r_AWID(m_axi_OUTPUT_r_AWID),          // output wire [0 : 0] m_axi_OUTPUT_r_AWID
  .m_axi_OUTPUT_r_AWLEN(m_axi_OUTPUT_r_AWLEN),        // output wire [7 : 0] m_axi_OUTPUT_r_AWLEN
  .m_axi_OUTPUT_r_AWLOCK(m_axi_OUTPUT_r_AWLOCK),      // output wire [1 : 0] m_axi_OUTPUT_r_AWLOCK
  .m_axi_OUTPUT_r_AWPROT(m_axi_OUTPUT_r_AWPROT),      // output wire [2 : 0] m_axi_OUTPUT_r_AWPROT
  .m_axi_OUTPUT_r_AWQOS(m_axi_OUTPUT_r_AWQOS),        // output wire [3 : 0] m_axi_OUTPUT_r_AWQOS
  .m_axi_OUTPUT_r_AWREADY(m_axi_OUTPUT_r_AWREADY),    // input wire m_axi_OUTPUT_r_AWREADY
  .m_axi_OUTPUT_r_AWREGION(m_axi_OUTPUT_r_AWREGION),  // output wire [3 : 0] m_axi_OUTPUT_r_AWREGION
  .m_axi_OUTPUT_r_AWSIZE(m_axi_OUTPUT_r_AWSIZE),      // output wire [2 : 0] m_axi_OUTPUT_r_AWSIZE
  .m_axi_OUTPUT_r_AWVALID(m_axi_OUTPUT_r_AWVALID),    // output wire m_axi_OUTPUT_r_AWVALID
  .m_axi_OUTPUT_r_BID(m_axi_OUTPUT_r_BID),            // input wire [0 : 0] m_axi_OUTPUT_r_BID
  .m_axi_OUTPUT_r_BREADY(m_axi_OUTPUT_r_BREADY),      // output wire m_axi_OUTPUT_r_BREADY
  .m_axi_OUTPUT_r_BRESP(m_axi_OUTPUT_r_BRESP),        // input wire [1 : 0] m_axi_OUTPUT_r_BRESP
  .m_axi_OUTPUT_r_BVALID(m_axi_OUTPUT_r_BVALID),      // input wire m_axi_OUTPUT_r_BVALID
  .m_axi_OUTPUT_r_RDATA(m_axi_OUTPUT_r_RDATA),        // input wire [31 : 0] m_axi_OUTPUT_r_RDATA
  .m_axi_OUTPUT_r_RID(m_axi_OUTPUT_r_RID),            // input wire [0 : 0] m_axi_OUTPUT_r_RID
  .m_axi_OUTPUT_r_RLAST(m_axi_OUTPUT_r_RLAST),        // input wire m_axi_OUTPUT_r_RLAST
  .m_axi_OUTPUT_r_RREADY(m_axi_OUTPUT_r_RREADY),      // output wire m_axi_OUTPUT_r_RREADY
  .m_axi_OUTPUT_r_RRESP(m_axi_OUTPUT_r_RRESP),        // input wire [1 : 0] m_axi_OUTPUT_r_RRESP
  .m_axi_OUTPUT_r_RVALID(m_axi_OUTPUT_r_RVALID),      // input wire m_axi_OUTPUT_r_RVALID
  .m_axi_OUTPUT_r_WDATA(m_axi_OUTPUT_r_WDATA),        // output wire [31 : 0] m_axi_OUTPUT_r_WDATA
  .m_axi_OUTPUT_r_WID(m_axi_OUTPUT_r_WID),            // output wire [0 : 0] m_axi_OUTPUT_r_WID
  .m_axi_OUTPUT_r_WLAST(m_axi_OUTPUT_r_WLAST),        // output wire m_axi_OUTPUT_r_WLAST
  .m_axi_OUTPUT_r_WREADY(m_axi_OUTPUT_r_WREADY),      // input wire m_axi_OUTPUT_r_WREADY
  .m_axi_OUTPUT_r_WSTRB(m_axi_OUTPUT_r_WSTRB),        // output wire [3 : 0] m_axi_OUTPUT_r_WSTRB
  .m_axi_OUTPUT_r_WVALID(m_axi_OUTPUT_r_WVALID)      // output wire m_axi_OUTPUT_r_WVALID
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

