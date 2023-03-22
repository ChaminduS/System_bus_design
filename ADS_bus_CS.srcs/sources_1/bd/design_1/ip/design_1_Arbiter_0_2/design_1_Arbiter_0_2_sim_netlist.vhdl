-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Mar 19 16:24:08 2023
-- Host        : Chamindu-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/FPGA/ADS_bus_CS/ADS_bus_CS.srcs/sources_1/bd/design_1/ip/design_1_Arbiter_0_2/design_1_Arbiter_0_2_sim_netlist.vhdl
-- Design      : design_1_Arbiter_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Arbiter_0_2_Arbiter is
  port (
    slav2_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    slav2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav2_master_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slav2_type : out STD_LOGIC;
    slav1_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    slav1_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav2_valid : out STD_LOGIC;
    mast2_ready : out STD_LOGIC;
    slav1_master_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slav1_type : out STD_LOGIC;
    slav1_valid : out STD_LOGIC;
    slav3_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    slav3_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav3_type : out STD_LOGIC;
    slav3_valid : out STD_LOGIC;
    slav3_master_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mast3_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast3_ready : out STD_LOGIC;
    mast1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast1_ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    mast3_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mast2_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mast1_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mast3_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast2_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast3_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mast2_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mast1_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mast3_type : in STD_LOGIC;
    mast2_type : in STD_LOGIC;
    mast1_type : in STD_LOGIC;
    slav1_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav3_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav1_ready : in STD_LOGIC;
    slav2_ready : in STD_LOGIC;
    slav3_ready : in STD_LOGIC;
    mast1_valid : in STD_LOGIC;
    mast2_valid : in STD_LOGIC;
    mast3_valid : in STD_LOGIC;
    slav3_split : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Arbiter_0_2_Arbiter : entity is "Arbiter";
end design_1_Arbiter_0_2_Arbiter;

architecture STRUCTURE of design_1_Arbiter_0_2_Arbiter is
  signal \mast1_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mast1_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mast1_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \mast2_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mast2_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mast2_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \mast2_rdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \mast3_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mast3_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \mast3_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \mast3_rdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \slav1_wdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \slav1_wdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \slav1_wdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal slav2_type_INST_0_i_1_n_0 : STD_LOGIC;
  signal slav2_type_INST_0_i_2_n_0 : STD_LOGIC;
  signal slav2_type_INST_0_i_3_n_0 : STD_LOGIC;
  signal slav2_valid_INST_0_i_1_n_0 : STD_LOGIC;
  signal slav3_master_id128_out : STD_LOGIC;
  signal split_i_1_n_0 : STD_LOGIC;
  signal split_master_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \split_master_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \split_master_id[0]_i_2_n_0\ : STD_LOGIC;
  signal \split_master_id[0]_i_3_n_0\ : STD_LOGIC;
  signal \split_master_id[0]_i_4_n_0\ : STD_LOGIC;
  signal \split_master_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \split_master_id[1]_i_2_n_0\ : STD_LOGIC;
  signal \split_master_id[1]_i_3_n_0\ : STD_LOGIC;
  signal \split_master_id[1]_i_4_n_0\ : STD_LOGIC;
  signal \split_master_id[1]_i_5_n_0\ : STD_LOGIC;
  signal \split_master_id[1]_i_6_n_0\ : STD_LOGIC;
  signal split_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mast1_rdata[31]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of slav2_type_INST_0_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \split_master_id[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \split_master_id[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \split_master_id[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \split_master_id[1]_i_6\ : label is "soft_lutpair2";
begin
\mast1_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(0),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(0),
      I4 => slav3_rdata(0),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(0)
    );
\mast1_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(10),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(10),
      I4 => slav3_rdata(10),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(10)
    );
\mast1_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(11),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(11),
      I4 => slav3_rdata(11),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(11)
    );
\mast1_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(12),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(12),
      I4 => slav3_rdata(12),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(12)
    );
\mast1_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(13),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(13),
      I4 => slav3_rdata(13),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(13)
    );
\mast1_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(14),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(14),
      I4 => slav3_rdata(14),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(14)
    );
\mast1_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(15),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(15),
      I4 => slav3_rdata(15),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(15)
    );
\mast1_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(16),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(16),
      I4 => slav3_rdata(16),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(16)
    );
\mast1_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(17),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(17),
      I4 => slav3_rdata(17),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(17)
    );
\mast1_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(18),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(18),
      I4 => slav3_rdata(18),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(18)
    );
\mast1_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(19),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(19),
      I4 => slav3_rdata(19),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(19)
    );
\mast1_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(1),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(1),
      I4 => slav3_rdata(1),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(1)
    );
\mast1_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(20),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(20),
      I4 => slav3_rdata(20),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(20)
    );
\mast1_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(21),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(21),
      I4 => slav3_rdata(21),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(21)
    );
\mast1_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(22),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(22),
      I4 => slav3_rdata(22),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(22)
    );
\mast1_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(23),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(23),
      I4 => slav3_rdata(23),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(23)
    );
\mast1_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(24),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(24),
      I4 => slav3_rdata(24),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(24)
    );
\mast1_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(25),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(25),
      I4 => slav3_rdata(25),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(25)
    );
\mast1_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(26),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(26),
      I4 => slav3_rdata(26),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(26)
    );
\mast1_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(27),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(27),
      I4 => slav3_rdata(27),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(27)
    );
\mast1_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(28),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(28),
      I4 => slav3_rdata(28),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(28)
    );
\mast1_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(29),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(29),
      I4 => slav3_rdata(29),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(29)
    );
\mast1_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(2),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(2),
      I4 => slav3_rdata(2),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(2)
    );
\mast1_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(30),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(30),
      I4 => slav3_rdata(30),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(30)
    );
\mast1_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(31),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(31),
      I4 => slav3_rdata(31),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(31)
    );
\mast1_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => mast1_addr(12),
      I1 => slav3_master_id128_out,
      I2 => mast1_addr(14),
      I3 => mast1_addr(13),
      O => \mast1_rdata[31]_INST_0_i_1_n_0\
    );
\mast1_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => mast1_addr(13),
      I1 => mast1_addr(12),
      I2 => mast1_addr(14),
      I3 => slav3_master_id128_out,
      O => \mast1_rdata[31]_INST_0_i_2_n_0\
    );
\mast1_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => mast1_addr(12),
      I1 => slav3_master_id128_out,
      I2 => mast1_addr(14),
      I3 => mast1_addr(13),
      O => \mast1_rdata[31]_INST_0_i_3_n_0\
    );
\mast1_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8CC"
    )
        port map (
      I0 => split_master_id(0),
      I1 => mast1_valid,
      I2 => split_master_id(1),
      I3 => split_reg_n_0,
      O => slav3_master_id128_out
    );
\mast1_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(3),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(3),
      I4 => slav3_rdata(3),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(3)
    );
\mast1_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(4),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(4),
      I4 => slav3_rdata(4),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(4)
    );
\mast1_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(5),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(5),
      I4 => slav3_rdata(5),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(5)
    );
\mast1_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(6),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(6),
      I4 => slav3_rdata(6),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(6)
    );
\mast1_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(7),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(7),
      I4 => slav3_rdata(7),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(7)
    );
\mast1_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(8),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(8),
      I4 => slav3_rdata(8),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(8)
    );
\mast1_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(9),
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(9),
      I4 => slav3_rdata(9),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_rdata(9)
    );
mast1_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_ready,
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_ready,
      I4 => slav3_ready,
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => mast1_ready
    );
\mast2_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(0),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(0),
      I4 => slav3_rdata(0),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(0)
    );
\mast2_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(10),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(10),
      I4 => slav3_rdata(10),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(10)
    );
\mast2_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(11),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(11),
      I4 => slav3_rdata(11),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(11)
    );
\mast2_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(12),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(12),
      I4 => slav3_rdata(12),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(12)
    );
\mast2_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(13),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(13),
      I4 => slav3_rdata(13),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(13)
    );
\mast2_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(14),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(14),
      I4 => slav3_rdata(14),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(14)
    );
\mast2_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(15),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(15),
      I4 => slav3_rdata(15),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(15)
    );
\mast2_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(16),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(16),
      I4 => slav3_rdata(16),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(16)
    );
\mast2_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(17),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(17),
      I4 => slav3_rdata(17),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(17)
    );
\mast2_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(18),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(18),
      I4 => slav3_rdata(18),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(18)
    );
\mast2_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(19),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(19),
      I4 => slav3_rdata(19),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(19)
    );
\mast2_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(1),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(1),
      I4 => slav3_rdata(1),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(1)
    );
\mast2_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(20),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(20),
      I4 => slav3_rdata(20),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(20)
    );
\mast2_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(21),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(21),
      I4 => slav3_rdata(21),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(21)
    );
\mast2_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(22),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(22),
      I4 => slav3_rdata(22),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(22)
    );
\mast2_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(23),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(23),
      I4 => slav3_rdata(23),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(23)
    );
\mast2_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(24),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(24),
      I4 => slav3_rdata(24),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(24)
    );
\mast2_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(25),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(25),
      I4 => slav3_rdata(25),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(25)
    );
\mast2_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(26),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(26),
      I4 => slav3_rdata(26),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(26)
    );
\mast2_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(27),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(27),
      I4 => slav3_rdata(27),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(27)
    );
\mast2_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(28),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(28),
      I4 => slav3_rdata(28),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(28)
    );
\mast2_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(29),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(29),
      I4 => slav3_rdata(29),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(29)
    );
\mast2_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(2),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(2),
      I4 => slav3_rdata(2),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(2)
    );
\mast2_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(30),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(30),
      I4 => slav3_rdata(30),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(30)
    );
\mast2_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(31),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(31),
      I4 => slav3_rdata(31),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(31)
    );
\mast2_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mast2_addr(12),
      I1 => \mast2_rdata[31]_INST_0_i_4_n_0\,
      I2 => mast2_addr(13),
      O => \mast2_rdata[31]_INST_0_i_1_n_0\
    );
\mast2_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mast2_addr(13),
      I1 => mast2_addr(12),
      I2 => \mast2_rdata[31]_INST_0_i_4_n_0\,
      O => \mast2_rdata[31]_INST_0_i_2_n_0\
    );
\mast2_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mast2_addr(12),
      I1 => \mast2_rdata[31]_INST_0_i_4_n_0\,
      I2 => mast2_addr(13),
      O => \mast2_rdata[31]_INST_0_i_3_n_0\
    );
\mast2_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000035330000"
    )
        port map (
      I0 => split_master_id(0),
      I1 => mast1_valid,
      I2 => split_master_id(1),
      I3 => split_reg_n_0,
      I4 => mast2_valid,
      I5 => mast2_addr(14),
      O => \mast2_rdata[31]_INST_0_i_4_n_0\
    );
\mast2_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(3),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(3),
      I4 => slav3_rdata(3),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(3)
    );
\mast2_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(4),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(4),
      I4 => slav3_rdata(4),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(4)
    );
\mast2_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(5),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(5),
      I4 => slav3_rdata(5),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(5)
    );
\mast2_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(6),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(6),
      I4 => slav3_rdata(6),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(6)
    );
\mast2_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(7),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(7),
      I4 => slav3_rdata(7),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(7)
    );
\mast2_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(8),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(8),
      I4 => slav3_rdata(8),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(8)
    );
\mast2_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(9),
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(9),
      I4 => slav3_rdata(9),
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_rdata(9)
    );
mast2_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_ready,
      I2 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_ready,
      I4 => slav3_ready,
      I5 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      O => mast2_ready
    );
\mast3_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(0),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(0),
      I4 => slav3_rdata(0),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(0)
    );
\mast3_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(10),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(10),
      I4 => slav3_rdata(10),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(10)
    );
\mast3_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(11),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(11),
      I4 => slav3_rdata(11),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(11)
    );
\mast3_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(12),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(12),
      I4 => slav3_rdata(12),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(12)
    );
\mast3_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(13),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(13),
      I4 => slav3_rdata(13),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(13)
    );
\mast3_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(14),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(14),
      I4 => slav3_rdata(14),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(14)
    );
\mast3_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(15),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(15),
      I4 => slav3_rdata(15),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(15)
    );
\mast3_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(16),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(16),
      I4 => slav3_rdata(16),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(16)
    );
\mast3_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(17),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(17),
      I4 => slav3_rdata(17),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(17)
    );
\mast3_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(18),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(18),
      I4 => slav3_rdata(18),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(18)
    );
\mast3_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(19),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(19),
      I4 => slav3_rdata(19),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(19)
    );
\mast3_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(1),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(1),
      I4 => slav3_rdata(1),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(1)
    );
\mast3_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(20),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(20),
      I4 => slav3_rdata(20),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(20)
    );
\mast3_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(21),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(21),
      I4 => slav3_rdata(21),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(21)
    );
\mast3_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(22),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(22),
      I4 => slav3_rdata(22),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(22)
    );
\mast3_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(23),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(23),
      I4 => slav3_rdata(23),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(23)
    );
\mast3_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(24),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(24),
      I4 => slav3_rdata(24),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(24)
    );
\mast3_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(25),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(25),
      I4 => slav3_rdata(25),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(25)
    );
\mast3_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(26),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(26),
      I4 => slav3_rdata(26),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(26)
    );
\mast3_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(27),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(27),
      I4 => slav3_rdata(27),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(27)
    );
\mast3_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(28),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(28),
      I4 => slav3_rdata(28),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(28)
    );
\mast3_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(29),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(29),
      I4 => slav3_rdata(29),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(29)
    );
\mast3_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(2),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(2),
      I4 => slav3_rdata(2),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(2)
    );
\mast3_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(30),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(30),
      I4 => slav3_rdata(30),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(30)
    );
\mast3_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(31),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(31),
      I4 => slav3_rdata(31),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(31)
    );
\mast3_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => mast3_addr(12),
      I1 => \mast3_rdata[31]_INST_0_i_4_n_0\,
      I2 => mast3_addr(14),
      I3 => mast3_addr(13),
      O => \mast3_rdata[31]_INST_0_i_1_n_0\
    );
\mast3_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => mast3_addr(13),
      I1 => mast3_addr(12),
      I2 => mast3_addr(14),
      I3 => \mast3_rdata[31]_INST_0_i_4_n_0\,
      O => \mast3_rdata[31]_INST_0_i_2_n_0\
    );
\mast3_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => mast3_addr(12),
      I1 => \mast3_rdata[31]_INST_0_i_4_n_0\,
      I2 => mast3_addr(14),
      I3 => mast3_addr(13),
      O => \mast3_rdata[31]_INST_0_i_3_n_0\
    );
\mast3_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000044C400400444"
    )
        port map (
      I0 => mast2_valid,
      I1 => mast3_valid,
      I2 => split_reg_n_0,
      I3 => split_master_id(1),
      I4 => mast1_valid,
      I5 => split_master_id(0),
      O => \mast3_rdata[31]_INST_0_i_4_n_0\
    );
\mast3_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(3),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(3),
      I4 => slav3_rdata(3),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(3)
    );
\mast3_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(4),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(4),
      I4 => slav3_rdata(4),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(4)
    );
\mast3_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(5),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(5),
      I4 => slav3_rdata(5),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(5)
    );
\mast3_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(6),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(6),
      I4 => slav3_rdata(6),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(6)
    );
\mast3_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(7),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(7),
      I4 => slav3_rdata(7),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(7)
    );
\mast3_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(8),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(8),
      I4 => slav3_rdata(8),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(8)
    );
\mast3_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_rdata(9),
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_rdata(9),
      I4 => slav3_rdata(9),
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_rdata(9)
    );
mast3_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => slav1_ready,
      I2 => \mast3_rdata[31]_INST_0_i_2_n_0\,
      I3 => slav2_ready,
      I4 => slav3_ready,
      I5 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      O => mast3_ready
    );
\slav1_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(0),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(0),
      I4 => mast1_addr(0),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(0)
    );
\slav1_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(10),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(10),
      I4 => mast1_addr(10),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(10)
    );
\slav1_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(11),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(11),
      I4 => mast1_addr(11),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(11)
    );
\slav1_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(1),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(1),
      I4 => mast1_addr(1),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(1)
    );
\slav1_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(2),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(2),
      I4 => mast1_addr(2),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(2)
    );
\slav1_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(3),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(3),
      I4 => mast1_addr(3),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(3)
    );
\slav1_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(4),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(4),
      I4 => mast1_addr(4),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(4)
    );
\slav1_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(5),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(5),
      I4 => mast1_addr(5),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(5)
    );
\slav1_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(6),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(6),
      I4 => mast1_addr(6),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(6)
    );
\slav1_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(7),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(7),
      I4 => mast1_addr(7),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(7)
    );
\slav1_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(8),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(8),
      I4 => mast1_addr(8),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(8)
    );
\slav1_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_addr(9),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_addr(9),
      I4 => mast1_addr(9),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_addr(9)
    );
\slav1_master_id[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_id(0),
      I2 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I3 => mast2_id(0),
      I4 => mast1_id(0),
      I5 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      O => slav1_master_id(0)
    );
\slav1_master_id[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_id(1),
      I2 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I3 => mast2_id(1),
      I4 => mast1_id(1),
      I5 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      O => slav1_master_id(1)
    );
slav1_type_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_type,
      I2 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I3 => mast2_type,
      I4 => mast1_type,
      I5 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      O => slav1_type
    );
slav1_valid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_1_n_0\,
      I1 => \mast2_rdata[31]_INST_0_i_1_n_0\,
      I2 => \mast1_rdata[31]_INST_0_i_1_n_0\,
      O => slav1_valid
    );
\slav1_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(0),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(0),
      I4 => mast1_wdata(0),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(0)
    );
\slav1_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(10),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(10),
      I4 => mast1_wdata(10),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(10)
    );
\slav1_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(11),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(11),
      I4 => mast1_wdata(11),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(11)
    );
\slav1_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(12),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(12),
      I4 => mast1_wdata(12),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(12)
    );
\slav1_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(13),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(13),
      I4 => mast1_wdata(13),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(13)
    );
\slav1_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(14),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(14),
      I4 => mast1_wdata(14),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(14)
    );
\slav1_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(15),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(15),
      I4 => mast1_wdata(15),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(15)
    );
\slav1_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(16),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(16),
      I4 => mast1_wdata(16),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(16)
    );
\slav1_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(17),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(17),
      I4 => mast1_wdata(17),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(17)
    );
\slav1_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(18),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(18),
      I4 => mast1_wdata(18),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(18)
    );
\slav1_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(19),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(19),
      I4 => mast1_wdata(19),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(19)
    );
\slav1_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(1),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(1),
      I4 => mast1_wdata(1),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(1)
    );
\slav1_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(20),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(20),
      I4 => mast1_wdata(20),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(20)
    );
\slav1_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(21),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(21),
      I4 => mast1_wdata(21),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(21)
    );
\slav1_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(22),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(22),
      I4 => mast1_wdata(22),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(22)
    );
\slav1_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(23),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(23),
      I4 => mast1_wdata(23),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(23)
    );
\slav1_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(24),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(24),
      I4 => mast1_wdata(24),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(24)
    );
\slav1_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(25),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(25),
      I4 => mast1_wdata(25),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(25)
    );
\slav1_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(26),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(26),
      I4 => mast1_wdata(26),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(26)
    );
\slav1_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(27),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(27),
      I4 => mast1_wdata(27),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(27)
    );
\slav1_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(28),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(28),
      I4 => mast1_wdata(28),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(28)
    );
\slav1_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(29),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(29),
      I4 => mast1_wdata(29),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(29)
    );
\slav1_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(2),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(2),
      I4 => mast1_wdata(2),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(2)
    );
\slav1_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(30),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(30),
      I4 => mast1_wdata(30),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(30)
    );
\slav1_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(31),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(31),
      I4 => mast1_wdata(31),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(31)
    );
\slav1_wdata[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => mast3_addr(14),
      I1 => \mast3_rdata[31]_INST_0_i_4_n_0\,
      I2 => mast3_addr(12),
      I3 => mast3_addr(13),
      O => \slav1_wdata[31]_INST_0_i_1_n_0\
    );
\slav1_wdata[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \mast2_rdata[31]_INST_0_i_4_n_0\,
      I1 => mast2_addr(12),
      I2 => mast2_addr(13),
      O => \slav1_wdata[31]_INST_0_i_2_n_0\
    );
\slav1_wdata[31]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => mast1_addr(14),
      I1 => slav3_master_id128_out,
      I2 => mast1_addr(12),
      I3 => mast1_addr(13),
      O => \slav1_wdata[31]_INST_0_i_3_n_0\
    );
\slav1_wdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(3),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(3),
      I4 => mast1_wdata(3),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(3)
    );
\slav1_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(4),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(4),
      I4 => mast1_wdata(4),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(4)
    );
\slav1_wdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(5),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(5),
      I4 => mast1_wdata(5),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(5)
    );
\slav1_wdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(6),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(6),
      I4 => mast1_wdata(6),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(6)
    );
\slav1_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(7),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(7),
      I4 => mast1_wdata(7),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(7)
    );
\slav1_wdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(8),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(8),
      I4 => mast1_wdata(8),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(8)
    );
\slav1_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \slav1_wdata[31]_INST_0_i_1_n_0\,
      I1 => mast3_wdata(9),
      I2 => \slav1_wdata[31]_INST_0_i_2_n_0\,
      I3 => mast2_wdata(9),
      I4 => mast1_wdata(9),
      I5 => \slav1_wdata[31]_INST_0_i_3_n_0\,
      O => slav1_wdata(9)
    );
\slav2_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(0),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(0),
      I4 => mast1_addr(0),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(0)
    );
\slav2_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(10),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(10),
      I4 => mast1_addr(10),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(10)
    );
\slav2_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(11),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(11),
      I4 => mast1_addr(11),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(11)
    );
\slav2_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(1),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(1),
      I4 => mast1_addr(1),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(1)
    );
\slav2_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(2),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(2),
      I4 => mast1_addr(2),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(2)
    );
\slav2_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(3),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(3),
      I4 => mast1_addr(3),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(3)
    );
\slav2_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(4),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(4),
      I4 => mast1_addr(4),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(4)
    );
\slav2_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(5),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(5),
      I4 => mast1_addr(5),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(5)
    );
\slav2_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(6),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(6),
      I4 => mast1_addr(6),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(6)
    );
\slav2_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(7),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(7),
      I4 => mast1_addr(7),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(7)
    );
\slav2_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(8),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(8),
      I4 => mast1_addr(8),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(8)
    );
\slav2_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_addr(9),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_addr(9),
      I4 => mast1_addr(9),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_addr(9)
    );
\slav2_master_id[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_id(0),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_id(0),
      I4 => mast1_id(0),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_master_id(0)
    );
\slav2_master_id[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_id(1),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_id(1),
      I4 => mast1_id(1),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_master_id(1)
    );
slav2_type_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_type,
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_type,
      I4 => mast1_type,
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_type
    );
slav2_type_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => mast2_addr(13),
      I1 => mast2_addr(14),
      I2 => mast2_addr(12),
      I3 => slav2_type_INST_0_i_3_n_0,
      O => slav2_type_INST_0_i_1_n_0
    );
slav2_type_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => mast1_addr(13),
      I1 => mast1_addr(14),
      I2 => slav3_master_id128_out,
      I3 => mast1_addr(12),
      O => slav2_type_INST_0_i_2_n_0
    );
slav2_type_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A208AA"
    )
        port map (
      I0 => mast2_valid,
      I1 => split_reg_n_0,
      I2 => split_master_id(1),
      I3 => mast1_valid,
      I4 => split_master_id(0),
      O => slav2_type_INST_0_i_3_n_0
    );
slav2_valid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => \mast2_rdata[31]_INST_0_i_2_n_0\,
      I2 => \mast1_rdata[31]_INST_0_i_2_n_0\,
      O => slav2_valid
    );
slav2_valid_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => mast3_addr(14),
      I1 => mast3_addr(13),
      I2 => mast3_addr(12),
      I3 => \mast3_rdata[31]_INST_0_i_4_n_0\,
      O => slav2_valid_INST_0_i_1_n_0
    );
\slav2_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(0),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(0),
      I4 => mast1_wdata(0),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(0)
    );
\slav2_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(10),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(10),
      I4 => mast1_wdata(10),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(10)
    );
\slav2_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(11),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(11),
      I4 => mast1_wdata(11),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(11)
    );
\slav2_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(12),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(12),
      I4 => mast1_wdata(12),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(12)
    );
\slav2_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(13),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(13),
      I4 => mast1_wdata(13),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(13)
    );
\slav2_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(14),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(14),
      I4 => mast1_wdata(14),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(14)
    );
\slav2_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(15),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(15),
      I4 => mast1_wdata(15),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(15)
    );
\slav2_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(16),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(16),
      I4 => mast1_wdata(16),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(16)
    );
\slav2_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(17),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(17),
      I4 => mast1_wdata(17),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(17)
    );
\slav2_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(18),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(18),
      I4 => mast1_wdata(18),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(18)
    );
\slav2_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(19),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(19),
      I4 => mast1_wdata(19),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(19)
    );
\slav2_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(1),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(1),
      I4 => mast1_wdata(1),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(1)
    );
\slav2_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(20),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(20),
      I4 => mast1_wdata(20),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(20)
    );
\slav2_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(21),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(21),
      I4 => mast1_wdata(21),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(21)
    );
\slav2_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(22),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(22),
      I4 => mast1_wdata(22),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(22)
    );
\slav2_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(23),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(23),
      I4 => mast1_wdata(23),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(23)
    );
\slav2_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(24),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(24),
      I4 => mast1_wdata(24),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(24)
    );
\slav2_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(25),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(25),
      I4 => mast1_wdata(25),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(25)
    );
\slav2_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(26),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(26),
      I4 => mast1_wdata(26),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(26)
    );
\slav2_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(27),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(27),
      I4 => mast1_wdata(27),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(27)
    );
\slav2_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(28),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(28),
      I4 => mast1_wdata(28),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(28)
    );
\slav2_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(29),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(29),
      I4 => mast1_wdata(29),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(29)
    );
\slav2_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(2),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(2),
      I4 => mast1_wdata(2),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(2)
    );
\slav2_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(30),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(30),
      I4 => mast1_wdata(30),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(30)
    );
\slav2_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(31),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(31),
      I4 => mast1_wdata(31),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(31)
    );
\slav2_wdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(3),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(3),
      I4 => mast1_wdata(3),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(3)
    );
\slav2_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(4),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(4),
      I4 => mast1_wdata(4),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(4)
    );
\slav2_wdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(5),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(5),
      I4 => mast1_wdata(5),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(5)
    );
\slav2_wdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(6),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(6),
      I4 => mast1_wdata(6),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(6)
    );
\slav2_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(7),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(7),
      I4 => mast1_wdata(7),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(7)
    );
\slav2_wdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(8),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(8),
      I4 => mast1_wdata(8),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(8)
    );
\slav2_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => slav2_valid_INST_0_i_1_n_0,
      I1 => mast3_wdata(9),
      I2 => slav2_type_INST_0_i_1_n_0,
      I3 => mast2_wdata(9),
      I4 => mast1_wdata(9),
      I5 => slav2_type_INST_0_i_2_n_0,
      O => slav2_wdata(9)
    );
\slav3_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(0),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(0),
      I4 => mast1_addr(0),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(0)
    );
\slav3_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(10),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(10),
      I4 => mast1_addr(10),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(10)
    );
\slav3_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(11),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(11),
      I4 => mast1_addr(11),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(11)
    );
\slav3_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(1),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(1),
      I4 => mast1_addr(1),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(1)
    );
\slav3_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(2),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(2),
      I4 => mast1_addr(2),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(2)
    );
\slav3_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(3),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(3),
      I4 => mast1_addr(3),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(3)
    );
\slav3_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(4),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(4),
      I4 => mast1_addr(4),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(4)
    );
\slav3_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(5),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(5),
      I4 => mast1_addr(5),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(5)
    );
\slav3_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(6),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(6),
      I4 => mast1_addr(6),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(6)
    );
\slav3_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(7),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(7),
      I4 => mast1_addr(7),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(7)
    );
\slav3_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(8),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(8),
      I4 => mast1_addr(8),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(8)
    );
\slav3_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_addr(9),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_addr(9),
      I4 => mast1_addr(9),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_addr(9)
    );
\slav3_master_id[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_id(0),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_id(0),
      I4 => mast1_id(0),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_master_id(0)
    );
\slav3_master_id[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_id(1),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_id(1),
      I4 => mast1_id(1),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_master_id(1)
    );
slav3_type_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_type,
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_type,
      I4 => mast1_type,
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_type
    );
slav3_valid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I2 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_valid
    );
\slav3_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(0),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(0),
      I4 => mast1_wdata(0),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(0)
    );
\slav3_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(10),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(10),
      I4 => mast1_wdata(10),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(10)
    );
\slav3_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(11),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(11),
      I4 => mast1_wdata(11),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(11)
    );
\slav3_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(12),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(12),
      I4 => mast1_wdata(12),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(12)
    );
\slav3_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(13),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(13),
      I4 => mast1_wdata(13),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(13)
    );
\slav3_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(14),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(14),
      I4 => mast1_wdata(14),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(14)
    );
\slav3_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(15),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(15),
      I4 => mast1_wdata(15),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(15)
    );
\slav3_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(16),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(16),
      I4 => mast1_wdata(16),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(16)
    );
\slav3_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(17),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(17),
      I4 => mast1_wdata(17),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(17)
    );
\slav3_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(18),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(18),
      I4 => mast1_wdata(18),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(18)
    );
\slav3_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(19),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(19),
      I4 => mast1_wdata(19),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(19)
    );
\slav3_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(1),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(1),
      I4 => mast1_wdata(1),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(1)
    );
\slav3_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(20),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(20),
      I4 => mast1_wdata(20),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(20)
    );
\slav3_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(21),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(21),
      I4 => mast1_wdata(21),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(21)
    );
\slav3_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(22),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(22),
      I4 => mast1_wdata(22),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(22)
    );
\slav3_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(23),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(23),
      I4 => mast1_wdata(23),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(23)
    );
\slav3_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(24),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(24),
      I4 => mast1_wdata(24),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(24)
    );
\slav3_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(25),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(25),
      I4 => mast1_wdata(25),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(25)
    );
\slav3_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(26),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(26),
      I4 => mast1_wdata(26),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(26)
    );
\slav3_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(27),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(27),
      I4 => mast1_wdata(27),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(27)
    );
\slav3_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(28),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(28),
      I4 => mast1_wdata(28),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(28)
    );
\slav3_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(29),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(29),
      I4 => mast1_wdata(29),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(29)
    );
\slav3_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(2),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(2),
      I4 => mast1_wdata(2),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(2)
    );
\slav3_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(30),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(30),
      I4 => mast1_wdata(30),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(30)
    );
\slav3_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(31),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(31),
      I4 => mast1_wdata(31),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(31)
    );
\slav3_wdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(3),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(3),
      I4 => mast1_wdata(3),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(3)
    );
\slav3_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(4),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(4),
      I4 => mast1_wdata(4),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(4)
    );
\slav3_wdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(5),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(5),
      I4 => mast1_wdata(5),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(5)
    );
\slav3_wdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(6),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(6),
      I4 => mast1_wdata(6),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(6)
    );
\slav3_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(7),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(7),
      I4 => mast1_wdata(7),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(7)
    );
\slav3_wdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(8),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(8),
      I4 => mast1_wdata(8),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(8)
    );
\slav3_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mast3_rdata[31]_INST_0_i_3_n_0\,
      I1 => mast3_wdata(9),
      I2 => \mast2_rdata[31]_INST_0_i_3_n_0\,
      I3 => mast2_wdata(9),
      I4 => mast1_wdata(9),
      I5 => \mast1_rdata[31]_INST_0_i_3_n_0\,
      O => slav3_wdata(9)
    );
split_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slav3_split,
      I1 => reset,
      O => split_i_1_n_0
    );
\split_master_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFFAAA80000"
    )
        port map (
      I0 => \split_master_id[1]_i_2_n_0\,
      I1 => \split_master_id[0]_i_2_n_0\,
      I2 => \split_master_id[0]_i_3_n_0\,
      I3 => \split_master_id[0]_i_4_n_0\,
      I4 => \split_master_id[1]_i_6_n_0\,
      I5 => split_master_id(0),
      O => \split_master_id[0]_i_1_n_0\
    );
\split_master_id[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => mast1_addr(13),
      I1 => mast1_addr(14),
      I2 => slav3_master_id128_out,
      I3 => mast1_addr(12),
      I4 => mast1_id(0),
      O => \split_master_id[0]_i_2_n_0\
    );
\split_master_id[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => mast2_addr(13),
      I1 => \mast2_rdata[31]_INST_0_i_4_n_0\,
      I2 => mast2_addr(12),
      I3 => mast2_id(0),
      O => \split_master_id[0]_i_3_n_0\
    );
\split_master_id[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => mast3_addr(13),
      I1 => mast3_addr(14),
      I2 => \mast3_rdata[31]_INST_0_i_4_n_0\,
      I3 => mast3_addr(12),
      I4 => mast3_id(0),
      O => \split_master_id[0]_i_4_n_0\
    );
\split_master_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFFAAA80000"
    )
        port map (
      I0 => \split_master_id[1]_i_2_n_0\,
      I1 => \split_master_id[1]_i_3_n_0\,
      I2 => \split_master_id[1]_i_4_n_0\,
      I3 => \split_master_id[1]_i_5_n_0\,
      I4 => \split_master_id[1]_i_6_n_0\,
      I5 => split_master_id(1),
      O => \split_master_id[1]_i_1_n_0\
    );
\split_master_id[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reset,
      I1 => slav3_split,
      I2 => split_reg_n_0,
      O => \split_master_id[1]_i_2_n_0\
    );
\split_master_id[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => mast1_addr(13),
      I1 => mast1_addr(14),
      I2 => slav3_master_id128_out,
      I3 => mast1_addr(12),
      I4 => mast1_id(1),
      O => \split_master_id[1]_i_3_n_0\
    );
\split_master_id[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => mast2_addr(13),
      I1 => \mast2_rdata[31]_INST_0_i_4_n_0\,
      I2 => mast2_addr(12),
      I3 => mast2_id(1),
      O => \split_master_id[1]_i_4_n_0\
    );
\split_master_id[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => mast3_addr(13),
      I1 => mast3_addr(14),
      I2 => \mast3_rdata[31]_INST_0_i_4_n_0\,
      I3 => mast3_addr(12),
      I4 => mast3_id(1),
      O => \split_master_id[1]_i_5_n_0\
    );
\split_master_id[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => slav3_split,
      I1 => reset,
      O => \split_master_id[1]_i_6_n_0\
    );
\split_master_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \split_master_id[0]_i_1_n_0\,
      Q => split_master_id(0),
      R => '0'
    );
\split_master_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \split_master_id[1]_i_1_n_0\,
      Q => split_master_id(1),
      R => '0'
    );
split_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => split_i_1_n_0,
      Q => split_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Arbiter_0_2 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mast1_valid : in STD_LOGIC;
    mast1_type : in STD_LOGIC;
    mast1_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mast1_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mast1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast1_ready : out STD_LOGIC;
    mast2_valid : in STD_LOGIC;
    mast2_type : in STD_LOGIC;
    mast2_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mast2_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mast2_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast2_ready : out STD_LOGIC;
    mast3_valid : in STD_LOGIC;
    mast3_type : in STD_LOGIC;
    mast3_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mast3_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mast3_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast3_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast3_ready : out STD_LOGIC;
    slav1_valid : out STD_LOGIC;
    slav1_type : out STD_LOGIC;
    slav1_master_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slav1_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav1_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    slav1_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav1_ready : in STD_LOGIC;
    slav2_valid : out STD_LOGIC;
    slav2_type : out STD_LOGIC;
    slav2_master_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slav2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav2_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    slav2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav2_ready : in STD_LOGIC;
    slav3_valid : out STD_LOGIC;
    slav3_type : out STD_LOGIC;
    slav3_master_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slav3_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav3_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    slav3_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav3_ready : in STD_LOGIC;
    slav3_split : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Arbiter_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Arbiter_0_2 : entity is "design_1_Arbiter_0_2,Arbiter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Arbiter_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Arbiter_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Arbiter_0_2 : entity is "Arbiter,Vivado 2019.2";
end design_1_Arbiter_0_2;

architecture STRUCTURE of design_1_Arbiter_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_Arbiter_0_2_Arbiter
     port map (
      clk => clk,
      mast1_addr(14 downto 0) => mast1_addr(14 downto 0),
      mast1_id(1 downto 0) => mast1_id(1 downto 0),
      mast1_rdata(31 downto 0) => mast1_rdata(31 downto 0),
      mast1_ready => mast1_ready,
      mast1_type => mast1_type,
      mast1_valid => mast1_valid,
      mast1_wdata(31 downto 0) => mast1_wdata(31 downto 0),
      mast2_addr(14 downto 0) => mast2_addr(14 downto 0),
      mast2_id(1 downto 0) => mast2_id(1 downto 0),
      mast2_rdata(31 downto 0) => mast2_rdata(31 downto 0),
      mast2_ready => mast2_ready,
      mast2_type => mast2_type,
      mast2_valid => mast2_valid,
      mast2_wdata(31 downto 0) => mast2_wdata(31 downto 0),
      mast3_addr(14 downto 0) => mast3_addr(14 downto 0),
      mast3_id(1 downto 0) => mast3_id(1 downto 0),
      mast3_rdata(31 downto 0) => mast3_rdata(31 downto 0),
      mast3_ready => mast3_ready,
      mast3_type => mast3_type,
      mast3_valid => mast3_valid,
      mast3_wdata(31 downto 0) => mast3_wdata(31 downto 0),
      reset => reset,
      slav1_addr(11 downto 0) => slav1_addr(11 downto 0),
      slav1_master_id(1 downto 0) => slav1_master_id(1 downto 0),
      slav1_rdata(31 downto 0) => slav1_rdata(31 downto 0),
      slav1_ready => slav1_ready,
      slav1_type => slav1_type,
      slav1_valid => slav1_valid,
      slav1_wdata(31 downto 0) => slav1_wdata(31 downto 0),
      slav2_addr(11 downto 0) => slav2_addr(11 downto 0),
      slav2_master_id(1 downto 0) => slav2_master_id(1 downto 0),
      slav2_rdata(31 downto 0) => slav2_rdata(31 downto 0),
      slav2_ready => slav2_ready,
      slav2_type => slav2_type,
      slav2_valid => slav2_valid,
      slav2_wdata(31 downto 0) => slav2_wdata(31 downto 0),
      slav3_addr(11 downto 0) => slav3_addr(11 downto 0),
      slav3_master_id(1 downto 0) => slav3_master_id(1 downto 0),
      slav3_rdata(31 downto 0) => slav3_rdata(31 downto 0),
      slav3_ready => slav3_ready,
      slav3_split => slav3_split,
      slav3_type => slav3_type,
      slav3_valid => slav3_valid,
      slav3_wdata(31 downto 0) => slav3_wdata(31 downto 0)
    );
end STRUCTURE;
