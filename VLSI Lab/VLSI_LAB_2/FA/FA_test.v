`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:59 09/26/2019
// Design Name:   FA
// Module Name:   /home/aryan/ISE_DS/FA/FA_test.v
// Project Name:  FA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_test;

	// Inputs
	reg a_i;
	reg b_i;
	reg c_in;

	// Outputs
	wire S_i;
	wire C_out;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.a_i(a_i), 
		.b_i(b_i), 
		.c_in(c_in), 
		.S_i(S_i), 
		.C_out(C_out)
	);

	initial begin
		// Initialize Inputs
		a_i = 0;
		b_i = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 c_in= ~c_in;
	always #2 a_i = ~a_i;
	always #4 b_i = ~b_i;
      
endmodule

