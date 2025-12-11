--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Thu Dec 11 00:35:46 2025
--Host        : LAPTOP-JU02PEUM running 64-bit major release  (build 9200)
--Command     : generate_target system_bd_wrapper.bd
--Design      : system_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_bd_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_rtl_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_rtl_2_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_rtl_0 : in STD_LOGIC;
    uart_rtl_1_rxd : in STD_LOGIC;
    uart_rtl_1_txd : out STD_LOGIC
  );
end system_bd_wrapper;

architecture STRUCTURE of system_bd_wrapper is
  component system_bd is
  port (
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_rtl_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_rtl_2_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_rtl_1_rxd : in STD_LOGIC;
    uart_rtl_1_txd : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC
  );
  end component system_bd;
begin
system_bd_i: component system_bd
     port map (
      clk_100MHz => clk_100MHz,
      gpio_rtl_0_tri_o(2 downto 0) => gpio_rtl_0_tri_o(2 downto 0),
      gpio_rtl_1_tri_o(7 downto 0) => gpio_rtl_1_tri_o(7 downto 0),
      gpio_rtl_2_tri_o(7 downto 0) => gpio_rtl_2_tri_o(7 downto 0),
      reset_rtl_0 => reset_rtl_0,
      uart_rtl_1_rxd => uart_rtl_1_rxd,
      uart_rtl_1_txd => uart_rtl_1_txd
    );
end STRUCTURE;
