`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:16:41 09/27/2019
// Design Name:   fbla
// Module Name:   /home/aryan/ISE_DS/LA_l3/LA_l3_test.v
// Project Name:  LA_l3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fbla
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LA_l3_test;

	// Inputs
	reg [3:0] m;
	reg [3:0] n;
	reg c0;

	// Outputs
	wire car_out;
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	fbla uut (
		.m(m), 
		.n(n), 
		.c0(c0), 
		.car_out(car_out), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		m = 0;
		n = 0;
		c0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 m[0] = ~m[0];
   always #2 m[1] = ~m[1];
	always #4 m[2] = ~m[2];
	always #8 m[3] = ~m[3];
	always #16 n[0] = ~n[0];
	always #32 n[1] = ~n[1];
	always #64 n[2] = ~n[2];
	always #128 n[3] = ~n[3];
	always #256 c0 = ~c0;   
endmodule

