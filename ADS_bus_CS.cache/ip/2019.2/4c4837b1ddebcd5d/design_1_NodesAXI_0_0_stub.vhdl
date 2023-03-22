-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Mar 19 16:24:14 2023
-- Host        : Chamindu-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_NodesAXI_0_0_stub.vhdl
-- Design      : design_1_NodesAXI_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    mast1_valid : out STD_LOGIC;
    mast1_type : out STD_LOGIC;
    mast1_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mast1_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    mast1_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast1_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast1_ready : in STD_LOGIC;
    mast2_valid : out STD_LOGIC;
    mast2_type : out STD_LOGIC;
    mast2_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mast2_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    mast2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast2_ready : in STD_LOGIC;
    mast3_valid : out STD_LOGIC;
    mast3_type : out STD_LOGIC;
    mast3_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mast3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    mast3_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mast3_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mast3_ready : in STD_LOGIC;
    slav1_valid : in STD_LOGIC;
    slav1_type : in STD_LOGIC;
    slav1_master_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slav1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav1_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    slav1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav1_ready : out STD_LOGIC;
    slav2_valid : in STD_LOGIC;
    slav2_type : in STD_LOGIC;
    slav2_master_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slav2_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav2_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    slav2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav2_ready : out STD_LOGIC;
    slav3_valid : in STD_LOGIC;
    slav3_type : in STD_LOGIC;
    slav3_master_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slav3_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slav3_addr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    slav3_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slav3_ready : out STD_LOGIC;
    slav3_split : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mast1_valid,mast1_type,mast1_id[1:0],mast1_addr[14:0],mast1_wdata[31:0],mast1_rdata[31:0],mast1_ready,mast2_valid,mast2_type,mast2_id[1:0],mast2_addr[14:0],mast2_wdata[31:0],mast2_rdata[31:0],mast2_ready,mast3_valid,mast3_type,mast3_id[1:0],mast3_addr[14:0],mast3_wdata[31:0],mast3_rdata[31:0],mast3_ready,slav1_valid,slav1_type,slav1_master_id[1:0],slav1_wdata[31:0],slav1_addr[11:0],slav1_rdata[31:0],slav1_ready,slav2_valid,slav2_type,slav2_master_id[1:0],slav2_wdata[31:0],slav2_addr[11:0],slav2_rdata[31:0],slav2_ready,slav3_valid,slav3_type,slav3_master_id[1:0],slav3_wdata[31:0],slav3_addr[11:0],slav3_rdata[31:0],slav3_ready,slav3_split,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[7:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[7:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "NodesAXI_v1_0,Vivado 2019.2";
begin
end;
