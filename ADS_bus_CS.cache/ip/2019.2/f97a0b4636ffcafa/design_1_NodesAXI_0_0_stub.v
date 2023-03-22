// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Mar 19 16:43:55 2023
// Host        : Chamindu-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_NodesAXI_0_0_stub.v
// Design      : design_1_NodesAXI_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "NodesAXI_v1_0,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(mast1_valid, mast1_type, mast1_id, mast1_addr, 
  mast1_wdata, mast1_rdata, mast1_ready, mast2_valid, mast2_type, mast2_id, mast2_addr, 
  mast2_wdata, mast2_rdata, mast2_ready, mast3_valid, mast3_type, mast3_id, mast3_addr, 
  mast3_wdata, mast3_rdata, mast3_ready, slav1_valid, slav1_type, slav1_master_id, slav1_wdata, 
  slav1_addr, slav1_rdata, slav1_ready, slav2_valid, slav2_type, slav2_master_id, slav2_wdata, 
  slav2_addr, slav2_rdata, slav2_ready, slav3_valid, slav3_type, slav3_master_id, slav3_wdata, 
  slav3_addr, slav3_rdata, slav3_ready, slav3_split, s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="mast1_valid,mast1_type,mast1_id[1:0],mast1_addr[14:0],mast1_wdata[31:0],mast1_rdata[31:0],mast1_ready,mast2_valid,mast2_type,mast2_id[1:0],mast2_addr[14:0],mast2_wdata[31:0],mast2_rdata[31:0],mast2_ready,mast3_valid,mast3_type,mast3_id[1:0],mast3_addr[14:0],mast3_wdata[31:0],mast3_rdata[31:0],mast3_ready,slav1_valid,slav1_type,slav1_master_id[1:0],slav1_wdata[31:0],slav1_addr[11:0],slav1_rdata[31:0],slav1_ready,slav2_valid,slav2_type,slav2_master_id[1:0],slav2_wdata[31:0],slav2_addr[11:0],slav2_rdata[31:0],slav2_ready,slav3_valid,slav3_type,slav3_master_id[1:0],slav3_wdata[31:0],slav3_addr[11:0],slav3_rdata[31:0],slav3_ready,slav3_split,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[7:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[7:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  output mast1_valid;
  output mast1_type;
  output [1:0]mast1_id;
  output [14:0]mast1_addr;
  output [31:0]mast1_wdata;
  input [31:0]mast1_rdata;
  input mast1_ready;
  output mast2_valid;
  output mast2_type;
  output [1:0]mast2_id;
  output [14:0]mast2_addr;
  output [31:0]mast2_wdata;
  input [31:0]mast2_rdata;
  input mast2_ready;
  output mast3_valid;
  output mast3_type;
  output [1:0]mast3_id;
  output [14:0]mast3_addr;
  output [31:0]mast3_wdata;
  input [31:0]mast3_rdata;
  input mast3_ready;
  input slav1_valid;
  input slav1_type;
  input [1:0]slav1_master_id;
  input [31:0]slav1_wdata;
  input [11:0]slav1_addr;
  output [31:0]slav1_rdata;
  output slav1_ready;
  input slav2_valid;
  input slav2_type;
  input [1:0]slav2_master_id;
  input [31:0]slav2_wdata;
  input [11:0]slav2_addr;
  output [31:0]slav2_rdata;
  output slav2_ready;
  input slav3_valid;
  input slav3_type;
  input [1:0]slav3_master_id;
  input [31:0]slav3_wdata;
  input [11:0]slav3_addr;
  output [31:0]slav3_rdata;
  output slav3_ready;
  output slav3_split;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [7:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [7:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
