`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:19:18 07/15/2015
// Design Name:   AES_TOP
// Module Name:   C:/Users/Shourya/Documents/Xilinx Projects/AES_Verilog/AES_TB.v
// Project Name:  AES_Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AES_TOP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AES_TB;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] finalout;

	// Instantiate the Unit Under Test (UUT)
	AES_TOP uut (
		.clk(clk), 
		.finalout(finalout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

