
`timescale 1 ns / 1 ps

	module NodesAXI_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 8
	)
	(
		// Users to add ports here
    //master1 io
        output mast1_valid, mast1_type,
        output[1:0] mast1_id,
        output[14:0] mast1_addr,
        output[31:0] mast1_wdata,
        input [31:0] mast1_rdata,
        input  mast1_ready,
        
        //master2 io
        output mast2_valid, mast2_type,
        output[1:0] mast2_id,
        output[14:0] mast2_addr,
        output[31:0] mast2_wdata,
        input  [31:0] mast2_rdata,
        input   mast2_ready,
        
        //master3 io
        output mast3_valid, mast3_type,
        output[1:0] mast3_id,
        output[14:0] mast3_addr,
        output[31:0] mast3_wdata,
        input  [31:0] mast3_rdata,
        input   mast3_ready,
        
        //slave1 io
        input  slav1_valid, slav1_type,
        input [1:0] slav1_master_id,
        input [31:0] slav1_wdata,
        input [11:0] slav1_addr,
        output [31:0] slav1_rdata,
        output slav1_ready,
        
        //slave2 io
        input  slav2_valid, slav2_type,
        input [1:0] slav2_master_id,
        input [31:0] slav2_wdata,
        input [11:0] slav2_addr,
        output [31:0] slav2_rdata,
        output slav2_ready,
        
        //slave3 io
        input  slav3_valid, slav3_type,
        input [1:0] slav3_master_id,
        input [31:0] slav3_wdata,
        input [11:0] slav3_addr,
        output [31:0] slav3_rdata,
        output slav3_ready,
        output slav3_split,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	NodesAXI_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) NodesAXI_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
// Instantiation of Master_Slave block
         //master1
        .mast1_valid(mast1_valid),
        .mast1_type(mast1_type),
        .mast1_id(mast1_id),
        .mast1_addr(mast1_addr),
        .mast1_wdata(mast1_wdata),
        .mast1_rdata(mast1_rdata),
        .mast1_ready(mast1_ready),
        //master2
        .mast2_valid(mast2_valid),
        .mast2_type(mast2_type),
        .mast2_id(mast2_id),
        .mast2_addr(mast2_addr),
        .mast2_wdata(mast2_wdata),
        .mast2_rdata(mast2_rdata),
        .mast2_ready(mast2_ready),
        //master3
        .mast3_valid(mast3_valid),
        .mast3_type(mast3_type),
        .mast3_id(mast3_id),
        .mast3_addr(mast3_addr),
        .mast3_wdata(mast3_wdata),
        .mast3_rdata(mast3_rdata),
        .mast3_ready(mast3_ready),
        //slave1
        .slav1_valid(slav1_valid),
        .slav1_type(slav1_type),
        .slav1_master_id(slav1_master_id),
        .slav1_wdata(slav1_wdata),
        .slav1_addr(slav1_addr),
        .slav1_rdata(slav1_rdata),
        .slav1_ready(slav1_ready),
        //slave2
        .slav2_valid(slav2_valid),
        .slav2_type(slav2_type),
        .slav2_master_id(slav2_master_id),
        .slav2_wdata(slav2_wdata),
        .slav2_addr(slav2_addr),
        .slav2_rdata(slav2_rdata),
        .slav2_ready(slav2_ready),
        //slave3
        .slav3_valid(slav3_valid),
        .slav3_type(slav3_type),
        .slav3_master_id(slav3_master_id),
        .slav3_wdata(slav3_wdata),
        .slav3_addr(slav3_addr),
        .slav3_rdata(slav3_rdata),
        .slav3_ready(slav3_ready),
        .slav3_split(slav3_split)
		
	);

	// Add user logic here

	// User logic ends

	endmodule
