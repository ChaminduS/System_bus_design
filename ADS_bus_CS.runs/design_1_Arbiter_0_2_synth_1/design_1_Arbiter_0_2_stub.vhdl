-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Mar 19 16:24:07 2023
-- Host        : Chamindu-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Arbiter_0_2_stub.vhdl
-- Design      : design_1_Arbiter_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,mast1_valid,mast1_type,mast1_id[1:0],mast1_addr[14:0],mast1_wdata[31:0],mast1_rdata[31:0],mast1_ready,mast2_valid,mast2_type,mast2_id[1:0],mast2_addr[14:0],mast2_wdata[31:0],mast2_rdata[31:0],mast2_ready,mast3_valid,mast3_type,mast3_id[1:0],mast3_addr[14:0],mast3_wdata[31:0],mast3_rdata[31:0],mast3_ready,slav1_valid,slav1_type,slav1_master_id[1:0],slav1_wdata[31:0],slav1_addr[11:0],slav1_rdata[31:0],slav1_ready,slav2_valid,slav2_type,slav2_master_id[1:0],slav2_wdata[31:0],slav2_addr[11:0],slav2_rdata[31:0],slav2_ready,slav3_valid,slav3_type,slav3_master_id[1:0],slav3_wdata[31:0],slav3_addr[11:0],slav3_rdata[31:0],slav3_ready,slav3_split";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Arbiter,Vivado 2019.2";
begin
end;
