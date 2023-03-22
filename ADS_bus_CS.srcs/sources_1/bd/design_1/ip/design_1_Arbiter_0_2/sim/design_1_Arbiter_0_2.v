// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:Arbiter:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_Arbiter_0_2 (
  clk,
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
  slav3_split
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire mast1_valid;
input wire mast1_type;
input wire [1 : 0] mast1_id;
input wire [14 : 0] mast1_addr;
input wire [31 : 0] mast1_wdata;
output wire [31 : 0] mast1_rdata;
output wire mast1_ready;
input wire mast2_valid;
input wire mast2_type;
input wire [1 : 0] mast2_id;
input wire [14 : 0] mast2_addr;
input wire [31 : 0] mast2_wdata;
output wire [31 : 0] mast2_rdata;
output wire mast2_ready;
input wire mast3_valid;
input wire mast3_type;
input wire [1 : 0] mast3_id;
input wire [14 : 0] mast3_addr;
input wire [31 : 0] mast3_wdata;
output wire [31 : 0] mast3_rdata;
output wire mast3_ready;
output wire slav1_valid;
output wire slav1_type;
output wire [1 : 0] slav1_master_id;
output wire [31 : 0] slav1_wdata;
output wire [11 : 0] slav1_addr;
input wire [31 : 0] slav1_rdata;
input wire slav1_ready;
output wire slav2_valid;
output wire slav2_type;
output wire [1 : 0] slav2_master_id;
output wire [31 : 0] slav2_wdata;
output wire [11 : 0] slav2_addr;
input wire [31 : 0] slav2_rdata;
input wire slav2_ready;
output wire slav3_valid;
output wire slav3_type;
output wire [1 : 0] slav3_master_id;
output wire [31 : 0] slav3_wdata;
output wire [11 : 0] slav3_addr;
input wire [31 : 0] slav3_rdata;
input wire slav3_ready;
input wire slav3_split;

  Arbiter inst (
    .clk(clk),
    .reset(reset),
    .mast1_valid(mast1_valid),
    .mast1_type(mast1_type),
    .mast1_id(mast1_id),
    .mast1_addr(mast1_addr),
    .mast1_wdata(mast1_wdata),
    .mast1_rdata(mast1_rdata),
    .mast1_ready(mast1_ready),
    .mast2_valid(mast2_valid),
    .mast2_type(mast2_type),
    .mast2_id(mast2_id),
    .mast2_addr(mast2_addr),
    .mast2_wdata(mast2_wdata),
    .mast2_rdata(mast2_rdata),
    .mast2_ready(mast2_ready),
    .mast3_valid(mast3_valid),
    .mast3_type(mast3_type),
    .mast3_id(mast3_id),
    .mast3_addr(mast3_addr),
    .mast3_wdata(mast3_wdata),
    .mast3_rdata(mast3_rdata),
    .mast3_ready(mast3_ready),
    .slav1_valid(slav1_valid),
    .slav1_type(slav1_type),
    .slav1_master_id(slav1_master_id),
    .slav1_wdata(slav1_wdata),
    .slav1_addr(slav1_addr),
    .slav1_rdata(slav1_rdata),
    .slav1_ready(slav1_ready),
    .slav2_valid(slav2_valid),
    .slav2_type(slav2_type),
    .slav2_master_id(slav2_master_id),
    .slav2_wdata(slav2_wdata),
    .slav2_addr(slav2_addr),
    .slav2_rdata(slav2_rdata),
    .slav2_ready(slav2_ready),
    .slav3_valid(slav3_valid),
    .slav3_type(slav3_type),
    .slav3_master_id(slav3_master_id),
    .slav3_wdata(slav3_wdata),
    .slav3_addr(slav3_addr),
    .slav3_rdata(slav3_rdata),
    .slav3_ready(slav3_ready),
    .slav3_split(slav3_split)
  );
endmodule
