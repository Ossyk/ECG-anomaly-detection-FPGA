--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Mon Nov 17 01:34:12 2025
--Host        : LAPTOP-JU02PEUM running 64-bit major release  (build 9200)
--Command     : generate_target system_bd.bd
--Design      : system_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_CVHQOW is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 7 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 63 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 63 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 63 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_0_local_memory_imp_CVHQOW;

architecture STRUCTURE of microblaze_0_local_memory_imp_CVHQOW is
  component system_bd_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 63 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 7 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 63 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 63 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 63 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 7 )
  );
  end component system_bd_dlmb_v10_0;
  component system_bd_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 63 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 7 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 63 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 63 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 63 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 7 )
  );
  end component system_bd_ilmb_v10_0;
  component system_bd_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 63 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 7 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 63 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 7 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 63 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 63 )
  );
  end component system_bd_dlmb_bram_if_cntlr_0;
  component system_bd_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 63 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 7 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 63 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 7 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 63 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 63 )
  );
  end component system_bd_ilmb_bram_if_cntlr_0;
  component system_bd_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component system_bd_lmb_bram_0;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 64 > system_bd microblaze_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
dlmb_bram_if_cntlr: component system_bd_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(63),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(62),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(61),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(60),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(59),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(58),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(57),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(56),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(55),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(54),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(53),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(52),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(51),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(50),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(49),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(48),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(47),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(46),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(45),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(44),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(43),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(42),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(41),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(40),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(39),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(38),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(37),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(36),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(35),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(34),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(33),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(32),
      BRAM_Din_A(32) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(33) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(34) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(35) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(36) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(37) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(38) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(39) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(40) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(41) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(42) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(43) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(44) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(45) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(46) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(47) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(48) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(49) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(50) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(51) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(52) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(53) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(54) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(55) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(56) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(57) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(58) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(59) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(60) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(61) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(62) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(63) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 63) => microblaze_0_dlmb_cntlr_DIN(0 to 63),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 7) => microblaze_0_dlmb_cntlr_WE(0 to 7),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 7) => microblaze_0_dlmb_bus_BE(0 to 7),
      LMB_Clk => LMB_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst,
      LMB_WriteDBus(0 to 63) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 63),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 63) => microblaze_0_dlmb_bus_READDBUS(0 to 63),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component system_bd_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 7) => microblaze_0_dlmb_bus_BE(0 to 7),
      LMB_CE => DLMB_ce,
      LMB_Clk => LMB_Clk,
      LMB_ReadDBus(0 to 63) => DLMB_readdbus(0 to 63),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => DLMB_ready,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => DLMB_ue,
      LMB_Wait => DLMB_wait,
      LMB_WriteDBus(0 to 63) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 63),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => DLMB_abus(0 to 31),
      M_AddrStrobe => DLMB_addrstrobe,
      M_BE(0 to 7) => DLMB_be(0 to 7),
      M_DBus(0 to 63) => DLMB_writedbus(0 to 63),
      M_ReadStrobe => DLMB_readstrobe,
      M_WriteStrobe => DLMB_writestrobe,
      SYS_Rst => SYS_Rst,
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 63) => microblaze_0_dlmb_bus_READDBUS(0 to 63),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component system_bd_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(63),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(62),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(61),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(60),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(59),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(58),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(57),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(56),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(55),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(54),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(53),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(52),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(51),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(50),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(49),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(48),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(47),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(46),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(45),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(44),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(43),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(42),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(41),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(40),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(39),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(38),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(37),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(36),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(35),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(34),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(33),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(32),
      BRAM_Din_A(32) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(33) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(34) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(35) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(36) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(37) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(38) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(39) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(40) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(41) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(42) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(43) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(44) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(45) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(46) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(47) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(48) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(49) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(50) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(51) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(52) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(53) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(54) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(55) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(56) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(57) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(58) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(59) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(60) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(61) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(62) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(63) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 63) => microblaze_0_ilmb_cntlr_DIN(0 to 63),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 7) => microblaze_0_ilmb_cntlr_WE(0 to 7),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 7) => microblaze_0_ilmb_bus_BE(0 to 7),
      LMB_Clk => LMB_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst,
      LMB_WriteDBus(0 to 63) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 63),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 63) => microblaze_0_ilmb_bus_READDBUS(0 to 63),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component system_bd_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 7) => microblaze_0_ilmb_bus_BE(0 to 7),
      LMB_CE => ILMB_ce,
      LMB_Clk => LMB_Clk,
      LMB_ReadDBus(0 to 63) => ILMB_readdbus(0 to 63),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => ILMB_ready,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => ILMB_ue,
      LMB_Wait => ILMB_wait,
      LMB_WriteDBus(0 to 63) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 63),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => ILMB_abus(0 to 31),
      M_AddrStrobe => ILMB_addrstrobe,
      M_BE(0 to 7) => B"00000000",
      M_DBus(0 to 63) => B"0000000000000000000000000000000000000000000000000000000000000000",
      M_ReadStrobe => ILMB_readstrobe,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst,
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 63) => microblaze_0_ilmb_bus_READDBUS(0 to 63),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component system_bd_lmb_bram_0
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(63) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(62) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(61) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(60) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(59) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(58) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(57) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(56) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(55) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(54) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(53) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(52) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(51) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(50) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(49) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(48) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(47) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(46) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(45) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(44) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(43) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(42) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(41) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(40) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(39) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(38) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(37) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(36) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(35) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(34) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(33) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(32) => microblaze_0_dlmb_cntlr_DIN(31),
      dina(31) => microblaze_0_dlmb_cntlr_DIN(32),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(33),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(34),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(35),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(36),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(37),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(38),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(39),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(40),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(41),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(42),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(43),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(44),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(45),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(46),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(47),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(48),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(49),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(50),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(51),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(52),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(53),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(54),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(55),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(56),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(57),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(58),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(59),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(60),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(61),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(62),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(63),
      dinb(63) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(62) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(61) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(60) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(59) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(58) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(57) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(56) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(55) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(54) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(53) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(52) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(51) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(50) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(49) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(48) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(47) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(46) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(45) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(44) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(43) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(42) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(41) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(40) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(39) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(38) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(37) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(36) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(35) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(34) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(33) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(32) => microblaze_0_ilmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(32),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(33),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(34),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(35),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(36),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(37),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(38),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(39),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(40),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(41),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(42),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(43),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(44),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(45),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(46),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(47),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(48),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(49),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(50),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(51),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(52),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(53),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(54),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(55),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(56),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(57),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(58),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(59),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(60),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(61),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(62),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(63),
      douta(63 downto 0) => microblaze_0_dlmb_cntlr_DOUT(63 downto 0),
      doutb(63 downto 0) => microblaze_0_ilmb_cntlr_DOUT(63 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => microblaze_0_ilmb_cntlr_RST,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(7) => microblaze_0_dlmb_cntlr_WE(0),
      wea(6) => microblaze_0_dlmb_cntlr_WE(1),
      wea(5) => microblaze_0_dlmb_cntlr_WE(2),
      wea(4) => microblaze_0_dlmb_cntlr_WE(3),
      wea(3) => microblaze_0_dlmb_cntlr_WE(4),
      wea(2) => microblaze_0_dlmb_cntlr_WE(5),
      wea(1) => microblaze_0_dlmb_cntlr_WE(6),
      wea(0) => microblaze_0_dlmb_cntlr_WE(7),
      web(7) => microblaze_0_ilmb_cntlr_WE(0),
      web(6) => microblaze_0_ilmb_cntlr_WE(1),
      web(5) => microblaze_0_ilmb_cntlr_WE(2),
      web(4) => microblaze_0_ilmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(4),
      web(2) => microblaze_0_ilmb_cntlr_WE(5),
      web(1) => microblaze_0_ilmb_cntlr_WE(6),
      web(0) => microblaze_0_ilmb_cntlr_WE(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_bd is
  port (
    clk_100MHz : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_rtl_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_rtl_2_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_rtl_0 : in STD_LOGIC;
    uart_rtl_1_rxd : in STD_LOGIC;
    uart_rtl_1_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_bd : entity is "system_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=17,numNonXlnxBlks=1,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=24,da_board_cnt=11,da_bram_cntlr_cnt=11,da_clkrst_cnt=4,da_mb_cnt=4,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system_bd : entity is "system_bd.hwdef";
end system_bd;

architecture STRUCTURE of system_bd is
  component system_bd_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 63 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 63 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 63 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 7 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );
  end component system_bd_microblaze_0_0;
  component system_bd_mdm_1_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component system_bd_mdm_1_0;
  component system_bd_clk_wiz_1_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component system_bd_clk_wiz_1_0;
  component system_bd_rst_clk_wiz_1_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_bd_rst_clk_wiz_1_100M_0;
  component system_bd_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component system_bd_axi_uartlite_0_0;
  component system_bd_axi_bram_ctrl_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_bd_axi_bram_ctrl_0_1;
  component system_bd_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component system_bd_blk_mem_gen_0_1;
  component system_bd_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_bd_axi_gpio_0_0;
  component system_bd_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component system_bd_axi_gpio_1_0;
  component system_bd_ecg_cnn_0_1 is
  port (
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_INPUT_r_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_INPUT_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_INPUT_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_INPUT_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_ARREADY : in STD_LOGIC;
    m_axi_INPUT_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_ARVALID : out STD_LOGIC;
    m_axi_INPUT_r_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_INPUT_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_INPUT_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_INPUT_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_AWREADY : in STD_LOGIC;
    m_axi_INPUT_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_AWVALID : out STD_LOGIC;
    m_axi_INPUT_r_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_INPUT_r_BREADY : out STD_LOGIC;
    m_axi_INPUT_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_BVALID : in STD_LOGIC;
    m_axi_INPUT_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_INPUT_r_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_INPUT_r_RLAST : in STD_LOGIC;
    m_axi_INPUT_r_RREADY : out STD_LOGIC;
    m_axi_INPUT_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_RVALID : in STD_LOGIC;
    m_axi_INPUT_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_INPUT_r_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_INPUT_r_WLAST : out STD_LOGIC;
    m_axi_INPUT_r_WREADY : in STD_LOGIC;
    m_axi_INPUT_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_WVALID : out STD_LOGIC;
    m_axi_OUTPUT_r_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_OUTPUT_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_OUTPUT_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_OUTPUT_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_ARREADY : in STD_LOGIC;
    m_axi_OUTPUT_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_ARVALID : out STD_LOGIC;
    m_axi_OUTPUT_r_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_OUTPUT_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_OUTPUT_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_OUTPUT_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_AWREADY : in STD_LOGIC;
    m_axi_OUTPUT_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_AWVALID : out STD_LOGIC;
    m_axi_OUTPUT_r_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_OUTPUT_r_BREADY : out STD_LOGIC;
    m_axi_OUTPUT_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_BVALID : in STD_LOGIC;
    m_axi_OUTPUT_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUTPUT_r_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_OUTPUT_r_RLAST : in STD_LOGIC;
    m_axi_OUTPUT_r_RREADY : out STD_LOGIC;
    m_axi_OUTPUT_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_RVALID : in STD_LOGIC;
    m_axi_OUTPUT_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUTPUT_r_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_OUTPUT_r_WLAST : out STD_LOGIC;
    m_axi_OUTPUT_r_WREADY : in STD_LOGIC;
    m_axi_OUTPUT_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_WVALID : out STD_LOGIC
  );
  end component system_bd_ecg_cnn_0_1;
  component system_bd_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_awready : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wlast : in STD_LOGIC;
    S03_AXI_wvalid : in STD_LOGIC;
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_bready : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rvalid : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC;
    S04_AXI_arready : out STD_LOGIC;
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rlast : out STD_LOGIC;
    S04_AXI_rvalid : out STD_LOGIC;
    S04_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC
  );
  end component system_bd_smartconnect_0_0;
  component system_bd_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_bd_xlconstant_0_2;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_wiz_1_locked : STD_LOGIC;
  signal ecg_cnn_0_m_axi_INPUT_r_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARREADY : STD_LOGIC;
  signal ecg_cnn_0_m_axi_INPUT_r_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_ARVALID : STD_LOGIC;
  signal ecg_cnn_0_m_axi_INPUT_r_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_RLAST : STD_LOGIC;
  signal ecg_cnn_0_m_axi_INPUT_r_RREADY : STD_LOGIC;
  signal ecg_cnn_0_m_axi_INPUT_r_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ecg_cnn_0_m_axi_INPUT_r_RVALID : STD_LOGIC;
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWREADY : STD_LOGIC;
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_AWVALID : STD_LOGIC;
  signal ecg_cnn_0_m_axi_OUTPUT_r_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_BREADY : STD_LOGIC;
  signal ecg_cnn_0_m_axi_OUTPUT_r_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_BVALID : STD_LOGIC;
  signal ecg_cnn_0_m_axi_OUTPUT_r_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_WLAST : STD_LOGIC;
  signal ecg_cnn_0_m_axi_OUTPUT_r_WREADY : STD_LOGIC;
  signal ecg_cnn_0_m_axi_OUTPUT_r_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ecg_cnn_0_m_axi_OUTPUT_r_WVALID : STD_LOGIC;
  signal mdm_1_debug_sys_rst : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_DC_AWLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DC_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DC_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DC_WLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DC_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DC_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DP_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal microblaze_0_M_AXI_IC_ARLOCK : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_IC_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IC_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IC_RLAST : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IC_RVALID : STD_LOGIC;
  signal microblaze_0_debug_CAPTURE : STD_LOGIC;
  signal microblaze_0_debug_CLK : STD_LOGIC;
  signal microblaze_0_debug_DISABLE : STD_LOGIC;
  signal microblaze_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_RST : STD_LOGIC;
  signal microblaze_0_debug_SHIFT : STD_LOGIC;
  signal microblaze_0_debug_TDI : STD_LOGIC;
  signal microblaze_0_debug_TDO : STD_LOGIC;
  signal microblaze_0_debug_UPDATE : STD_LOGIC;
  signal microblaze_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_dlmb_1_CE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READY : STD_LOGIC;
  signal microblaze_0_dlmb_1_UE : STD_LOGIC;
  signal microblaze_0_dlmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_CE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 63 );
  signal microblaze_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READY : STD_LOGIC;
  signal microblaze_0_ilmb_1_UE : STD_LOGIC;
  signal microblaze_0_ilmb_1_WAIT : STD_LOGIC;
  signal rst_clk_wiz_1_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_1_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_1_100M_mb_reset : STD_LOGIC;
  signal rst_clk_wiz_1_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal smartconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal smartconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal smartconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal smartconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_uartlite_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_ARREGION_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWREGION_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ecg_cnn_0_m_axi_INPUT_r_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARREGION_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_AWREGION_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ecg_cnn_0_m_axi_OUTPUT_r_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IC_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_microblaze_0_M_AXI_DC_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_DC_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_IC_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_microblaze_0_M_AXI_IC_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_clk_wiz_1_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M00_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_0 : label is "byte  0xC0000000 32 > system_bd blk_mem_gen_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of axi_bram_ctrl_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > system_bd microblaze_0_local_memory/dlmb_bram_if_cntlr system_bd axi_bram_ctrl_0";
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN system_bd_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of uart_rtl_1_rxd : signal is "xilinx.com:interface:uart:1.0 uart_rtl_1 RxD";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of uart_rtl_1_rxd : signal is "Master";
  attribute X_INTERFACE_INFO of uart_rtl_1_txd : signal is "xilinx.com:interface:uart:1.0 uart_rtl_1 TxD";
  attribute X_INTERFACE_INFO of gpio_rtl_0_tri_o : signal is "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_O";
  attribute X_INTERFACE_MODE of gpio_rtl_0_tri_o : signal is "Master";
  attribute X_INTERFACE_INFO of gpio_rtl_1_tri_o : signal is "xilinx.com:interface:gpio:1.0 gpio_rtl_1 TRI_O";
  attribute X_INTERFACE_MODE of gpio_rtl_1_tri_o : signal is "Master";
  attribute X_INTERFACE_INFO of gpio_rtl_2_tri_o : signal is "xilinx.com:interface:gpio:1.0 gpio_rtl_2 TRI_O";
  attribute X_INTERFACE_MODE of gpio_rtl_2_tri_o : signal is "Master";
begin
axi_bram_ctrl_0: component system_bd_axi_bram_ctrl_0_1
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      bram_addr_b(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_0_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_0_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(15 downto 0) => smartconnect_0_M00_AXI_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => smartconnect_0_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => smartconnect_0_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => smartconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => smartconnect_0_M00_AXI_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => smartconnect_0_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => smartconnect_0_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => smartconnect_0_M00_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rlast => smartconnect_0_M00_AXI_RLAST,
      s_axi_rready => smartconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => smartconnect_0_M00_AXI_WLAST,
      s_axi_wready => smartconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M00_AXI_WVALID
    );
axi_gpio_0: component system_bd_axi_gpio_0_0
     port map (
      gpio_io_o(2 downto 0) => gpio_rtl_0_tri_o(2 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arready => smartconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => smartconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => smartconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => smartconnect_0_M01_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M01_AXI_WVALID
    );
axi_gpio_1: component system_bd_axi_gpio_1_0
     port map (
      gpio2_io_o(7 downto 0) => gpio_rtl_2_tri_o(7 downto 0),
      gpio_io_o(7 downto 0) => gpio_rtl_1_tri_o(7 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => smartconnect_0_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arready => smartconnect_0_M02_AXI_ARREADY,
      s_axi_arvalid => smartconnect_0_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => smartconnect_0_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => smartconnect_0_M02_AXI_AWREADY,
      s_axi_awvalid => smartconnect_0_M02_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_0_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_0_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M02_AXI_WVALID
    );
axi_uartlite_0: component system_bd_axi_uartlite_0_0
     port map (
      interrupt => NLW_axi_uartlite_0_interrupt_UNCONNECTED,
      rx => uart_rtl_1_rxd,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(3 downto 0) => smartconnect_0_M04_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arready => smartconnect_0_M04_AXI_ARREADY,
      s_axi_arvalid => smartconnect_0_M04_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => smartconnect_0_M04_AXI_AWADDR(3 downto 0),
      s_axi_awready => smartconnect_0_M04_AXI_AWREADY,
      s_axi_awvalid => smartconnect_0_M04_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_0_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_0_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M04_AXI_WVALID,
      tx => uart_rtl_1_txd
    );
blk_mem_gen_0: component system_bd_blk_mem_gen_0_1
     port map (
      addra(31 downto 16) => B"0000000000000000",
      addra(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      addrb(31 downto 16) => B"0000000000000000",
      addrb(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(15 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_0_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_0_BRAM_PORTB_RST,
      rstb_busy => NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0)
    );
clk_wiz_1: component system_bd_clk_wiz_1_0
     port map (
      clk_in1 => clk_100MHz,
      clk_out1 => microblaze_0_Clk,
      locked => clk_wiz_1_locked,
      reset => xlconstant_0_dout(0)
    );
ecg_cnn_0: component system_bd_ecg_cnn_0_1
     port map (
      ap_clk => microblaze_0_Clk,
      ap_rst_n => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      interrupt => NLW_ecg_cnn_0_interrupt_UNCONNECTED,
      m_axi_INPUT_r_ARADDR(63 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARADDR(63 downto 0),
      m_axi_INPUT_r_ARBURST(1 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARBURST(1 downto 0),
      m_axi_INPUT_r_ARCACHE(3 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARCACHE(3 downto 0),
      m_axi_INPUT_r_ARID(0) => ecg_cnn_0_m_axi_INPUT_r_ARID(0),
      m_axi_INPUT_r_ARLEN(7 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARLEN(7 downto 0),
      m_axi_INPUT_r_ARLOCK(1 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARLOCK(1 downto 0),
      m_axi_INPUT_r_ARPROT(2 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARPROT(2 downto 0),
      m_axi_INPUT_r_ARQOS(3 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARQOS(3 downto 0),
      m_axi_INPUT_r_ARREADY => ecg_cnn_0_m_axi_INPUT_r_ARREADY,
      m_axi_INPUT_r_ARREGION(3 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_ARREGION_UNCONNECTED(3 downto 0),
      m_axi_INPUT_r_ARSIZE(2 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARSIZE(2 downto 0),
      m_axi_INPUT_r_ARVALID => ecg_cnn_0_m_axi_INPUT_r_ARVALID,
      m_axi_INPUT_r_AWADDR(63 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWADDR_UNCONNECTED(63 downto 0),
      m_axi_INPUT_r_AWBURST(1 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWBURST_UNCONNECTED(1 downto 0),
      m_axi_INPUT_r_AWCACHE(3 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWCACHE_UNCONNECTED(3 downto 0),
      m_axi_INPUT_r_AWID(0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWID_UNCONNECTED(0),
      m_axi_INPUT_r_AWLEN(7 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWLEN_UNCONNECTED(7 downto 0),
      m_axi_INPUT_r_AWLOCK(1 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWLOCK_UNCONNECTED(1 downto 0),
      m_axi_INPUT_r_AWPROT(2 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWPROT_UNCONNECTED(2 downto 0),
      m_axi_INPUT_r_AWQOS(3 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWQOS_UNCONNECTED(3 downto 0),
      m_axi_INPUT_r_AWREADY => '0',
      m_axi_INPUT_r_AWREGION(3 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWREGION_UNCONNECTED(3 downto 0),
      m_axi_INPUT_r_AWSIZE(2 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_AWSIZE_UNCONNECTED(2 downto 0),
      m_axi_INPUT_r_AWVALID => NLW_ecg_cnn_0_m_axi_INPUT_r_AWVALID_UNCONNECTED,
      m_axi_INPUT_r_BID(0) => '0',
      m_axi_INPUT_r_BREADY => NLW_ecg_cnn_0_m_axi_INPUT_r_BREADY_UNCONNECTED,
      m_axi_INPUT_r_BRESP(1 downto 0) => B"00",
      m_axi_INPUT_r_BVALID => '0',
      m_axi_INPUT_r_RDATA(31 downto 0) => ecg_cnn_0_m_axi_INPUT_r_RDATA(31 downto 0),
      m_axi_INPUT_r_RID(0) => ecg_cnn_0_m_axi_INPUT_r_RID(0),
      m_axi_INPUT_r_RLAST => ecg_cnn_0_m_axi_INPUT_r_RLAST,
      m_axi_INPUT_r_RREADY => ecg_cnn_0_m_axi_INPUT_r_RREADY,
      m_axi_INPUT_r_RRESP(1 downto 0) => ecg_cnn_0_m_axi_INPUT_r_RRESP(1 downto 0),
      m_axi_INPUT_r_RVALID => ecg_cnn_0_m_axi_INPUT_r_RVALID,
      m_axi_INPUT_r_WDATA(31 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_WDATA_UNCONNECTED(31 downto 0),
      m_axi_INPUT_r_WID(0) => NLW_ecg_cnn_0_m_axi_INPUT_r_WID_UNCONNECTED(0),
      m_axi_INPUT_r_WLAST => NLW_ecg_cnn_0_m_axi_INPUT_r_WLAST_UNCONNECTED,
      m_axi_INPUT_r_WREADY => '0',
      m_axi_INPUT_r_WSTRB(3 downto 0) => NLW_ecg_cnn_0_m_axi_INPUT_r_WSTRB_UNCONNECTED(3 downto 0),
      m_axi_INPUT_r_WVALID => NLW_ecg_cnn_0_m_axi_INPUT_r_WVALID_UNCONNECTED,
      m_axi_OUTPUT_r_ARADDR(63 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARADDR_UNCONNECTED(63 downto 0),
      m_axi_OUTPUT_r_ARBURST(1 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARBURST_UNCONNECTED(1 downto 0),
      m_axi_OUTPUT_r_ARCACHE(3 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARCACHE_UNCONNECTED(3 downto 0),
      m_axi_OUTPUT_r_ARID(0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARID_UNCONNECTED(0),
      m_axi_OUTPUT_r_ARLEN(7 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARLEN_UNCONNECTED(7 downto 0),
      m_axi_OUTPUT_r_ARLOCK(1 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARLOCK_UNCONNECTED(1 downto 0),
      m_axi_OUTPUT_r_ARPROT(2 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARPROT_UNCONNECTED(2 downto 0),
      m_axi_OUTPUT_r_ARQOS(3 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARQOS_UNCONNECTED(3 downto 0),
      m_axi_OUTPUT_r_ARREADY => '0',
      m_axi_OUTPUT_r_ARREGION(3 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARREGION_UNCONNECTED(3 downto 0),
      m_axi_OUTPUT_r_ARSIZE(2 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARSIZE_UNCONNECTED(2 downto 0),
      m_axi_OUTPUT_r_ARVALID => NLW_ecg_cnn_0_m_axi_OUTPUT_r_ARVALID_UNCONNECTED,
      m_axi_OUTPUT_r_AWADDR(63 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWADDR(63 downto 0),
      m_axi_OUTPUT_r_AWBURST(1 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWBURST(1 downto 0),
      m_axi_OUTPUT_r_AWCACHE(3 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWCACHE(3 downto 0),
      m_axi_OUTPUT_r_AWID(0) => ecg_cnn_0_m_axi_OUTPUT_r_AWID(0),
      m_axi_OUTPUT_r_AWLEN(7 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWLEN(7 downto 0),
      m_axi_OUTPUT_r_AWLOCK(1 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWLOCK(1 downto 0),
      m_axi_OUTPUT_r_AWPROT(2 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWPROT(2 downto 0),
      m_axi_OUTPUT_r_AWQOS(3 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWQOS(3 downto 0),
      m_axi_OUTPUT_r_AWREADY => ecg_cnn_0_m_axi_OUTPUT_r_AWREADY,
      m_axi_OUTPUT_r_AWREGION(3 downto 0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_AWREGION_UNCONNECTED(3 downto 0),
      m_axi_OUTPUT_r_AWSIZE(2 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWSIZE(2 downto 0),
      m_axi_OUTPUT_r_AWVALID => ecg_cnn_0_m_axi_OUTPUT_r_AWVALID,
      m_axi_OUTPUT_r_BID(0) => ecg_cnn_0_m_axi_OUTPUT_r_BID(0),
      m_axi_OUTPUT_r_BREADY => ecg_cnn_0_m_axi_OUTPUT_r_BREADY,
      m_axi_OUTPUT_r_BRESP(1 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_BRESP(1 downto 0),
      m_axi_OUTPUT_r_BVALID => ecg_cnn_0_m_axi_OUTPUT_r_BVALID,
      m_axi_OUTPUT_r_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_OUTPUT_r_RID(0) => '0',
      m_axi_OUTPUT_r_RLAST => '0',
      m_axi_OUTPUT_r_RREADY => NLW_ecg_cnn_0_m_axi_OUTPUT_r_RREADY_UNCONNECTED,
      m_axi_OUTPUT_r_RRESP(1 downto 0) => B"00",
      m_axi_OUTPUT_r_RVALID => '0',
      m_axi_OUTPUT_r_WDATA(31 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_WDATA(31 downto 0),
      m_axi_OUTPUT_r_WID(0) => NLW_ecg_cnn_0_m_axi_OUTPUT_r_WID_UNCONNECTED(0),
      m_axi_OUTPUT_r_WLAST => ecg_cnn_0_m_axi_OUTPUT_r_WLAST,
      m_axi_OUTPUT_r_WREADY => ecg_cnn_0_m_axi_OUTPUT_r_WREADY,
      m_axi_OUTPUT_r_WSTRB(3 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_WSTRB(3 downto 0),
      m_axi_OUTPUT_r_WVALID => ecg_cnn_0_m_axi_OUTPUT_r_WVALID,
      s_axi_CTRL_ARADDR(5 downto 0) => smartconnect_0_M03_AXI_ARADDR(5 downto 0),
      s_axi_CTRL_ARREADY => smartconnect_0_M03_AXI_ARREADY,
      s_axi_CTRL_ARVALID => smartconnect_0_M03_AXI_ARVALID,
      s_axi_CTRL_AWADDR(5 downto 0) => smartconnect_0_M03_AXI_AWADDR(5 downto 0),
      s_axi_CTRL_AWREADY => smartconnect_0_M03_AXI_AWREADY,
      s_axi_CTRL_AWVALID => smartconnect_0_M03_AXI_AWVALID,
      s_axi_CTRL_BREADY => smartconnect_0_M03_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => smartconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => smartconnect_0_M03_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => smartconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => smartconnect_0_M03_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => smartconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => smartconnect_0_M03_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => smartconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => smartconnect_0_M03_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => smartconnect_0_M03_AXI_WVALID
    );
mdm_1: component system_bd_mdm_1_0
     port map (
      Dbg_Capture_0 => microblaze_0_debug_CAPTURE,
      Dbg_Clk_0 => microblaze_0_debug_CLK,
      Dbg_Disable_0 => microblaze_0_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => microblaze_0_debug_RST,
      Dbg_Shift_0 => microblaze_0_debug_SHIFT,
      Dbg_TDI_0 => microblaze_0_debug_TDI,
      Dbg_TDO_0 => microblaze_0_debug_TDO,
      Dbg_Update_0 => microblaze_0_debug_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst
    );
microblaze_0: component system_bd_microblaze_0_0
     port map (
      Byte_Enable(0 to 7) => microblaze_0_dlmb_1_BE(0 to 7),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_1_CE,
      DReady => microblaze_0_dlmb_1_READY,
      DUE => microblaze_0_dlmb_1_UE,
      DWait => microblaze_0_dlmb_1_WAIT,
      D_AS => microblaze_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 63) => microblaze_0_dlmb_1_READDBUS(0 to 63),
      Data_Write(0 to 63) => microblaze_0_dlmb_1_WRITEDBUS(0 to 63),
      Dbg_Capture => microblaze_0_debug_CAPTURE,
      Dbg_Clk => microblaze_0_debug_CLK,
      Dbg_Disable => microblaze_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Shift => microblaze_0_debug_SHIFT,
      Dbg_TDI => microblaze_0_debug_TDI,
      Dbg_TDO => microblaze_0_debug_TDO,
      Dbg_Update => microblaze_0_debug_UPDATE,
      Debug_Rst => microblaze_0_debug_RST,
      ICE => microblaze_0_ilmb_1_CE,
      IFetch => microblaze_0_ilmb_1_READSTROBE,
      IReady => microblaze_0_ilmb_1_READY,
      IUE => microblaze_0_ilmb_1_UE,
      IWAIT => microblaze_0_ilmb_1_WAIT,
      I_AS => microblaze_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 63) => microblaze_0_ilmb_1_READDBUS(0 to 63),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_microblaze_0_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DC_ARADDR(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      M_AXI_DC_ARBURST(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      M_AXI_DC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      M_AXI_DC_ARID(0) => NLW_microblaze_0_M_AXI_DC_ARID_UNCONNECTED(0),
      M_AXI_DC_ARLEN(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      M_AXI_DC_ARLOCK => microblaze_0_M_AXI_DC_ARLOCK,
      M_AXI_DC_ARPROT(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      M_AXI_DC_ARQOS(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      M_AXI_DC_ARREADY => microblaze_0_M_AXI_DC_ARREADY,
      M_AXI_DC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      M_AXI_DC_ARVALID => microblaze_0_M_AXI_DC_ARVALID,
      M_AXI_DC_AWADDR(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      M_AXI_DC_AWBURST(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      M_AXI_DC_AWCACHE(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      M_AXI_DC_AWID(0) => NLW_microblaze_0_M_AXI_DC_AWID_UNCONNECTED(0),
      M_AXI_DC_AWLEN(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      M_AXI_DC_AWLOCK => microblaze_0_M_AXI_DC_AWLOCK,
      M_AXI_DC_AWPROT(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      M_AXI_DC_AWQOS(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      M_AXI_DC_AWREADY => microblaze_0_M_AXI_DC_AWREADY,
      M_AXI_DC_AWSIZE(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      M_AXI_DC_AWVALID => microblaze_0_M_AXI_DC_AWVALID,
      M_AXI_DC_BID(0) => '0',
      M_AXI_DC_BREADY => microblaze_0_M_AXI_DC_BREADY,
      M_AXI_DC_BRESP(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      M_AXI_DC_BVALID => microblaze_0_M_AXI_DC_BVALID,
      M_AXI_DC_RDATA(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      M_AXI_DC_RID(0) => '0',
      M_AXI_DC_RLAST => microblaze_0_M_AXI_DC_RLAST,
      M_AXI_DC_RREADY => microblaze_0_M_AXI_DC_RREADY,
      M_AXI_DC_RRESP(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      M_AXI_DC_RVALID => microblaze_0_M_AXI_DC_RVALID,
      M_AXI_DC_WDATA(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      M_AXI_DC_WLAST => microblaze_0_M_AXI_DC_WLAST,
      M_AXI_DC_WREADY => microblaze_0_M_AXI_DC_WREADY,
      M_AXI_DC_WSTRB(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      M_AXI_DC_WVALID => microblaze_0_M_AXI_DC_WVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => microblaze_0_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => microblaze_0_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_M_AXI_DP_WVALID,
      M_AXI_IC_ARADDR(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      M_AXI_IC_ARBURST(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      M_AXI_IC_ARCACHE(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      M_AXI_IC_ARID(0) => NLW_microblaze_0_M_AXI_IC_ARID_UNCONNECTED(0),
      M_AXI_IC_ARLEN(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      M_AXI_IC_ARLOCK => microblaze_0_M_AXI_IC_ARLOCK,
      M_AXI_IC_ARPROT(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      M_AXI_IC_ARQOS(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      M_AXI_IC_ARREADY => microblaze_0_M_AXI_IC_ARREADY,
      M_AXI_IC_ARSIZE(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      M_AXI_IC_ARVALID => microblaze_0_M_AXI_IC_ARVALID,
      M_AXI_IC_AWADDR(31 downto 0) => NLW_microblaze_0_M_AXI_IC_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_IC_AWBURST(1 downto 0) => NLW_microblaze_0_M_AXI_IC_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_IC_AWCACHE(3 downto 0) => NLW_microblaze_0_M_AXI_IC_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_IC_AWID(0) => NLW_microblaze_0_M_AXI_IC_AWID_UNCONNECTED(0),
      M_AXI_IC_AWLEN(7 downto 0) => NLW_microblaze_0_M_AXI_IC_AWLEN_UNCONNECTED(7 downto 0),
      M_AXI_IC_AWLOCK => NLW_microblaze_0_M_AXI_IC_AWLOCK_UNCONNECTED,
      M_AXI_IC_AWPROT(2 downto 0) => NLW_microblaze_0_M_AXI_IC_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_IC_AWQOS(3 downto 0) => NLW_microblaze_0_M_AXI_IC_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_IC_AWREADY => '0',
      M_AXI_IC_AWSIZE(2 downto 0) => NLW_microblaze_0_M_AXI_IC_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_IC_AWVALID => NLW_microblaze_0_M_AXI_IC_AWVALID_UNCONNECTED,
      M_AXI_IC_BID(0) => '0',
      M_AXI_IC_BREADY => NLW_microblaze_0_M_AXI_IC_BREADY_UNCONNECTED,
      M_AXI_IC_BRESP(1 downto 0) => B"00",
      M_AXI_IC_BVALID => '0',
      M_AXI_IC_RDATA(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      M_AXI_IC_RID(0) => '0',
      M_AXI_IC_RLAST => microblaze_0_M_AXI_IC_RLAST,
      M_AXI_IC_RREADY => microblaze_0_M_AXI_IC_RREADY,
      M_AXI_IC_RRESP(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      M_AXI_IC_RVALID => microblaze_0_M_AXI_IC_RVALID,
      M_AXI_IC_WDATA(31 downto 0) => NLW_microblaze_0_M_AXI_IC_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_IC_WLAST => NLW_microblaze_0_M_AXI_IC_WLAST_UNCONNECTED,
      M_AXI_IC_WREADY => '0',
      M_AXI_IC_WSTRB(3 downto 0) => NLW_microblaze_0_M_AXI_IC_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_IC_WVALID => NLW_microblaze_0_M_AXI_IC_WVALID_UNCONNECTED,
      Read_Strobe => microblaze_0_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_1_100M_mb_reset,
      Write_Strobe => microblaze_0_dlmb_1_WRITESTROBE
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_CVHQOW
     port map (
      DLMB_abus(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 7) => microblaze_0_dlmb_1_BE(0 to 7),
      DLMB_ce => microblaze_0_dlmb_1_CE,
      DLMB_readdbus(0 to 63) => microblaze_0_dlmb_1_READDBUS(0 to 63),
      DLMB_readstrobe => microblaze_0_dlmb_1_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_1_READY,
      DLMB_ue => microblaze_0_dlmb_1_UE,
      DLMB_wait => microblaze_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 63) => microblaze_0_dlmb_1_WRITEDBUS(0 to 63),
      DLMB_writestrobe => microblaze_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_1_CE,
      ILMB_readdbus(0 to 63) => microblaze_0_ilmb_1_READDBUS(0 to 63),
      ILMB_readstrobe => microblaze_0_ilmb_1_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_1_READY,
      ILMB_ue => microblaze_0_ilmb_1_UE,
      ILMB_wait => microblaze_0_ilmb_1_WAIT,
      LMB_Clk => microblaze_0_Clk,
      SYS_Rst => rst_clk_wiz_1_100M_bus_struct_reset(0)
    );
rst_clk_wiz_1_100M: component system_bd_rst_clk_wiz_1_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_clk_wiz_1_100M_bus_struct_reset(0),
      dcm_locked => clk_wiz_1_locked,
      ext_reset_in => reset_rtl_0,
      interconnect_aresetn(0) => rst_clk_wiz_1_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => mdm_1_debug_sys_rst,
      mb_reset => rst_clk_wiz_1_100M_mb_reset,
      peripheral_aresetn(0) => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_1_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => microblaze_0_Clk
    );
smartconnect_0: component system_bd_smartconnect_0_0
     port map (
      M00_AXI_araddr(15 downto 0) => smartconnect_0_M00_AXI_ARADDR(15 downto 0),
      M00_AXI_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => smartconnect_0_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M00_AXI_arqos_UNCONNECTED(3 downto 0),
      M00_AXI_arready => smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(15 downto 0) => smartconnect_0_M00_AXI_AWADDR(15 downto 0),
      M00_AXI_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => smartconnect_0_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M00_AXI_awqos_UNCONNECTED(3 downto 0),
      M00_AXI_awready => smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => smartconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => smartconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      M01_AXI_araddr(8 downto 0) => smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => smartconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => smartconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => smartconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => smartconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => smartconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => smartconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => smartconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => smartconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => smartconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => smartconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => smartconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => smartconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => smartconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => smartconnect_0_M01_AXI_WVALID,
      M02_AXI_araddr(8 downto 0) => smartconnect_0_M02_AXI_ARADDR(8 downto 0),
      M02_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M02_AXI_arprot_UNCONNECTED(2 downto 0),
      M02_AXI_arready => smartconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => smartconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(8 downto 0) => smartconnect_0_M02_AXI_AWADDR(8 downto 0),
      M02_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M02_AXI_awprot_UNCONNECTED(2 downto 0),
      M02_AXI_awready => smartconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => smartconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => smartconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => smartconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => smartconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => smartconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => smartconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => smartconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => smartconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => smartconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => smartconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => smartconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => smartconnect_0_M02_AXI_WVALID,
      M03_AXI_araddr(5 downto 0) => smartconnect_0_M03_AXI_ARADDR(5 downto 0),
      M03_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED(2 downto 0),
      M03_AXI_arready => smartconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => smartconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(5 downto 0) => smartconnect_0_M03_AXI_AWADDR(5 downto 0),
      M03_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED(2 downto 0),
      M03_AXI_awready => smartconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => smartconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => smartconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => smartconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => smartconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => smartconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => smartconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => smartconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => smartconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => smartconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => smartconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => smartconnect_0_M03_AXI_WVALID,
      M04_AXI_araddr(3 downto 0) => smartconnect_0_M04_AXI_ARADDR(3 downto 0),
      M04_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED(2 downto 0),
      M04_AXI_arready => smartconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => smartconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(3 downto 0) => smartconnect_0_M04_AXI_AWADDR(3 downto 0),
      M04_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED(2 downto 0),
      M04_AXI_awready => smartconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => smartconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => smartconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => smartconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => smartconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => smartconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => smartconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => smartconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => smartconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => smartconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => smartconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => smartconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => smartconnect_0_M04_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready => microblaze_0_M_AXI_DP_ARREADY,
      S00_AXI_arvalid => microblaze_0_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready => microblaze_0_M_AXI_DP_AWREADY,
      S00_AXI_awvalid => microblaze_0_M_AXI_DP_AWVALID,
      S00_AXI_bready => microblaze_0_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid => microblaze_0_M_AXI_DP_BVALID,
      S00_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready => microblaze_0_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid => microblaze_0_M_AXI_DP_RVALID,
      S00_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready => microblaze_0_M_AXI_DP_WREADY,
      S00_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid => microblaze_0_M_AXI_DP_WVALID,
      S01_AXI_araddr(63 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARADDR(63 downto 0),
      S01_AXI_arburst(1 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => ecg_cnn_0_m_axi_INPUT_r_ARID(0),
      S01_AXI_arlen(7 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => ecg_cnn_0_m_axi_INPUT_r_ARLOCK(0),
      S01_AXI_arprot(2 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARQOS(3 downto 0),
      S01_AXI_arready => ecg_cnn_0_m_axi_INPUT_r_ARREADY,
      S01_AXI_arsize(2 downto 0) => ecg_cnn_0_m_axi_INPUT_r_ARSIZE(2 downto 0),
      S01_AXI_arvalid => ecg_cnn_0_m_axi_INPUT_r_ARVALID,
      S01_AXI_rdata(31 downto 0) => ecg_cnn_0_m_axi_INPUT_r_RDATA(31 downto 0),
      S01_AXI_rid(0) => ecg_cnn_0_m_axi_INPUT_r_RID(0),
      S01_AXI_rlast => ecg_cnn_0_m_axi_INPUT_r_RLAST,
      S01_AXI_rready => ecg_cnn_0_m_axi_INPUT_r_RREADY,
      S01_AXI_rresp(1 downto 0) => ecg_cnn_0_m_axi_INPUT_r_RRESP(1 downto 0),
      S01_AXI_rvalid => ecg_cnn_0_m_axi_INPUT_r_RVALID,
      S02_AXI_awaddr(63 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWADDR(63 downto 0),
      S02_AXI_awburst(1 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWCACHE(3 downto 0),
      S02_AXI_awid(0) => ecg_cnn_0_m_axi_OUTPUT_r_AWID(0),
      S02_AXI_awlen(7 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => ecg_cnn_0_m_axi_OUTPUT_r_AWLOCK(0),
      S02_AXI_awprot(2 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWQOS(3 downto 0),
      S02_AXI_awready => ecg_cnn_0_m_axi_OUTPUT_r_AWREADY,
      S02_AXI_awsize(2 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_AWSIZE(2 downto 0),
      S02_AXI_awvalid => ecg_cnn_0_m_axi_OUTPUT_r_AWVALID,
      S02_AXI_bid(0) => ecg_cnn_0_m_axi_OUTPUT_r_BID(0),
      S02_AXI_bready => ecg_cnn_0_m_axi_OUTPUT_r_BREADY,
      S02_AXI_bresp(1 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_BRESP(1 downto 0),
      S02_AXI_bvalid => ecg_cnn_0_m_axi_OUTPUT_r_BVALID,
      S02_AXI_wdata(31 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_WDATA(31 downto 0),
      S02_AXI_wlast => ecg_cnn_0_m_axi_OUTPUT_r_WLAST,
      S02_AXI_wready => ecg_cnn_0_m_axi_OUTPUT_r_WREADY,
      S02_AXI_wstrb(3 downto 0) => ecg_cnn_0_m_axi_OUTPUT_r_WSTRB(3 downto 0),
      S02_AXI_wvalid => ecg_cnn_0_m_axi_OUTPUT_r_WVALID,
      S03_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DC_ARADDR(31 downto 0),
      S03_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_DC_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_DC_ARCACHE(3 downto 0),
      S03_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_DC_ARLEN(7 downto 0),
      S03_AXI_arlock(0) => microblaze_0_M_AXI_DC_ARLOCK,
      S03_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DC_ARPROT(2 downto 0),
      S03_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_DC_ARQOS(3 downto 0),
      S03_AXI_arready => microblaze_0_M_AXI_DC_ARREADY,
      S03_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_DC_ARSIZE(2 downto 0),
      S03_AXI_arvalid => microblaze_0_M_AXI_DC_ARVALID,
      S03_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DC_AWADDR(31 downto 0),
      S03_AXI_awburst(1 downto 0) => microblaze_0_M_AXI_DC_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => microblaze_0_M_AXI_DC_AWCACHE(3 downto 0),
      S03_AXI_awlen(7 downto 0) => microblaze_0_M_AXI_DC_AWLEN(7 downto 0),
      S03_AXI_awlock(0) => microblaze_0_M_AXI_DC_AWLOCK,
      S03_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DC_AWPROT(2 downto 0),
      S03_AXI_awqos(3 downto 0) => microblaze_0_M_AXI_DC_AWQOS(3 downto 0),
      S03_AXI_awready => microblaze_0_M_AXI_DC_AWREADY,
      S03_AXI_awsize(2 downto 0) => microblaze_0_M_AXI_DC_AWSIZE(2 downto 0),
      S03_AXI_awvalid => microblaze_0_M_AXI_DC_AWVALID,
      S03_AXI_bready => microblaze_0_M_AXI_DC_BREADY,
      S03_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DC_BRESP(1 downto 0),
      S03_AXI_bvalid => microblaze_0_M_AXI_DC_BVALID,
      S03_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DC_RDATA(31 downto 0),
      S03_AXI_rlast => microblaze_0_M_AXI_DC_RLAST,
      S03_AXI_rready => microblaze_0_M_AXI_DC_RREADY,
      S03_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DC_RRESP(1 downto 0),
      S03_AXI_rvalid => microblaze_0_M_AXI_DC_RVALID,
      S03_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DC_WDATA(31 downto 0),
      S03_AXI_wlast => microblaze_0_M_AXI_DC_WLAST,
      S03_AXI_wready => microblaze_0_M_AXI_DC_WREADY,
      S03_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DC_WSTRB(3 downto 0),
      S03_AXI_wvalid => microblaze_0_M_AXI_DC_WVALID,
      S04_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_IC_ARADDR(31 downto 0),
      S04_AXI_arburst(1 downto 0) => microblaze_0_M_AXI_IC_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => microblaze_0_M_AXI_IC_ARCACHE(3 downto 0),
      S04_AXI_arlen(7 downto 0) => microblaze_0_M_AXI_IC_ARLEN(7 downto 0),
      S04_AXI_arlock(0) => microblaze_0_M_AXI_IC_ARLOCK,
      S04_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_IC_ARPROT(2 downto 0),
      S04_AXI_arqos(3 downto 0) => microblaze_0_M_AXI_IC_ARQOS(3 downto 0),
      S04_AXI_arready => microblaze_0_M_AXI_IC_ARREADY,
      S04_AXI_arsize(2 downto 0) => microblaze_0_M_AXI_IC_ARSIZE(2 downto 0),
      S04_AXI_arvalid => microblaze_0_M_AXI_IC_ARVALID,
      S04_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_IC_RDATA(31 downto 0),
      S04_AXI_rlast => microblaze_0_M_AXI_IC_RLAST,
      S04_AXI_rready => microblaze_0_M_AXI_IC_RREADY,
      S04_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_IC_RRESP(1 downto 0),
      S04_AXI_rvalid => microblaze_0_M_AXI_IC_RVALID,
      aclk => microblaze_0_Clk,
      aresetn => rst_clk_wiz_1_100M_interconnect_aresetn(0)
    );
xlconstant_0: component system_bd_xlconstant_0_2
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
