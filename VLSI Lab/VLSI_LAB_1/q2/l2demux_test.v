`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:45:23 09/13/2019
// Design Name:   l2demux
// Module Name:   /home/aryan/ISE_DS/l2demux/l2demux_test.v
// Project Name:  l2demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: l2demux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module l2demux_test;

	// Inputs
	reg x;
	reg s1;
	reg s2;
	reg s3;

	// Outputs
	wire y8_1;
	wire y8_2;
	wire y8_3;
	wire y8_4;
	wire y8_5;
	wire y8_6;
	wire y8_7;
	wire y8_8;
	wire y2_1;
	wire y2_2;

	// Instantiate the Unit Under Test (UUT)
	l2demux uut (
		.x(x), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.y8_1(y8_1), 
		.y8_2(y8_2), 
		.y8_3(y8_3), 
		.y8_4(y8_4), 
		.y8_5(y8_5), 
		.y8_6(y8_6), 
		.y8_7(y8_7), 
		.y8_8(y8_8), 
		.y2_1(y2_1), 
		.y2_2(y2_2)
	);

	initial begin
		// Initialize Inputs
		x = 1;
		s1 = 0;
		s2 = 0;
		s3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 s3 = ~s3;
	always #2 s2 = ~s2;
	always #4 s1 = ~s1;
      
endmodule

