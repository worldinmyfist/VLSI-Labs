`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:06:08 09/13/2019
// Design Name:   l2decoder
// Module Name:   /home/aryan/ISE_DS/l2decoder/l2decoder_test.v
// Project Name:  l2decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: l2decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module l2decoder_test;

	// Inputs
	reg e;
	reg x1;
	reg x2;
	reg x3;

	// Outputs
	wire y2_1;
	wire y2_2;
	wire y8_1;
	wire y8_2;
	wire y8_3;
	wire y8_4;
	wire y8_5;
	wire y8_6;
	wire y8_7;
	wire y8_8;

	// Instantiate the Unit Under Test (UUT)
	l2decoder uut (
		.e(e), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.y2_1(y2_1), 
		.y2_2(y2_2), 
		.y8_1(y8_1), 
		.y8_2(y8_2), 
		.y8_3(y8_3), 
		.y8_4(y8_4), 
		.y8_5(y8_5), 
		.y8_6(y8_6), 
		.y8_7(y8_7), 
		.y8_8(y8_8)
	);

	initial begin
		// Initialize Inputs
		e = 0;
		x1 = 0;
		x2 = 0;
		x3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 x1 = ~x1;
	always #2 x2 = ~x2;
	always #4 x3 = ~x3;
	always #8 e = ~e;
      
endmodule

