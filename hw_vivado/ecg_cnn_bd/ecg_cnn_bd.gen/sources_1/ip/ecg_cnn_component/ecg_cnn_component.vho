-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.
-- IP VLNV: unitn.edu:hls:ecg_cnn:1.0
-- IP Revision: 2114326810

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT ecg_cnn_component
  PORT (
    m_axi_WEIGHTS_AWVALID : OUT STD_LOGIC;
    m_axi_WEIGHTS_AWREADY : IN STD_LOGIC;
    m_axi_WEIGHTS_AWADDR : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_WEIGHTS_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_WEIGHTS_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_WEIGHTS_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_WEIGHTS_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_WEIGHTS_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_WEIGHTS_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_WEIGHTS_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_WEIGHTS_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_WVALID : OUT STD_LOGIC;
    m_axi_WEIGHTS_WREADY : IN STD_LOGIC;
    m_axi_WEIGHTS_WDATA : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_WSTRB : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_WLAST : OUT STD_LOGIC;
    m_axi_WEIGHTS_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_ARVALID : OUT STD_LOGIC;
    m_axi_WEIGHTS_ARREADY : IN STD_LOGIC;
    m_axi_WEIGHTS_ARADDR : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_WEIGHTS_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_WEIGHTS_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_WEIGHTS_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_WEIGHTS_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_WEIGHTS_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_WEIGHTS_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_WEIGHTS_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_WEIGHTS_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_RVALID : IN STD_LOGIC;
    m_axi_WEIGHTS_RREADY : OUT STD_LOGIC;
    m_axi_WEIGHTS_RDATA : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_RLAST : IN STD_LOGIC;
    m_axi_WEIGHTS_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_WEIGHTS_BVALID : IN STD_LOGIC;
    m_axi_WEIGHTS_BREADY : OUT STD_LOGIC;
    m_axi_WEIGHTS_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_WEIGHTS_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_WEIGHTS_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_CTRL_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_ARREADY : OUT STD_LOGIC;
    s_axi_CTRL_ARVALID : IN STD_LOGIC;
    s_axi_CTRL_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_AWREADY : OUT STD_LOGIC;
    s_axi_CTRL_AWVALID : IN STD_LOGIC;
    s_axi_CTRL_BREADY : IN STD_LOGIC;
    s_axi_CTRL_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BVALID : OUT STD_LOGIC;
    s_axi_CTRL_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_RREADY : IN STD_LOGIC;
    s_axi_CTRL_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_RVALID : OUT STD_LOGIC;
    s_axi_CTRL_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_WREADY : OUT STD_LOGIC;
    s_axi_CTRL_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_WVALID : IN STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_INPUT_r_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_INPUT_r_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_INPUT_r_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_INPUT_r_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_INPUT_r_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_INPUT_r_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_INPUT_r_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_INPUT_r_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_INPUT_r_ARREADY : IN STD_LOGIC;
    m_axi_INPUT_r_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_INPUT_r_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_INPUT_r_ARVALID : OUT STD_LOGIC;
    m_axi_INPUT_r_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_INPUT_r_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_INPUT_r_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_INPUT_r_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_INPUT_r_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_INPUT_r_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_INPUT_r_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_INPUT_r_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_INPUT_r_AWREADY : IN STD_LOGIC;
    m_axi_INPUT_r_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_INPUT_r_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_INPUT_r_AWVALID : OUT STD_LOGIC;
    m_axi_INPUT_r_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_INPUT_r_BREADY : OUT STD_LOGIC;
    m_axi_INPUT_r_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_INPUT_r_BVALID : IN STD_LOGIC;
    m_axi_INPUT_r_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_INPUT_r_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_INPUT_r_RLAST : IN STD_LOGIC;
    m_axi_INPUT_r_RREADY : OUT STD_LOGIC;
    m_axi_INPUT_r_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_INPUT_r_RVALID : IN STD_LOGIC;
    m_axi_INPUT_r_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_INPUT_r_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_INPUT_r_WLAST : OUT STD_LOGIC;
    m_axi_INPUT_r_WREADY : IN STD_LOGIC;
    m_axi_INPUT_r_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_INPUT_r_WVALID : OUT STD_LOGIC;
    m_axi_OUTPUT_r_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_OUTPUT_r_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_OUTPUT_r_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_OUTPUT_r_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_OUTPUT_r_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_OUTPUT_r_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_OUTPUT_r_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_OUTPUT_r_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_OUTPUT_r_ARREADY : IN STD_LOGIC;
    m_axi_OUTPUT_r_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_OUTPUT_r_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_OUTPUT_r_ARVALID : OUT STD_LOGIC;
    m_axi_OUTPUT_r_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_OUTPUT_r_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_OUTPUT_r_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_OUTPUT_r_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_OUTPUT_r_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_OUTPUT_r_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_OUTPUT_r_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_OUTPUT_r_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_OUTPUT_r_AWREADY : IN STD_LOGIC;
    m_axi_OUTPUT_r_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_OUTPUT_r_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_OUTPUT_r_AWVALID : OUT STD_LOGIC;
    m_axi_OUTPUT_r_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_OUTPUT_r_BREADY : OUT STD_LOGIC;
    m_axi_OUTPUT_r_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_OUTPUT_r_BVALID : IN STD_LOGIC;
    m_axi_OUTPUT_r_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_OUTPUT_r_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_OUTPUT_r_RLAST : IN STD_LOGIC;
    m_axi_OUTPUT_r_RREADY : OUT STD_LOGIC;
    m_axi_OUTPUT_r_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_OUTPUT_r_RVALID : IN STD_LOGIC;
    m_axi_OUTPUT_r_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_OUTPUT_r_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_OUTPUT_r_WLAST : OUT STD_LOGIC;
    m_axi_OUTPUT_r_WREADY : IN STD_LOGIC;
    m_axi_OUTPUT_r_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_OUTPUT_r_WVALID : OUT STD_LOGIC 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : ecg_cnn_component
  PORT MAP (
    m_axi_WEIGHTS_AWVALID => m_axi_WEIGHTS_AWVALID,
    m_axi_WEIGHTS_AWREADY => m_axi_WEIGHTS_AWREADY,
    m_axi_WEIGHTS_AWADDR => m_axi_WEIGHTS_AWADDR,
    m_axi_WEIGHTS_AWID => m_axi_WEIGHTS_AWID,
    m_axi_WEIGHTS_AWLEN => m_axi_WEIGHTS_AWLEN,
    m_axi_WEIGHTS_AWSIZE => m_axi_WEIGHTS_AWSIZE,
    m_axi_WEIGHTS_AWBURST => m_axi_WEIGHTS_AWBURST,
    m_axi_WEIGHTS_AWLOCK => m_axi_WEIGHTS_AWLOCK,
    m_axi_WEIGHTS_AWCACHE => m_axi_WEIGHTS_AWCACHE,
    m_axi_WEIGHTS_AWPROT => m_axi_WEIGHTS_AWPROT,
    m_axi_WEIGHTS_AWQOS => m_axi_WEIGHTS_AWQOS,
    m_axi_WEIGHTS_AWREGION => m_axi_WEIGHTS_AWREGION,
    m_axi_WEIGHTS_AWUSER => m_axi_WEIGHTS_AWUSER,
    m_axi_WEIGHTS_WVALID => m_axi_WEIGHTS_WVALID,
    m_axi_WEIGHTS_WREADY => m_axi_WEIGHTS_WREADY,
    m_axi_WEIGHTS_WDATA => m_axi_WEIGHTS_WDATA,
    m_axi_WEIGHTS_WSTRB => m_axi_WEIGHTS_WSTRB,
    m_axi_WEIGHTS_WLAST => m_axi_WEIGHTS_WLAST,
    m_axi_WEIGHTS_WID => m_axi_WEIGHTS_WID,
    m_axi_WEIGHTS_WUSER => m_axi_WEIGHTS_WUSER,
    m_axi_WEIGHTS_ARVALID => m_axi_WEIGHTS_ARVALID,
    m_axi_WEIGHTS_ARREADY => m_axi_WEIGHTS_ARREADY,
    m_axi_WEIGHTS_ARADDR => m_axi_WEIGHTS_ARADDR,
    m_axi_WEIGHTS_ARID => m_axi_WEIGHTS_ARID,
    m_axi_WEIGHTS_ARLEN => m_axi_WEIGHTS_ARLEN,
    m_axi_WEIGHTS_ARSIZE => m_axi_WEIGHTS_ARSIZE,
    m_axi_WEIGHTS_ARBURST => m_axi_WEIGHTS_ARBURST,
    m_axi_WEIGHTS_ARLOCK => m_axi_WEIGHTS_ARLOCK,
    m_axi_WEIGHTS_ARCACHE => m_axi_WEIGHTS_ARCACHE,
    m_axi_WEIGHTS_ARPROT => m_axi_WEIGHTS_ARPROT,
    m_axi_WEIGHTS_ARQOS => m_axi_WEIGHTS_ARQOS,
    m_axi_WEIGHTS_ARREGION => m_axi_WEIGHTS_ARREGION,
    m_axi_WEIGHTS_ARUSER => m_axi_WEIGHTS_ARUSER,
    m_axi_WEIGHTS_RVALID => m_axi_WEIGHTS_RVALID,
    m_axi_WEIGHTS_RREADY => m_axi_WEIGHTS_RREADY,
    m_axi_WEIGHTS_RDATA => m_axi_WEIGHTS_RDATA,
    m_axi_WEIGHTS_RLAST => m_axi_WEIGHTS_RLAST,
    m_axi_WEIGHTS_RID => m_axi_WEIGHTS_RID,
    m_axi_WEIGHTS_RUSER => m_axi_WEIGHTS_RUSER,
    m_axi_WEIGHTS_RRESP => m_axi_WEIGHTS_RRESP,
    m_axi_WEIGHTS_BVALID => m_axi_WEIGHTS_BVALID,
    m_axi_WEIGHTS_BREADY => m_axi_WEIGHTS_BREADY,
    m_axi_WEIGHTS_BRESP => m_axi_WEIGHTS_BRESP,
    m_axi_WEIGHTS_BID => m_axi_WEIGHTS_BID,
    m_axi_WEIGHTS_BUSER => m_axi_WEIGHTS_BUSER,
    s_axi_CTRL_ARADDR => s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARREADY => s_axi_CTRL_ARREADY,
    s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
    s_axi_CTRL_AWADDR => s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWREADY => s_axi_CTRL_AWREADY,
    s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
    s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
    s_axi_CTRL_BRESP => s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
    s_axi_CTRL_RDATA => s_axi_CTRL_RDATA,
    s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
    s_axi_CTRL_RRESP => s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
    s_axi_CTRL_WDATA => s_axi_CTRL_WDATA,
    s_axi_CTRL_WREADY => s_axi_CTRL_WREADY,
    s_axi_CTRL_WSTRB => s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID => s_axi_CTRL_WVALID,
    s_axi_control_ARADDR => s_axi_control_ARADDR,
    s_axi_control_ARREADY => s_axi_control_ARREADY,
    s_axi_control_ARVALID => s_axi_control_ARVALID,
    s_axi_control_AWADDR => s_axi_control_AWADDR,
    s_axi_control_AWREADY => s_axi_control_AWREADY,
    s_axi_control_AWVALID => s_axi_control_AWVALID,
    s_axi_control_BREADY => s_axi_control_BREADY,
    s_axi_control_BRESP => s_axi_control_BRESP,
    s_axi_control_BVALID => s_axi_control_BVALID,
    s_axi_control_RDATA => s_axi_control_RDATA,
    s_axi_control_RREADY => s_axi_control_RREADY,
    s_axi_control_RRESP => s_axi_control_RRESP,
    s_axi_control_RVALID => s_axi_control_RVALID,
    s_axi_control_WDATA => s_axi_control_WDATA,
    s_axi_control_WREADY => s_axi_control_WREADY,
    s_axi_control_WSTRB => s_axi_control_WSTRB,
    s_axi_control_WVALID => s_axi_control_WVALID,
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    interrupt => interrupt,
    m_axi_INPUT_r_ARADDR => m_axi_INPUT_r_ARADDR,
    m_axi_INPUT_r_ARBURST => m_axi_INPUT_r_ARBURST,
    m_axi_INPUT_r_ARCACHE => m_axi_INPUT_r_ARCACHE,
    m_axi_INPUT_r_ARID => m_axi_INPUT_r_ARID,
    m_axi_INPUT_r_ARLEN => m_axi_INPUT_r_ARLEN,
    m_axi_INPUT_r_ARLOCK => m_axi_INPUT_r_ARLOCK,
    m_axi_INPUT_r_ARPROT => m_axi_INPUT_r_ARPROT,
    m_axi_INPUT_r_ARQOS => m_axi_INPUT_r_ARQOS,
    m_axi_INPUT_r_ARREADY => m_axi_INPUT_r_ARREADY,
    m_axi_INPUT_r_ARREGION => m_axi_INPUT_r_ARREGION,
    m_axi_INPUT_r_ARSIZE => m_axi_INPUT_r_ARSIZE,
    m_axi_INPUT_r_ARVALID => m_axi_INPUT_r_ARVALID,
    m_axi_INPUT_r_AWADDR => m_axi_INPUT_r_AWADDR,
    m_axi_INPUT_r_AWBURST => m_axi_INPUT_r_AWBURST,
    m_axi_INPUT_r_AWCACHE => m_axi_INPUT_r_AWCACHE,
    m_axi_INPUT_r_AWID => m_axi_INPUT_r_AWID,
    m_axi_INPUT_r_AWLEN => m_axi_INPUT_r_AWLEN,
    m_axi_INPUT_r_AWLOCK => m_axi_INPUT_r_AWLOCK,
    m_axi_INPUT_r_AWPROT => m_axi_INPUT_r_AWPROT,
    m_axi_INPUT_r_AWQOS => m_axi_INPUT_r_AWQOS,
    m_axi_INPUT_r_AWREADY => m_axi_INPUT_r_AWREADY,
    m_axi_INPUT_r_AWREGION => m_axi_INPUT_r_AWREGION,
    m_axi_INPUT_r_AWSIZE => m_axi_INPUT_r_AWSIZE,
    m_axi_INPUT_r_AWVALID => m_axi_INPUT_r_AWVALID,
    m_axi_INPUT_r_BID => m_axi_INPUT_r_BID,
    m_axi_INPUT_r_BREADY => m_axi_INPUT_r_BREADY,
    m_axi_INPUT_r_BRESP => m_axi_INPUT_r_BRESP,
    m_axi_INPUT_r_BVALID => m_axi_INPUT_r_BVALID,
    m_axi_INPUT_r_RDATA => m_axi_INPUT_r_RDATA,
    m_axi_INPUT_r_RID => m_axi_INPUT_r_RID,
    m_axi_INPUT_r_RLAST => m_axi_INPUT_r_RLAST,
    m_axi_INPUT_r_RREADY => m_axi_INPUT_r_RREADY,
    m_axi_INPUT_r_RRESP => m_axi_INPUT_r_RRESP,
    m_axi_INPUT_r_RVALID => m_axi_INPUT_r_RVALID,
    m_axi_INPUT_r_WDATA => m_axi_INPUT_r_WDATA,
    m_axi_INPUT_r_WID => m_axi_INPUT_r_WID,
    m_axi_INPUT_r_WLAST => m_axi_INPUT_r_WLAST,
    m_axi_INPUT_r_WREADY => m_axi_INPUT_r_WREADY,
    m_axi_INPUT_r_WSTRB => m_axi_INPUT_r_WSTRB,
    m_axi_INPUT_r_WVALID => m_axi_INPUT_r_WVALID,
    m_axi_OUTPUT_r_ARADDR => m_axi_OUTPUT_r_ARADDR,
    m_axi_OUTPUT_r_ARBURST => m_axi_OUTPUT_r_ARBURST,
    m_axi_OUTPUT_r_ARCACHE => m_axi_OUTPUT_r_ARCACHE,
    m_axi_OUTPUT_r_ARID => m_axi_OUTPUT_r_ARID,
    m_axi_OUTPUT_r_ARLEN => m_axi_OUTPUT_r_ARLEN,
    m_axi_OUTPUT_r_ARLOCK => m_axi_OUTPUT_r_ARLOCK,
    m_axi_OUTPUT_r_ARPROT => m_axi_OUTPUT_r_ARPROT,
    m_axi_OUTPUT_r_ARQOS => m_axi_OUTPUT_r_ARQOS,
    m_axi_OUTPUT_r_ARREADY => m_axi_OUTPUT_r_ARREADY,
    m_axi_OUTPUT_r_ARREGION => m_axi_OUTPUT_r_ARREGION,
    m_axi_OUTPUT_r_ARSIZE => m_axi_OUTPUT_r_ARSIZE,
    m_axi_OUTPUT_r_ARVALID => m_axi_OUTPUT_r_ARVALID,
    m_axi_OUTPUT_r_AWADDR => m_axi_OUTPUT_r_AWADDR,
    m_axi_OUTPUT_r_AWBURST => m_axi_OUTPUT_r_AWBURST,
    m_axi_OUTPUT_r_AWCACHE => m_axi_OUTPUT_r_AWCACHE,
    m_axi_OUTPUT_r_AWID => m_axi_OUTPUT_r_AWID,
    m_axi_OUTPUT_r_AWLEN => m_axi_OUTPUT_r_AWLEN,
    m_axi_OUTPUT_r_AWLOCK => m_axi_OUTPUT_r_AWLOCK,
    m_axi_OUTPUT_r_AWPROT => m_axi_OUTPUT_r_AWPROT,
    m_axi_OUTPUT_r_AWQOS => m_axi_OUTPUT_r_AWQOS,
    m_axi_OUTPUT_r_AWREADY => m_axi_OUTPUT_r_AWREADY,
    m_axi_OUTPUT_r_AWREGION => m_axi_OUTPUT_r_AWREGION,
    m_axi_OUTPUT_r_AWSIZE => m_axi_OUTPUT_r_AWSIZE,
    m_axi_OUTPUT_r_AWVALID => m_axi_OUTPUT_r_AWVALID,
    m_axi_OUTPUT_r_BID => m_axi_OUTPUT_r_BID,
    m_axi_OUTPUT_r_BREADY => m_axi_OUTPUT_r_BREADY,
    m_axi_OUTPUT_r_BRESP => m_axi_OUTPUT_r_BRESP,
    m_axi_OUTPUT_r_BVALID => m_axi_OUTPUT_r_BVALID,
    m_axi_OUTPUT_r_RDATA => m_axi_OUTPUT_r_RDATA,
    m_axi_OUTPUT_r_RID => m_axi_OUTPUT_r_RID,
    m_axi_OUTPUT_r_RLAST => m_axi_OUTPUT_r_RLAST,
    m_axi_OUTPUT_r_RREADY => m_axi_OUTPUT_r_RREADY,
    m_axi_OUTPUT_r_RRESP => m_axi_OUTPUT_r_RRESP,
    m_axi_OUTPUT_r_RVALID => m_axi_OUTPUT_r_RVALID,
    m_axi_OUTPUT_r_WDATA => m_axi_OUTPUT_r_WDATA,
    m_axi_OUTPUT_r_WID => m_axi_OUTPUT_r_WID,
    m_axi_OUTPUT_r_WLAST => m_axi_OUTPUT_r_WLAST,
    m_axi_OUTPUT_r_WREADY => m_axi_OUTPUT_r_WREADY,
    m_axi_OUTPUT_r_WSTRB => m_axi_OUTPUT_r_WSTRB,
    m_axi_OUTPUT_r_WVALID => m_axi_OUTPUT_r_WVALID
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file ecg_cnn_component.vhd when simulating
-- the core, ecg_cnn_component. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



