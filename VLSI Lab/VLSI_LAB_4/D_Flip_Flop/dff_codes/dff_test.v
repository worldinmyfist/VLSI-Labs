`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:56 10/15/2019
// Design Name:   dff
// Module Name:   /home/karan/Documents/Lab_5/dff_test.v
// Project Name:  Lab_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_test;

	// Inputs
	reg clk;
	reg rst;
	reg D;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.clk(clk), 
		.rst(rst), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		D = 0;
		forever #10 clk = ~clk;
        end
		  initial 
		  begin
		  rst = 1;
		  D <= 0 ;
		  #100;
		  D <= 1;
		  #100;
		  rst = 0;
		  #100;
		  D <= 0;
		  end
		// Add stimulus here
		endmodule

