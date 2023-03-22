// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Mar 19 16:24:07 2023
// Host        : Chamindu-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Arbiter_0_2_stub.v
// Design      : design_1_Arbiter_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Arbiter,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, mast1_valid, mast1_type, mast1_id, 
  mast1_addr, mast1_wdata, mast1_rdata, mast1_ready, mast2_valid, mast2_type, mast2_id, 
  mast2_addr, mast2_wdata, mast2_rdata, mast2_ready, mast3_valid, mast3_type, mast3_id, 
  mast3_addr, mast3_wdata, mast3_rdata, mast3_ready, slav1_valid, slav1_type, slav1_master_id, 
  slav1_wdata, slav1_addr, slav1_rdata, slav1_ready, slav2_valid, slav2_type, slav2_master_id, 
  slav2_wdata, slav2_addr, slav2_rdata, slav2_ready, slav3_valid, slav3_type, slav3_master_id, 
  slav3_wdata, slav3_addr, slav3_rdata, slav3_ready, slav3_split)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,mast1_valid,mast1_type,mast1_id[1:0],mast1_addr[14:0],mast1_wdata[31:0],mast1_rdata[31:0],mast1_ready,mast2_valid,mast2_type,mast2_id[1:0],mast2_addr[14:0],mast2_wdata[31:0],mast2_rdata[31:0],mast2_ready,mast3_valid,mast3_type,mast3_id[1:0],mast3_addr[14:0],mast3_wdata[31:0],mast3_rdata[31:0],mast3_ready,slav1_valid,slav1_type,slav1_master_id[1:0],slav1_wdata[31:0],slav1_addr[11:0],slav1_rdata[31:0],slav1_ready,slav2_valid,slav2_type,slav2_master_id[1:0],slav2_wdata[31:0],slav2_addr[11:0],slav2_rdata[31:0],slav2_ready,slav3_valid,slav3_type,slav3_master_id[1:0],slav3_wdata[31:0],slav3_addr[11:0],slav3_rdata[31:0],slav3_ready,slav3_split" */;
  input clk;
  input reset;
  input mast1_valid;
  input mast1_type;
  input [1:0]mast1_id;
  input [14:0]mast1_addr;
  input [31:0]mast1_wdata;
  output [31:0]mast1_rdata;
  output mast1_ready;
  input mast2_valid;
  input mast2_type;
  input [1:0]mast2_id;
  input [14:0]mast2_addr;
  input [31:0]mast2_wdata;
  output [31:0]mast2_rdata;
  output mast2_ready;
  input mast3_valid;
  input mast3_type;
  input [1:0]mast3_id;
  input [14:0]mast3_addr;
  input [31:0]mast3_wdata;
  output [31:0]mast3_rdata;
  output mast3_ready;
  output slav1_valid;
  output slav1_type;
  output [1:0]slav1_master_id;
  output [31:0]slav1_wdata;
  output [11:0]slav1_addr;
  input [31:0]slav1_rdata;
  input slav1_ready;
  output slav2_valid;
  output slav2_type;
  output [1:0]slav2_master_id;
  output [31:0]slav2_wdata;
  output [11:0]slav2_addr;
  input [31:0]slav2_rdata;
  input slav2_ready;
  output slav3_valid;
  output slav3_type;
  output [1:0]slav3_master_id;
  output [31:0]slav3_wdata;
  output [11:0]slav3_addr;
  input [31:0]slav3_rdata;
  input slav3_ready;
  input slav3_split;
endmodule
