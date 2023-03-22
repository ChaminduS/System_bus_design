
`timescale 1 ns / 1 ps

module slave(
    input slav_valid, slav_type,
    input[1:0] slav_master_id,
    input[31:0] slav_wdata,
    input[11:0] slav_addr,
    output reg[31:0] slav_rdata,
    input slav_ready,
    input clk
    );
    
    localparam write =1'b1;
    localparam read = 1'b0;
    
    reg[31:0] data[1023:0];
    
    always@(posedge clk)
    begin
    if (slav_valid==1 & slav_type==write & slav_ready)
        data[slav_addr]<=slav_wdata;
    end
    
    always@(*)
    begin
        if (slav_valid==1 & slav_type==read & slav_ready)
            slav_rdata = data[slav_addr];
        else
            slav_rdata = 0;  
    end
    
endmodule

	module NodesAXI_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 8
	)
	(
		// Users to add ports here
        //master1 io
        output wire mast1_valid, mast1_type,
        output wire [1:0] mast1_id,
        output wire[14:0] mast1_addr,
        output wire[31:0] mast1_wdata,
        input wire [31:0] mast1_rdata,
        input  wire mast1_ready,
        
        //master2 io
        output wire mast2_valid, mast2_type,
        output wire[1:0] mast2_id,
        output wire[14:0] mast2_addr,
        output wire[31:0] mast2_wdata,
        input  wire [31:0] mast2_rdata,
        input  wire mast2_ready,
        
        //master3 io
        output wire mast3_valid, mast3_type,
        output wire[1:0] mast3_id,
        output wire[14:0] mast3_addr,
        output wire[31:0] mast3_wdata,
        input  wire[31:0] mast3_rdata,
        input  wire mast3_ready,
        
        //slave1 io
        input wire slav1_valid, slav1_type,
        input wire [1:0] slav1_master_id,
        input wire [31:0] slav1_wdata,
        input wire [11:0] slav1_addr,
        output wire [31:0] slav1_rdata,
        output wire slav1_ready,
        
        //slave2 io
        input wire slav2_valid, slav2_type,
        input wire [1:0] slav2_master_id,
        input wire [31:0] slav2_wdata,
        input wire [11:0] slav2_addr,
        output wire[31:0] slav2_rdata,
        output wire slav2_ready,
        
        //slave3 io
        input wire slav3_valid, slav3_type,
        input wire [1:0] slav3_master_id,
        input wire [31:0] slav3_wdata,
        input wire [11:0] slav3_addr,
        output wire [31:0] slav3_rdata,
        output wire slav3_ready,
        output wire slav3_split,

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 5;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 43
	//master1
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST1_VALID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST1_TYPE;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST1_ID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST1_ADDR;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST1_WDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST1_RDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST1_READY;
	//master2
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST2_VALID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST2_TYPE;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST2_ID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST2_ADDR;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST2_WDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST2_RDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST2_READY;
	//master3
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST3_VALID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST3_TYPE;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST3_ID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST3_ADDR;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST3_WDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST3_RDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	MAST3_READY;
	//slave1
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV1_VALID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV1_TYPE;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV1_MASTER_ID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV1_WDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV1_ADDR;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV1_RDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV1_READY;
	//slave2
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV2_VALID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV2_TYPE;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV2_MASTER_ID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV2_WDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV2_ADDR;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV2_RDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV2_READY;
	//slave3
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_VALID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_TYPE;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_MASTER_ID;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_WDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_ADDR;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_RDATA;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_READY;
	reg [C_S_AXI_DATA_WIDTH-1:0]	SLAV3_SPLIT;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      //master1
	      MAST1_VALID <= 0;
	      MAST1_TYPE <= 0;
	      MAST1_ID <= 0;
	      MAST1_ADDR <= 0;
	      MAST1_WDATA <= 0;
	      //MAST1_RDATA <= 0;
	      //MAST1_READY <= 0;
	      //master2
	      MAST2_VALID <= 0;
	      MAST2_TYPE <= 0;
	      MAST2_ID <= 0;
	      MAST2_ADDR <= 0;
	      MAST2_WDATA <= 0;
	     //MAST2_RDATA <= 0;
	     //MAST2_READY <= 0;
	      //master3
	      MAST3_VALID <= 0;
	      MAST3_TYPE <= 0;
	      MAST3_ID <= 0;
	      MAST3_ADDR <= 0;
	      MAST3_WDATA <= 0;
	      //MAST3_RDATA <= 0;
	      //MAST3_READY <= 0;
	      //slave1
	      //SLAV1_VALID <= 0;
	      //SLAV1_TYPE <= 0;
	      //SLAV1_MASTER_ID <= 0;
	      //SLAV1_WDATA <= 0;
	      //SLAV1_ADDR <= 0;
	      //SLAV1_RDATA <= 0;
	      SLAV1_READY <= 0;
	      //slave2
	      //SLAV2_VALID <= 0;
	      //SLAV2_TYPE <= 0;
	      //SLAV2_MASTER_ID <= 0;
	      //SLAV2_WDATA <= 0;
	      //SLAV2_ADDR <= 0;
	      //SLAV2_RDATA <= 0;
	      SLAV2_READY <= 0;
	      //slave3
	      //SLAV3_VALID <= 0;
	      //SLAV3_TYPE <= 0;
	      //SLAV3_MASTER_ID <= 0;
	      //SLAV3_WDATA <= 0;
	      //SLAV3_ADDR <= 0;
	      //SLAV3_RDATA <= 0;
	      SLAV3_READY <= 0;
	      SLAV3_SPLIT <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          6'h00:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                MAST1_VALID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h01:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                MAST1_TYPE[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h02:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                MAST1_ID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h03:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                MAST1_ADDR[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h04:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                MAST1_WDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
//	          6'h05:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 5
//	                MAST1_RDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h06:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 6
//	                MAST1_READY[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
	          6'h07:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                MAST2_VALID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h08:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 8
	                MAST2_TYPE[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h09:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 9
	                MAST2_ID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 10
	                MAST2_ADDR[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 11
	                MAST2_WDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
//	          6'h0C:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 12
//	                MAST2_RDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h0D:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 13
//	                MAST2_READY[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
	          6'h0E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 14
	                MAST3_VALID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h0F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 15
	                MAST3_TYPE[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h10:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 16
	                MAST3_ID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h11:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 17
	                MAST3_ADDR[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h12:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 18
	                MAST3_WDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
//	          6'h13:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 19
//	                MAST3_RDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h14:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 20
//	                MAST3_READY[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h15:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 21
//	                SLAV1_VALID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h16:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 22
//	                SLAV1_TYPE[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h17:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 23
//	                SLAV1_MASTER_ID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h18:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 24
//	                SLAV1_WDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h19:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 25
//	                SLAV1_ADDR[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h1A:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 26
//	                SLAV1_RDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
	          6'h1B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 27
	                SLAV1_READY[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
//	          6'h1C:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 28
//	                SLAV2_VALID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h1D:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 29
//	                SLAV2_TYPE[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h1E:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 30
//	                SLAV2_MASTER_ID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h1F:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 31
//	                SLAV2_WDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h20:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 32
//	                SLAV2_ADDR[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h21:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 33
//	                SLAV2_RDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
	          6'h22:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 34
	                SLAV2_READY[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
//	          6'h23:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 35
//	                SLAV3_VALID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h24:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 36
//	                SLAV3_TYPE[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h25:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 37
//	                SLAV3_MASTER_ID[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h26:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 38
//	                SLAV3_WDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h27:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 39
//	                SLAV3_ADDR[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
//	          6'h28:
//	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
//	                // Respective byte enables are asserted as per write strobes 
//	                // Slave register 40
//	                SLAV3_RDATA[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
//	              end  
	          6'h29:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 41
	                SLAV3_READY[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          6'h2A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 42
	                SLAV3_SPLIT[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      MAST1_VALID <= MAST1_VALID;
	                      MAST1_TYPE <= MAST1_TYPE;
	                      MAST1_ID <= MAST1_ID;
	                      MAST1_ADDR <= MAST1_ADDR;
	                      MAST1_WDATA <= MAST1_WDATA;
//	                      MAST1_RDATA <= MAST1_RDATA;
//	                      MAST1_READY <= MAST1_READY;
	                      MAST2_VALID <= MAST2_VALID;
	                      MAST2_TYPE <= MAST2_TYPE;
	                      MAST2_ID <= MAST2_ID;
	                      MAST2_ADDR <= MAST2_ADDR;
	                      MAST2_WDATA <= MAST2_WDATA;
//	                      MAST2_RDATA <= MAST2_RDATA;
//	                      MAST2_READY <= MAST2_READY;
	                      MAST3_VALID <= MAST3_VALID;
	                      MAST3_TYPE <= MAST3_TYPE;
	                      MAST3_ID <= MAST3_ID;
	                      MAST3_ADDR <= MAST3_ADDR;
	                      MAST3_WDATA <= MAST3_WDATA;
//	                      MAST3_RDATA <= MAST3_RDATA;
//	                      MAST3_READY <= MAST3_READY;
//	                      SLAV1_VALID <= SLAV1_VALID;
//	                      SLAV1_TYPE <= SLAV1_TYPE;
//	                      SLAV1_MASTER_ID <= SLAV1_MASTER_ID;
//	                      SLAV1_WDATA <= SLAV1_WDATA;
//	                      SLAV1_ADDR <= SLAV1_ADDR;
//	                      SLAV1_RDATA <= SLAV1_RDATA;
	                      SLAV1_READY <= SLAV1_READY;
//	                      SLAV2_VALID <= SLAV2_VALID;
//	                      SLAV2_TYPE <= SLAV2_TYPE;
//	                      SLAV2_MASTER_ID <= SLAV2_MASTER_ID;
//	                      SLAV2_WDATA <= SLAV2_WDATA;
//	                      SLAV2_ADDR <= SLAV2_ADDR;
//	                      SLAV2_RDATA <= SLAV2_RDATA;
	                      SLAV2_READY <= SLAV2_READY;
//	                      SLAV3_VALID <= SLAV3_VALID;
//	                      SLAV3_TYPE <= SLAV3_TYPE;
//	                      SLAV3_MASTER_ID <= SLAV3_MASTER_ID;
//	                      SLAV3_WDATA <= SLAV3_WDATA;
//	                      SLAV3_ADDR <= SLAV3_ADDR;
//	                      SLAV3_RDATA <= SLAV3_RDATA;
	                      SLAV3_READY <= SLAV3_READY;
	                      SLAV3_SPLIT <= SLAV3_SPLIT;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        6'h00   : reg_data_out <= MAST1_VALID;
	        6'h01   : reg_data_out <= MAST1_TYPE;
	        6'h02   : reg_data_out <= MAST1_ID;
	        6'h03   : reg_data_out <= MAST1_ADDR;
	        6'h04   : reg_data_out <= MAST1_WDATA;
	        6'h05   : reg_data_out <= MAST1_RDATA;
	        6'h06   : reg_data_out <= MAST1_READY;
	        6'h07   : reg_data_out <= MAST2_VALID;
	        6'h08   : reg_data_out <= MAST2_TYPE;
	        6'h09   : reg_data_out <= MAST2_ID;
	        6'h0A   : reg_data_out <= MAST2_ADDR;
	        6'h0B   : reg_data_out <= MAST2_WDATA;
	        6'h0C   : reg_data_out <= MAST2_RDATA;
	        6'h0D   : reg_data_out <= MAST2_READY;
	        6'h0E   : reg_data_out <= MAST3_VALID;
	        6'h0F   : reg_data_out <= MAST3_TYPE;
	        6'h10   : reg_data_out <= MAST3_ID;
	        6'h11   : reg_data_out <= MAST3_ADDR;
	        6'h12   : reg_data_out <= MAST3_WDATA;
	        6'h13   : reg_data_out <= MAST3_RDATA;
	        6'h14   : reg_data_out <= MAST3_READY;
	        6'h15   : reg_data_out <= SLAV1_VALID;
	        6'h16   : reg_data_out <= SLAV1_TYPE;
	        6'h17   : reg_data_out <= SLAV1_MASTER_ID;
	        6'h18   : reg_data_out <= SLAV1_WDATA;
	        6'h19   : reg_data_out <= SLAV1_ADDR;
	        6'h1A   : reg_data_out <= SLAV1_RDATA;
	        6'h1B   : reg_data_out <= SLAV1_READY;
	        6'h1C   : reg_data_out <= SLAV2_VALID;
	        6'h1D   : reg_data_out <= SLAV2_TYPE;
	        6'h1E   : reg_data_out <= SLAV2_MASTER_ID;
	        6'h1F   : reg_data_out <= SLAV2_WDATA;
	        6'h20   : reg_data_out <= SLAV2_ADDR;
	        6'h21   : reg_data_out <= SLAV2_RDATA;
	        6'h22   : reg_data_out <= SLAV2_READY;
	        6'h23   : reg_data_out <= SLAV3_VALID;
	        6'h24   : reg_data_out <= SLAV3_TYPE;
	        6'h25   : reg_data_out <= SLAV3_MASTER_ID;
	        6'h26   : reg_data_out <= SLAV3_WDATA;
	        6'h27   : reg_data_out <= SLAV3_ADDR;
	        6'h28   : reg_data_out <= SLAV3_RDATA;
	        6'h29   : reg_data_out <= SLAV3_READY;
	        6'h2A   : reg_data_out <= SLAV3_SPLIT;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
	//master1
    assign mast1_valid = MAST1_VALID[0];
    assign mast1_type  = MAST1_TYPE[0];
    assign mast1_id    = MAST1_ID[1:0];
    assign mast1_addr  = MAST1_ADDR[14:0];
    assign mast1_wdata = MAST1_WDATA[31:0];
//    assign mast1_rdata = MAST1_RDATA[31:0];
//    assign mast1_ready = MAST1_READY[0];
    
    //master2
    assign mast2_valid = MAST2_VALID[0];
    assign mast2_type  = MAST2_TYPE[0];
    assign mast2_id    = MAST2_ID[1:0];
    assign mast2_addr  = MAST2_ADDR[14:0];
    assign mast2_wdata = MAST2_WDATA[31:0];
//    assign mast2_rdata = MAST2_RDATA[31:0];
//    assign mast2_ready = MAST2_READY[0];
    
    //master3
    assign mast3_valid = MAST3_VALID[0];
    assign mast3_type  = MAST3_TYPE[0];
    assign mast3_id    = MAST3_ID[1:0];
    assign mast3_addr  = MAST3_ADDR[14:0];
    assign mast3_wdata = MAST3_WDATA[31:0];
//    assign mast3_rdata = MAST3_RDATA[31:0];
//    assign mast3_ready = MAST3_READY[0];
    
    //slave1
//    assign slav1_valid = SLAV1_VALID[0];
//    assign slav1_type  = SLAV1_TYPE[0];
//    assign slav1_master_id    = SLAV1_MASTER_ID[1:0];
//    assign slav1_wdata  = SLAV1_WDATA[31:0];
//    assign slav1_addr = SLAV1_ADDR[14:0];
    assign slav1_rdata = SLAV1_RDATA[31:0];
    assign slav1_ready = SLAV1_READY[0];
    
    //slave2
//    assign slav2_valid = SLAV2_VALID[0];
//    assign slav2_type  = SLAV2_TYPE[0];
//    assign slav2_master_id    = SLAV2_MASTER_ID[1:0];
//    assign slav2_wdata  = SLAV2_WDATA[31:0];
//    assign slav2_addr = SLAV2_ADDR[14:0];
    assign slav2_rdata = SLAV2_RDATA[31:0];
    assign slav2_ready = SLAV2_READY[0];
    
    wire[31:0] s1;
    wire[31:0] s2;
    wire[31:0] s3;
    
    slave slave1(.clk(S_AXI_ACLK),.slav_valid(slav1_valid),.slav_type(slav1_type),.slav_master_id(slav1_master_id),.slav_wdata(slav1_wdata),.slav_rdata(s1),.slav_addr(slav1_addr),.slav_ready(slav1_ready));
    slave slave2(.clk(S_AXI_ACLK),.slav_valid(slav2_valid),.slav_type(slav2_type),.slav_master_id(slav2_master_id),.slav_wdata(slav2_wdata),.slav_rdata(s2),.slav_addr(slav2_addr),.slav_ready(slav2_ready));
    
    
    //slave3
//    assign slav3_valid = SLAV3_VALID[0];
//    assign slav3_type  = SLAV3_TYPE[0];
//    assign slav3_master_id    = SLAV3_MASTER_ID[1:0];
//    assign slav3_wdata  = SLAV3_WDATA[31:0];
//    assign slav3_addr = SLAV3_ADDR[14:0];
    assign slav3_rdata = SLAV3_RDATA[31:0];
    assign slav3_ready = SLAV3_READY[0];
    assign slav3_split = SLAV3_SPLIT[0];
    
     slave slave3(.clk(S_AXI_ACLK),.slav_valid(slav3_valid),.slav_type(slav3_type),.slav_master_id(slav3_master_id),.slav_wdata(slav3_wdata),.slav_rdata(s3),.slav_addr(slav3_addr),.slav_ready(slav3_ready));
	always@(posedge S_AXI_ACLK)
	begin
	
	MAST1_RDATA <= mast1_rdata;
	MAST1_READY[0] <= mast1_ready;
	
	MAST2_RDATA <= mast2_rdata;
	MAST2_READY[0] <= mast2_ready;
	
	MAST3_RDATA <= mast3_rdata;
	MAST3_READY[0] <= mast3_ready;	
	
	SLAV1_VALID[0] <= slav1_valid;
	SLAV1_TYPE[0] <= slav1_type;
	SLAV1_MASTER_ID[1:0] <= slav1_master_id;
	SLAV1_WDATA <= slav1_wdata;
	SLAV1_ADDR[14:0] <= slav1_addr;
	
	SLAV2_VALID[0] <= slav2_valid;
	SLAV2_TYPE[0] <= slav2_type;
	SLAV2_MASTER_ID[1:0] <= slav2_master_id;
	SLAV2_WDATA <= slav2_wdata;
	SLAV2_ADDR[14:0] <= slav2_addr;
	
	SLAV3_VALID[0] <= slav3_valid;
	SLAV3_TYPE[0] <= slav3_type;
	SLAV3_MASTER_ID[1:0] <= slav3_master_id;
	SLAV3_WDATA <= slav3_wdata;
	SLAV3_ADDR[14:0] <= slav3_addr;
	
	SLAV1_RDATA <= s1;
	SLAV2_RDATA <= s2;
	SLAV3_RDATA <= s3;
	end
	
	// User logic ends

	endmodule
