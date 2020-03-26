`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:02:58 09/14/2019
// Design Name:   l2encoder
// Module Name:   /home/aryan/ISE_DS/l2encoder/l2encoder_test.v
// Project Name:  l2encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: l2encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module l2encoder_test;

	// Inputs
	reg x0;
	reg x1;
	reg x2;
	reg x3;
	reg x4;
	reg x5;
	reg x6;
	reg x7;
	reg e;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	l2encoder uut (
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
		.e(e), 
		.y0(y0),
		.y1(y1), 
		.y2(y2),
      .v(v)		
		
	);

	initial begin
		// Initialize Inputs
		x0 = 0;
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
		x5 = 0;
		x6 = 0;
		x7 = 0;
		e = 0;
	

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 x0 = ~x0;
	always #2 x1 = ~x1;
	always #4 x2 = ~x2;
	always #8 x3 = ~x3;
	always #16 x4 = ~x4;
	always #32 x5 = ~x5;
	always #64 x6 = ~x6;
	always #128 x7 = ~x7;
	always #256 e = ~e;
	
	
      
endmodule

