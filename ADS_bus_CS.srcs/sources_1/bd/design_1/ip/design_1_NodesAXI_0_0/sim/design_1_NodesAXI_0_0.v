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


// IP VLNV: xilinx.com:user:NodesAXI:1.0
// IP Revision: 8

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_NodesAXI_0_0 (
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
  slav3_split,
  s00_axi_aclk,
  s00_axi_aresetn,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready
);

output wire mast1_valid;
output wire mast1_type;
output wire [1 : 0] mast1_id;
output wire [14 : 0] mast1_addr;
output wire [31 : 0] mast1_wdata;
input wire [31 : 0] mast1_rdata;
input wire mast1_ready;
output wire mast2_valid;
output wire mast2_type;
output wire [1 : 0] mast2_id;
output wire [14 : 0] mast2_addr;
output wire [31 : 0] mast2_wdata;
input wire [31 : 0] mast2_rdata;
input wire mast2_ready;
output wire mast3_valid;
output wire mast3_type;
output wire [1 : 0] mast3_id;
output wire [14 : 0] mast3_addr;
output wire [31 : 0] mast3_wdata;
input wire [31 : 0] mast3_rdata;
input wire mast3_ready;
input wire slav1_valid;
input wire slav1_type;
input wire [1 : 0] slav1_master_id;
input wire [31 : 0] slav1_wdata;
input wire [11 : 0] slav1_addr;
output wire [31 : 0] slav1_rdata;
output wire slav1_ready;
input wire slav2_valid;
input wire slav2_type;
input wire [1 : 0] slav2_master_id;
input wire [31 : 0] slav2_wdata;
input wire [11 : 0] slav2_addr;
output wire [31 : 0] slav2_rdata;
output wire slav2_ready;
input wire slav3_valid;
input wire slav3_type;
input wire [1 : 0] slav3_master_id;
input wire [31 : 0] slav3_wdata;
input wire [11 : 0] slav3_addr;
output wire [31 : 0] slav3_rdata;
output wire slav3_ready;
output wire slav3_split;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *)
input wire s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [7 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [7 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 43, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_sy\
stem7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire s00_axi_rready;

  NodesAXI_v1_0 #(
    .C_S00_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S00_AXI_ADDR_WIDTH(8)  // Width of S_AXI address bus
  ) inst (
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
    .slav3_split(slav3_split),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready)
  );
endmodule
