// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Mar 19 16:24:08 2023
// Host        : Chamindu-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/FPGA/ADS_bus_CS/ADS_bus_CS.srcs/sources_1/bd/design_1/ip/design_1_Arbiter_0_2/design_1_Arbiter_0_2_sim_netlist.v
// Design      : design_1_Arbiter_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Arbiter_0_2,Arbiter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Arbiter,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_Arbiter_0_2
   (clk,
    reset,
    mast1_valid,
    mast1_type,
    mast1_id,
    mast1_addr,
    mast1_wdata,
    mast1_rdata,
    mast1_ready,
    mast2_valid,
    mast2_type,
    mast2_id,
    mast2_addr,
    mast2_wdata,
    mast2_rdata,
    mast2_ready,
    mast3_valid,
    mast3_type,
    mast3_id,
    mast3_addr,
    mast3_wdata,
    mast3_rdata,
    mast3_ready,
    slav1_valid,
    slav1_type,
    slav1_master_id,
    slav1_wdata,
    slav1_addr,
    slav1_rdata,
    slav1_ready,
    slav2_valid,
    slav2_type,
    slav2_master_id,
    slav2_wdata,
    slav2_addr,
    slav2_rdata,
    slav2_ready,
    slav3_valid,
    slav3_type,
    slav3_master_id,
    slav3_wdata,
    slav3_addr,
    slav3_rdata,
    slav3_ready,
    slav3_split);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
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

  wire clk;
  wire [14:0]mast1_addr;
  wire [1:0]mast1_id;
  wire [31:0]mast1_rdata;
  wire mast1_ready;
  wire mast1_type;
  wire mast1_valid;
  wire [31:0]mast1_wdata;
  wire [14:0]mast2_addr;
  wire [1:0]mast2_id;
  wire [31:0]mast2_rdata;
  wire mast2_ready;
  wire mast2_type;
  wire mast2_valid;
  wire [31:0]mast2_wdata;
  wire [14:0]mast3_addr;
  wire [1:0]mast3_id;
  wire [31:0]mast3_rdata;
  wire mast3_ready;
  wire mast3_type;
  wire mast3_valid;
  wire [31:0]mast3_wdata;
  wire reset;
  wire [11:0]slav1_addr;
  wire [1:0]slav1_master_id;
  wire [31:0]slav1_rdata;
  wire slav1_ready;
  wire slav1_type;
  wire slav1_valid;
  wire [31:0]slav1_wdata;
  wire [11:0]slav2_addr;
  wire [1:0]slav2_master_id;
  wire [31:0]slav2_rdata;
  wire slav2_ready;
  wire slav2_type;
  wire slav2_valid;
  wire [31:0]slav2_wdata;
  wire [11:0]slav3_addr;
  wire [1:0]slav3_master_id;
  wire [31:0]slav3_rdata;
  wire slav3_ready;
  wire slav3_split;
  wire slav3_type;
  wire slav3_valid;
  wire [31:0]slav3_wdata;

  design_1_Arbiter_0_2_Arbiter inst
       (.clk(clk),
        .mast1_addr(mast1_addr),
        .mast1_id(mast1_id),
        .mast1_rdata(mast1_rdata),
        .mast1_ready(mast1_ready),
        .mast1_type(mast1_type),
        .mast1_valid(mast1_valid),
        .mast1_wdata(mast1_wdata),
        .mast2_addr(mast2_addr),
        .mast2_id(mast2_id),
        .mast2_rdata(mast2_rdata),
        .mast2_ready(mast2_ready),
        .mast2_type(mast2_type),
        .mast2_valid(mast2_valid),
        .mast2_wdata(mast2_wdata),
        .mast3_addr(mast3_addr),
        .mast3_id(mast3_id),
        .mast3_rdata(mast3_rdata),
        .mast3_ready(mast3_ready),
        .mast3_type(mast3_type),
        .mast3_valid(mast3_valid),
        .mast3_wdata(mast3_wdata),
        .reset(reset),
        .slav1_addr(slav1_addr),
        .slav1_master_id(slav1_master_id),
        .slav1_rdata(slav1_rdata),
        .slav1_ready(slav1_ready),
        .slav1_type(slav1_type),
        .slav1_valid(slav1_valid),
        .slav1_wdata(slav1_wdata),
        .slav2_addr(slav2_addr),
        .slav2_master_id(slav2_master_id),
        .slav2_rdata(slav2_rdata),
        .slav2_ready(slav2_ready),
        .slav2_type(slav2_type),
        .slav2_valid(slav2_valid),
        .slav2_wdata(slav2_wdata),
        .slav3_addr(slav3_addr),
        .slav3_master_id(slav3_master_id),
        .slav3_rdata(slav3_rdata),
        .slav3_ready(slav3_ready),
        .slav3_split(slav3_split),
        .slav3_type(slav3_type),
        .slav3_valid(slav3_valid),
        .slav3_wdata(slav3_wdata));
endmodule

(* ORIG_REF_NAME = "Arbiter" *) 
module design_1_Arbiter_0_2_Arbiter
   (slav2_addr,
    slav2_wdata,
    slav2_master_id,
    slav2_type,
    slav1_addr,
    slav1_wdata,
    mast2_rdata,
    slav2_valid,
    mast2_ready,
    slav1_master_id,
    slav1_type,
    slav1_valid,
    slav3_addr,
    slav3_wdata,
    slav3_type,
    slav3_valid,
    slav3_master_id,
    mast3_rdata,
    mast3_ready,
    mast1_rdata,
    mast1_ready,
    clk,
    mast3_addr,
    mast2_addr,
    mast1_addr,
    mast3_wdata,
    mast2_wdata,
    mast1_wdata,
    mast3_id,
    mast2_id,
    mast1_id,
    mast3_type,
    mast2_type,
    mast1_type,
    slav1_rdata,
    slav2_rdata,
    slav3_rdata,
    slav1_ready,
    slav2_ready,
    slav3_ready,
    mast1_valid,
    mast2_valid,
    mast3_valid,
    slav3_split,
    reset);
  output [11:0]slav2_addr;
  output [31:0]slav2_wdata;
  output [1:0]slav2_master_id;
  output slav2_type;
  output [11:0]slav1_addr;
  output [31:0]slav1_wdata;
  output [31:0]mast2_rdata;
  output slav2_valid;
  output mast2_ready;
  output [1:0]slav1_master_id;
  output slav1_type;
  output slav1_valid;
  output [11:0]slav3_addr;
  output [31:0]slav3_wdata;
  output slav3_type;
  output slav3_valid;
  output [1:0]slav3_master_id;
  output [31:0]mast3_rdata;
  output mast3_ready;
  output [31:0]mast1_rdata;
  output mast1_ready;
  input clk;
  input [14:0]mast3_addr;
  input [14:0]mast2_addr;
  input [14:0]mast1_addr;
  input [31:0]mast3_wdata;
  input [31:0]mast2_wdata;
  input [31:0]mast1_wdata;
  input [1:0]mast3_id;
  input [1:0]mast2_id;
  input [1:0]mast1_id;
  input mast3_type;
  input mast2_type;
  input mast1_type;
  input [31:0]slav1_rdata;
  input [31:0]slav2_rdata;
  input [31:0]slav3_rdata;
  input slav1_ready;
  input slav2_ready;
  input slav3_ready;
  input mast1_valid;
  input mast2_valid;
  input mast3_valid;
  input slav3_split;
  input reset;

  wire clk;
  wire [14:0]mast1_addr;
  wire [1:0]mast1_id;
  wire [31:0]mast1_rdata;
  wire \mast1_rdata[31]_INST_0_i_1_n_0 ;
  wire \mast1_rdata[31]_INST_0_i_2_n_0 ;
  wire \mast1_rdata[31]_INST_0_i_3_n_0 ;
  wire mast1_ready;
  wire mast1_type;
  wire mast1_valid;
  wire [31:0]mast1_wdata;
  wire [14:0]mast2_addr;
  wire [1:0]mast2_id;
  wire [31:0]mast2_rdata;
  wire \mast2_rdata[31]_INST_0_i_1_n_0 ;
  wire \mast2_rdata[31]_INST_0_i_2_n_0 ;
  wire \mast2_rdata[31]_INST_0_i_3_n_0 ;
  wire \mast2_rdata[31]_INST_0_i_4_n_0 ;
  wire mast2_ready;
  wire mast2_type;
  wire mast2_valid;
  wire [31:0]mast2_wdata;
  wire [14:0]mast3_addr;
  wire [1:0]mast3_id;
  wire [31:0]mast3_rdata;
  wire \mast3_rdata[31]_INST_0_i_1_n_0 ;
  wire \mast3_rdata[31]_INST_0_i_2_n_0 ;
  wire \mast3_rdata[31]_INST_0_i_3_n_0 ;
  wire \mast3_rdata[31]_INST_0_i_4_n_0 ;
  wire mast3_ready;
  wire mast3_type;
  wire mast3_valid;
  wire [31:0]mast3_wdata;
  wire reset;
  wire [11:0]slav1_addr;
  wire [1:0]slav1_master_id;
  wire [31:0]slav1_rdata;
  wire slav1_ready;
  wire slav1_type;
  wire slav1_valid;
  wire [31:0]slav1_wdata;
  wire \slav1_wdata[31]_INST_0_i_1_n_0 ;
  wire \slav1_wdata[31]_INST_0_i_2_n_0 ;
  wire \slav1_wdata[31]_INST_0_i_3_n_0 ;
  wire [11:0]slav2_addr;
  wire [1:0]slav2_master_id;
  wire [31:0]slav2_rdata;
  wire slav2_ready;
  wire slav2_type;
  wire slav2_type_INST_0_i_1_n_0;
  wire slav2_type_INST_0_i_2_n_0;
  wire slav2_type_INST_0_i_3_n_0;
  wire slav2_valid;
  wire slav2_valid_INST_0_i_1_n_0;
  wire [31:0]slav2_wdata;
  wire [11:0]slav3_addr;
  wire [1:0]slav3_master_id;
  wire slav3_master_id128_out;
  wire [31:0]slav3_rdata;
  wire slav3_ready;
  wire slav3_split;
  wire slav3_type;
  wire slav3_valid;
  wire [31:0]slav3_wdata;
  wire split_i_1_n_0;
  wire [1:0]split_master_id;
  wire \split_master_id[0]_i_1_n_0 ;
  wire \split_master_id[0]_i_2_n_0 ;
  wire \split_master_id[0]_i_3_n_0 ;
  wire \split_master_id[0]_i_4_n_0 ;
  wire \split_master_id[1]_i_1_n_0 ;
  wire \split_master_id[1]_i_2_n_0 ;
  wire \split_master_id[1]_i_3_n_0 ;
  wire \split_master_id[1]_i_4_n_0 ;
  wire \split_master_id[1]_i_5_n_0 ;
  wire \split_master_id[1]_i_6_n_0 ;
  wire split_reg_n_0;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[0]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[0]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[0]),
        .I4(slav3_rdata[0]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[10]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[10]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[10]),
        .I4(slav3_rdata[10]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[11]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[11]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[11]),
        .I4(slav3_rdata[11]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[12]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[12]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[12]),
        .I4(slav3_rdata[12]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[13]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[13]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[13]),
        .I4(slav3_rdata[13]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[14]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[14]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[14]),
        .I4(slav3_rdata[14]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[15]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[15]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[15]),
        .I4(slav3_rdata[15]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[16]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[16]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[16]),
        .I4(slav3_rdata[16]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[17]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[17]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[17]),
        .I4(slav3_rdata[17]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[18]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[18]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[18]),
        .I4(slav3_rdata[18]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[19]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[19]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[19]),
        .I4(slav3_rdata[19]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[1]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[1]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[1]),
        .I4(slav3_rdata[1]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[20]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[20]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[20]),
        .I4(slav3_rdata[20]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[21]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[21]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[21]),
        .I4(slav3_rdata[21]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[22]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[22]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[22]),
        .I4(slav3_rdata[22]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[23]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[23]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[23]),
        .I4(slav3_rdata[23]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[24]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[24]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[24]),
        .I4(slav3_rdata[24]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[25]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[25]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[25]),
        .I4(slav3_rdata[25]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[26]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[26]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[26]),
        .I4(slav3_rdata[26]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[27]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[27]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[27]),
        .I4(slav3_rdata[27]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[28]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[28]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[28]),
        .I4(slav3_rdata[28]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[29]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[29]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[29]),
        .I4(slav3_rdata[29]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[2]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[2]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[2]),
        .I4(slav3_rdata[2]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[30]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[30]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[30]),
        .I4(slav3_rdata[30]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[31]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[31]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[31]),
        .I4(slav3_rdata[31]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \mast1_rdata[31]_INST_0_i_1 
       (.I0(mast1_addr[12]),
        .I1(slav3_master_id128_out),
        .I2(mast1_addr[14]),
        .I3(mast1_addr[13]),
        .O(\mast1_rdata[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \mast1_rdata[31]_INST_0_i_2 
       (.I0(mast1_addr[13]),
        .I1(mast1_addr[12]),
        .I2(mast1_addr[14]),
        .I3(slav3_master_id128_out),
        .O(\mast1_rdata[31]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \mast1_rdata[31]_INST_0_i_3 
       (.I0(mast1_addr[12]),
        .I1(slav3_master_id128_out),
        .I2(mast1_addr[14]),
        .I3(mast1_addr[13]),
        .O(\mast1_rdata[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC8CC)) 
    \mast1_rdata[31]_INST_0_i_4 
       (.I0(split_master_id[0]),
        .I1(mast1_valid),
        .I2(split_master_id[1]),
        .I3(split_reg_n_0),
        .O(slav3_master_id128_out));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[3]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[3]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[3]),
        .I4(slav3_rdata[3]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[4]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[4]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[4]),
        .I4(slav3_rdata[4]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[5]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[5]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[5]),
        .I4(slav3_rdata[5]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[6]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[6]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[6]),
        .I4(slav3_rdata[6]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[7]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[7]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[7]),
        .I4(slav3_rdata[7]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[8]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[8]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[8]),
        .I4(slav3_rdata[8]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast1_rdata[9]_INST_0 
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[9]),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[9]),
        .I4(slav3_rdata[9]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_rdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mast1_ready_INST_0
       (.I0(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_ready),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_ready),
        .I4(slav3_ready),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast1_ready));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[0]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[0]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[0]),
        .I4(slav3_rdata[0]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[10]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[10]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[10]),
        .I4(slav3_rdata[10]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[11]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[11]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[11]),
        .I4(slav3_rdata[11]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[12]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[12]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[12]),
        .I4(slav3_rdata[12]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[13]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[13]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[13]),
        .I4(slav3_rdata[13]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[14]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[14]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[14]),
        .I4(slav3_rdata[14]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[15]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[15]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[15]),
        .I4(slav3_rdata[15]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[16]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[16]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[16]),
        .I4(slav3_rdata[16]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[17]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[17]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[17]),
        .I4(slav3_rdata[17]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[18]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[18]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[18]),
        .I4(slav3_rdata[18]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[19]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[19]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[19]),
        .I4(slav3_rdata[19]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[1]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[1]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[1]),
        .I4(slav3_rdata[1]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[20]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[20]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[20]),
        .I4(slav3_rdata[20]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[21]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[21]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[21]),
        .I4(slav3_rdata[21]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[22]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[22]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[22]),
        .I4(slav3_rdata[22]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[23]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[23]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[23]),
        .I4(slav3_rdata[23]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[24]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[24]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[24]),
        .I4(slav3_rdata[24]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[25]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[25]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[25]),
        .I4(slav3_rdata[25]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[26]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[26]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[26]),
        .I4(slav3_rdata[26]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[27]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[27]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[27]),
        .I4(slav3_rdata[27]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[28]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[28]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[28]),
        .I4(slav3_rdata[28]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[29]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[29]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[29]),
        .I4(slav3_rdata[29]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[2]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[2]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[2]),
        .I4(slav3_rdata[2]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[30]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[30]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[30]),
        .I4(slav3_rdata[30]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[31]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[31]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[31]),
        .I4(slav3_rdata[31]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[31]));
  LUT3 #(
    .INIT(8'h04)) 
    \mast2_rdata[31]_INST_0_i_1 
       (.I0(mast2_addr[12]),
        .I1(\mast2_rdata[31]_INST_0_i_4_n_0 ),
        .I2(mast2_addr[13]),
        .O(\mast2_rdata[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \mast2_rdata[31]_INST_0_i_2 
       (.I0(mast2_addr[13]),
        .I1(mast2_addr[12]),
        .I2(\mast2_rdata[31]_INST_0_i_4_n_0 ),
        .O(\mast2_rdata[31]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \mast2_rdata[31]_INST_0_i_3 
       (.I0(mast2_addr[12]),
        .I1(\mast2_rdata[31]_INST_0_i_4_n_0 ),
        .I2(mast2_addr[13]),
        .O(\mast2_rdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000035330000)) 
    \mast2_rdata[31]_INST_0_i_4 
       (.I0(split_master_id[0]),
        .I1(mast1_valid),
        .I2(split_master_id[1]),
        .I3(split_reg_n_0),
        .I4(mast2_valid),
        .I5(mast2_addr[14]),
        .O(\mast2_rdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[3]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[3]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[3]),
        .I4(slav3_rdata[3]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[4]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[4]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[4]),
        .I4(slav3_rdata[4]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[5]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[5]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[5]),
        .I4(slav3_rdata[5]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[6]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[6]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[6]),
        .I4(slav3_rdata[6]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[7]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[7]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[7]),
        .I4(slav3_rdata[7]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[8]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[8]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[8]),
        .I4(slav3_rdata[8]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast2_rdata[9]_INST_0 
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[9]),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[9]),
        .I4(slav3_rdata[9]),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_rdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mast2_ready_INST_0
       (.I0(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_ready),
        .I2(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_ready),
        .I4(slav3_ready),
        .I5(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast2_ready));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[0]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[0]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[0]),
        .I4(slav3_rdata[0]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[10]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[10]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[10]),
        .I4(slav3_rdata[10]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[11]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[11]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[11]),
        .I4(slav3_rdata[11]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[12]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[12]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[12]),
        .I4(slav3_rdata[12]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[13]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[13]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[13]),
        .I4(slav3_rdata[13]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[14]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[14]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[14]),
        .I4(slav3_rdata[14]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[15]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[15]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[15]),
        .I4(slav3_rdata[15]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[16]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[16]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[16]),
        .I4(slav3_rdata[16]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[17]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[17]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[17]),
        .I4(slav3_rdata[17]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[18]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[18]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[18]),
        .I4(slav3_rdata[18]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[19]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[19]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[19]),
        .I4(slav3_rdata[19]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[1]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[1]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[1]),
        .I4(slav3_rdata[1]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[20]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[20]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[20]),
        .I4(slav3_rdata[20]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[21]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[21]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[21]),
        .I4(slav3_rdata[21]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[22]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[22]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[22]),
        .I4(slav3_rdata[22]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[23]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[23]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[23]),
        .I4(slav3_rdata[23]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[24]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[24]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[24]),
        .I4(slav3_rdata[24]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[25]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[25]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[25]),
        .I4(slav3_rdata[25]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[26]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[26]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[26]),
        .I4(slav3_rdata[26]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[27]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[27]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[27]),
        .I4(slav3_rdata[27]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[28]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[28]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[28]),
        .I4(slav3_rdata[28]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[29]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[29]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[29]),
        .I4(slav3_rdata[29]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[2]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[2]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[2]),
        .I4(slav3_rdata[2]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[30]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[30]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[30]),
        .I4(slav3_rdata[30]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[31]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[31]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[31]),
        .I4(slav3_rdata[31]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \mast3_rdata[31]_INST_0_i_1 
       (.I0(mast3_addr[12]),
        .I1(\mast3_rdata[31]_INST_0_i_4_n_0 ),
        .I2(mast3_addr[14]),
        .I3(mast3_addr[13]),
        .O(\mast3_rdata[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \mast3_rdata[31]_INST_0_i_2 
       (.I0(mast3_addr[13]),
        .I1(mast3_addr[12]),
        .I2(mast3_addr[14]),
        .I3(\mast3_rdata[31]_INST_0_i_4_n_0 ),
        .O(\mast3_rdata[31]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \mast3_rdata[31]_INST_0_i_3 
       (.I0(mast3_addr[12]),
        .I1(\mast3_rdata[31]_INST_0_i_4_n_0 ),
        .I2(mast3_addr[14]),
        .I3(mast3_addr[13]),
        .O(\mast3_rdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000044C400400444)) 
    \mast3_rdata[31]_INST_0_i_4 
       (.I0(mast2_valid),
        .I1(mast3_valid),
        .I2(split_reg_n_0),
        .I3(split_master_id[1]),
        .I4(mast1_valid),
        .I5(split_master_id[0]),
        .O(\mast3_rdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[3]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[3]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[3]),
        .I4(slav3_rdata[3]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[4]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[4]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[4]),
        .I4(slav3_rdata[4]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[5]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[5]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[5]),
        .I4(slav3_rdata[5]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[6]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[6]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[6]),
        .I4(slav3_rdata[6]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[7]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[7]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[7]),
        .I4(slav3_rdata[7]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[8]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[8]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[8]),
        .I4(slav3_rdata[8]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mast3_rdata[9]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_rdata[9]),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_rdata[9]),
        .I4(slav3_rdata[9]),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_rdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mast3_ready_INST_0
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(slav1_ready),
        .I2(\mast3_rdata[31]_INST_0_i_2_n_0 ),
        .I3(slav2_ready),
        .I4(slav3_ready),
        .I5(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .O(mast3_ready));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[0]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[0]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[0]),
        .I4(mast1_addr[0]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[10]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[10]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[10]),
        .I4(mast1_addr[10]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[11]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[11]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[11]),
        .I4(mast1_addr[11]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[1]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[1]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[1]),
        .I4(mast1_addr[1]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[2]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[2]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[2]),
        .I4(mast1_addr[2]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[3]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[3]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[3]),
        .I4(mast1_addr[3]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[4]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[4]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[4]),
        .I4(mast1_addr[4]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[5]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[5]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[5]),
        .I4(mast1_addr[5]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[6]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[6]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[6]),
        .I4(mast1_addr[6]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[7]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[7]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[7]),
        .I4(mast1_addr[7]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[8]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[8]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[8]),
        .I4(mast1_addr[8]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_addr[9]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_addr[9]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_addr[9]),
        .I4(mast1_addr[9]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_addr[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_master_id[0]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_id[0]),
        .I2(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I3(mast2_id[0]),
        .I4(mast1_id[0]),
        .I5(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .O(slav1_master_id[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_master_id[1]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_id[1]),
        .I2(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I3(mast2_id[1]),
        .I4(mast1_id[1]),
        .I5(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .O(slav1_master_id[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    slav1_type_INST_0
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_type),
        .I2(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I3(mast2_type),
        .I4(mast1_type),
        .I5(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .O(slav1_type));
  LUT3 #(
    .INIT(8'hFE)) 
    slav1_valid_INST_0
       (.I0(\mast3_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\mast2_rdata[31]_INST_0_i_1_n_0 ),
        .I2(\mast1_rdata[31]_INST_0_i_1_n_0 ),
        .O(slav1_valid));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[0]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[0]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[0]),
        .I4(mast1_wdata[0]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[10]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[10]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[10]),
        .I4(mast1_wdata[10]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[11]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[11]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[11]),
        .I4(mast1_wdata[11]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[12]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[12]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[12]),
        .I4(mast1_wdata[12]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[13]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[13]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[13]),
        .I4(mast1_wdata[13]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[14]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[14]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[14]),
        .I4(mast1_wdata[14]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[15]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[15]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[15]),
        .I4(mast1_wdata[15]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[16]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[16]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[16]),
        .I4(mast1_wdata[16]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[17]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[17]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[17]),
        .I4(mast1_wdata[17]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[18]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[18]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[18]),
        .I4(mast1_wdata[18]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[19]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[19]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[19]),
        .I4(mast1_wdata[19]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[1]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[1]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[1]),
        .I4(mast1_wdata[1]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[20]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[20]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[20]),
        .I4(mast1_wdata[20]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[21]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[21]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[21]),
        .I4(mast1_wdata[21]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[22]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[22]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[22]),
        .I4(mast1_wdata[22]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[23]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[23]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[23]),
        .I4(mast1_wdata[23]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[24]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[24]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[24]),
        .I4(mast1_wdata[24]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[25]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[25]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[25]),
        .I4(mast1_wdata[25]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[26]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[26]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[26]),
        .I4(mast1_wdata[26]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[27]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[27]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[27]),
        .I4(mast1_wdata[27]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[28]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[28]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[28]),
        .I4(mast1_wdata[28]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[29]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[29]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[29]),
        .I4(mast1_wdata[29]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[2]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[2]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[2]),
        .I4(mast1_wdata[2]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[30]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[30]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[30]),
        .I4(mast1_wdata[30]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[31]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[31]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[31]),
        .I4(mast1_wdata[31]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \slav1_wdata[31]_INST_0_i_1 
       (.I0(mast3_addr[14]),
        .I1(\mast3_rdata[31]_INST_0_i_4_n_0 ),
        .I2(mast3_addr[12]),
        .I3(mast3_addr[13]),
        .O(\slav1_wdata[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \slav1_wdata[31]_INST_0_i_2 
       (.I0(\mast2_rdata[31]_INST_0_i_4_n_0 ),
        .I1(mast2_addr[12]),
        .I2(mast2_addr[13]),
        .O(\slav1_wdata[31]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \slav1_wdata[31]_INST_0_i_3 
       (.I0(mast1_addr[14]),
        .I1(slav3_master_id128_out),
        .I2(mast1_addr[12]),
        .I3(mast1_addr[13]),
        .O(\slav1_wdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[3]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[3]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[3]),
        .I4(mast1_wdata[3]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[4]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[4]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[4]),
        .I4(mast1_wdata[4]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[5]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[5]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[5]),
        .I4(mast1_wdata[5]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[6]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[6]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[6]),
        .I4(mast1_wdata[6]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[7]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[7]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[7]),
        .I4(mast1_wdata[7]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[8]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[8]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[8]),
        .I4(mast1_wdata[8]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav1_wdata[9]_INST_0 
       (.I0(\slav1_wdata[31]_INST_0_i_1_n_0 ),
        .I1(mast3_wdata[9]),
        .I2(\slav1_wdata[31]_INST_0_i_2_n_0 ),
        .I3(mast2_wdata[9]),
        .I4(mast1_wdata[9]),
        .I5(\slav1_wdata[31]_INST_0_i_3_n_0 ),
        .O(slav1_wdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[0]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[0]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[0]),
        .I4(mast1_addr[0]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[10]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[10]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[10]),
        .I4(mast1_addr[10]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[11]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[11]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[11]),
        .I4(mast1_addr[11]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[1]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[1]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[1]),
        .I4(mast1_addr[1]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[2]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[2]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[2]),
        .I4(mast1_addr[2]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[3]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[3]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[3]),
        .I4(mast1_addr[3]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[4]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[4]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[4]),
        .I4(mast1_addr[4]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[5]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[5]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[5]),
        .I4(mast1_addr[5]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[6]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[6]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[6]),
        .I4(mast1_addr[6]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[7]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[7]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[7]),
        .I4(mast1_addr[7]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[8]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[8]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[8]),
        .I4(mast1_addr[8]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_addr[9]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_addr[9]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_addr[9]),
        .I4(mast1_addr[9]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_addr[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_master_id[0]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_id[0]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_id[0]),
        .I4(mast1_id[0]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_master_id[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_master_id[1]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_id[1]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_id[1]),
        .I4(mast1_id[1]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_master_id[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    slav2_type_INST_0
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_type),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_type),
        .I4(mast1_type),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_type));
  LUT4 #(
    .INIT(16'h1000)) 
    slav2_type_INST_0_i_1
       (.I0(mast2_addr[13]),
        .I1(mast2_addr[14]),
        .I2(mast2_addr[12]),
        .I3(slav2_type_INST_0_i_3_n_0),
        .O(slav2_type_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    slav2_type_INST_0_i_2
       (.I0(mast1_addr[13]),
        .I1(mast1_addr[14]),
        .I2(slav3_master_id128_out),
        .I3(mast1_addr[12]),
        .O(slav2_type_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00A208AA)) 
    slav2_type_INST_0_i_3
       (.I0(mast2_valid),
        .I1(split_reg_n_0),
        .I2(split_master_id[1]),
        .I3(mast1_valid),
        .I4(split_master_id[0]),
        .O(slav2_type_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    slav2_valid_INST_0
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(\mast2_rdata[31]_INST_0_i_2_n_0 ),
        .I2(\mast1_rdata[31]_INST_0_i_2_n_0 ),
        .O(slav2_valid));
  LUT4 #(
    .INIT(16'h1000)) 
    slav2_valid_INST_0_i_1
       (.I0(mast3_addr[14]),
        .I1(mast3_addr[13]),
        .I2(mast3_addr[12]),
        .I3(\mast3_rdata[31]_INST_0_i_4_n_0 ),
        .O(slav2_valid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[0]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[0]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[0]),
        .I4(mast1_wdata[0]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[10]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[10]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[10]),
        .I4(mast1_wdata[10]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[11]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[11]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[11]),
        .I4(mast1_wdata[11]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[12]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[12]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[12]),
        .I4(mast1_wdata[12]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[13]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[13]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[13]),
        .I4(mast1_wdata[13]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[14]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[14]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[14]),
        .I4(mast1_wdata[14]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[15]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[15]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[15]),
        .I4(mast1_wdata[15]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[16]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[16]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[16]),
        .I4(mast1_wdata[16]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[17]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[17]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[17]),
        .I4(mast1_wdata[17]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[18]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[18]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[18]),
        .I4(mast1_wdata[18]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[19]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[19]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[19]),
        .I4(mast1_wdata[19]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[1]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[1]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[1]),
        .I4(mast1_wdata[1]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[20]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[20]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[20]),
        .I4(mast1_wdata[20]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[21]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[21]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[21]),
        .I4(mast1_wdata[21]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[22]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[22]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[22]),
        .I4(mast1_wdata[22]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[23]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[23]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[23]),
        .I4(mast1_wdata[23]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[24]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[24]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[24]),
        .I4(mast1_wdata[24]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[25]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[25]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[25]),
        .I4(mast1_wdata[25]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[26]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[26]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[26]),
        .I4(mast1_wdata[26]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[27]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[27]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[27]),
        .I4(mast1_wdata[27]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[28]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[28]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[28]),
        .I4(mast1_wdata[28]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[29]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[29]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[29]),
        .I4(mast1_wdata[29]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[2]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[2]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[2]),
        .I4(mast1_wdata[2]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[30]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[30]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[30]),
        .I4(mast1_wdata[30]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[31]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[31]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[31]),
        .I4(mast1_wdata[31]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[3]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[3]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[3]),
        .I4(mast1_wdata[3]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[4]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[4]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[4]),
        .I4(mast1_wdata[4]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[5]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[5]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[5]),
        .I4(mast1_wdata[5]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[6]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[6]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[6]),
        .I4(mast1_wdata[6]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[7]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[7]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[7]),
        .I4(mast1_wdata[7]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[8]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[8]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[8]),
        .I4(mast1_wdata[8]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav2_wdata[9]_INST_0 
       (.I0(slav2_valid_INST_0_i_1_n_0),
        .I1(mast3_wdata[9]),
        .I2(slav2_type_INST_0_i_1_n_0),
        .I3(mast2_wdata[9]),
        .I4(mast1_wdata[9]),
        .I5(slav2_type_INST_0_i_2_n_0),
        .O(slav2_wdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[0]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[0]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[0]),
        .I4(mast1_addr[0]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[10]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[10]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[10]),
        .I4(mast1_addr[10]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[11]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[11]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[11]),
        .I4(mast1_addr[11]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[1]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[1]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[1]),
        .I4(mast1_addr[1]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[2]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[2]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[2]),
        .I4(mast1_addr[2]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[3]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[3]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[3]),
        .I4(mast1_addr[3]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[4]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[4]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[4]),
        .I4(mast1_addr[4]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[5]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[5]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[5]),
        .I4(mast1_addr[5]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[6]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[6]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[6]),
        .I4(mast1_addr[6]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[7]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[7]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[7]),
        .I4(mast1_addr[7]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[8]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[8]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[8]),
        .I4(mast1_addr[8]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_addr[9]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_addr[9]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_addr[9]),
        .I4(mast1_addr[9]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_addr[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_master_id[0]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_id[0]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_id[0]),
        .I4(mast1_id[0]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_master_id[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_master_id[1]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_id[1]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_id[1]),
        .I4(mast1_id[1]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_master_id[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    slav3_type_INST_0
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_type),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_type),
        .I4(mast1_type),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_type));
  LUT3 #(
    .INIT(8'hFE)) 
    slav3_valid_INST_0
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I2(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_valid));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[0]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[0]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[0]),
        .I4(mast1_wdata[0]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[10]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[10]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[10]),
        .I4(mast1_wdata[10]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[11]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[11]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[11]),
        .I4(mast1_wdata[11]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[12]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[12]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[12]),
        .I4(mast1_wdata[12]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[13]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[13]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[13]),
        .I4(mast1_wdata[13]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[14]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[14]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[14]),
        .I4(mast1_wdata[14]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[15]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[15]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[15]),
        .I4(mast1_wdata[15]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[16]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[16]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[16]),
        .I4(mast1_wdata[16]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[17]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[17]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[17]),
        .I4(mast1_wdata[17]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[18]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[18]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[18]),
        .I4(mast1_wdata[18]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[19]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[19]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[19]),
        .I4(mast1_wdata[19]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[1]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[1]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[1]),
        .I4(mast1_wdata[1]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[20]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[20]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[20]),
        .I4(mast1_wdata[20]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[21]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[21]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[21]),
        .I4(mast1_wdata[21]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[22]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[22]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[22]),
        .I4(mast1_wdata[22]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[23]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[23]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[23]),
        .I4(mast1_wdata[23]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[24]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[24]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[24]),
        .I4(mast1_wdata[24]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[25]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[25]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[25]),
        .I4(mast1_wdata[25]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[26]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[26]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[26]),
        .I4(mast1_wdata[26]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[27]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[27]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[27]),
        .I4(mast1_wdata[27]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[28]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[28]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[28]),
        .I4(mast1_wdata[28]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[29]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[29]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[29]),
        .I4(mast1_wdata[29]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[2]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[2]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[2]),
        .I4(mast1_wdata[2]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[30]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[30]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[30]),
        .I4(mast1_wdata[30]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[31]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[31]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[31]),
        .I4(mast1_wdata[31]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[3]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[3]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[3]),
        .I4(mast1_wdata[3]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[4]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[4]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[4]),
        .I4(mast1_wdata[4]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[5]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[5]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[5]),
        .I4(mast1_wdata[5]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[6]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[6]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[6]),
        .I4(mast1_wdata[6]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[7]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[7]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[7]),
        .I4(mast1_wdata[7]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[8]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[8]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[8]),
        .I4(mast1_wdata[8]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \slav3_wdata[9]_INST_0 
       (.I0(\mast3_rdata[31]_INST_0_i_3_n_0 ),
        .I1(mast3_wdata[9]),
        .I2(\mast2_rdata[31]_INST_0_i_3_n_0 ),
        .I3(mast2_wdata[9]),
        .I4(mast1_wdata[9]),
        .I5(\mast1_rdata[31]_INST_0_i_3_n_0 ),
        .O(slav3_wdata[9]));
  LUT2 #(
    .INIT(4'h2)) 
    split_i_1
       (.I0(slav3_split),
        .I1(reset),
        .O(split_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA80000)) 
    \split_master_id[0]_i_1 
       (.I0(\split_master_id[1]_i_2_n_0 ),
        .I1(\split_master_id[0]_i_2_n_0 ),
        .I2(\split_master_id[0]_i_3_n_0 ),
        .I3(\split_master_id[0]_i_4_n_0 ),
        .I4(\split_master_id[1]_i_6_n_0 ),
        .I5(split_master_id[0]),
        .O(\split_master_id[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \split_master_id[0]_i_2 
       (.I0(mast1_addr[13]),
        .I1(mast1_addr[14]),
        .I2(slav3_master_id128_out),
        .I3(mast1_addr[12]),
        .I4(mast1_id[0]),
        .O(\split_master_id[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \split_master_id[0]_i_3 
       (.I0(mast2_addr[13]),
        .I1(\mast2_rdata[31]_INST_0_i_4_n_0 ),
        .I2(mast2_addr[12]),
        .I3(mast2_id[0]),
        .O(\split_master_id[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \split_master_id[0]_i_4 
       (.I0(mast3_addr[13]),
        .I1(mast3_addr[14]),
        .I2(\mast3_rdata[31]_INST_0_i_4_n_0 ),
        .I3(mast3_addr[12]),
        .I4(mast3_id[0]),
        .O(\split_master_id[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA80000)) 
    \split_master_id[1]_i_1 
       (.I0(\split_master_id[1]_i_2_n_0 ),
        .I1(\split_master_id[1]_i_3_n_0 ),
        .I2(\split_master_id[1]_i_4_n_0 ),
        .I3(\split_master_id[1]_i_5_n_0 ),
        .I4(\split_master_id[1]_i_6_n_0 ),
        .I5(split_master_id[1]),
        .O(\split_master_id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \split_master_id[1]_i_2 
       (.I0(reset),
        .I1(slav3_split),
        .I2(split_reg_n_0),
        .O(\split_master_id[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \split_master_id[1]_i_3 
       (.I0(mast1_addr[13]),
        .I1(mast1_addr[14]),
        .I2(slav3_master_id128_out),
        .I3(mast1_addr[12]),
        .I4(mast1_id[1]),
        .O(\split_master_id[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \split_master_id[1]_i_4 
       (.I0(mast2_addr[13]),
        .I1(\mast2_rdata[31]_INST_0_i_4_n_0 ),
        .I2(mast2_addr[12]),
        .I3(mast2_id[1]),
        .O(\split_master_id[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \split_master_id[1]_i_5 
       (.I0(mast3_addr[13]),
        .I1(mast3_addr[14]),
        .I2(\mast3_rdata[31]_INST_0_i_4_n_0 ),
        .I3(mast3_addr[12]),
        .I4(mast3_id[1]),
        .O(\split_master_id[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \split_master_id[1]_i_6 
       (.I0(slav3_split),
        .I1(reset),
        .O(\split_master_id[1]_i_6_n_0 ));
  FDRE \split_master_id_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\split_master_id[0]_i_1_n_0 ),
        .Q(split_master_id[0]),
        .R(1'b0));
  FDRE \split_master_id_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\split_master_id[1]_i_1_n_0 ),
        .Q(split_master_id[1]),
        .R(1'b0));
  FDRE split_reg
       (.C(clk),
        .CE(1'b1),
        .D(split_i_1_n_0),
        .Q(split_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
