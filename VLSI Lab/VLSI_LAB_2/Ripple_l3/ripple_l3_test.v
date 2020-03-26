`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:56:04 09/27/2019
// Design Name:   fbra
// Module Name:   /home/aryan/ISE_DS/ripple_l3/ripple_l3_test.v
// Project Name:  ripple_l3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fbra
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_l3_test;

	// Inputs
	reg [3:0] m;
	reg [3:0] n;
	reg car_in;

	// Outputs
	wire [3:0] y;

	// Bidirs
	wire car_out;

	// Instantiate the Unit Under Test (UUT)
	fbra uut (
		.m(m), 
		.n(n), 
		.car_in(car_in), 
		.car_out(car_out), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		m = 0;
		n = 0;
		car_in = 0;

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
	always #256 car_in = ~car_in;
      
endmodule

