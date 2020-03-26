`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:02:15 09/14/2019
// Design Name:   l2mux
// Module Name:   /home/aryan/ISE_DS/l2mux/l2mux_test.v
// Project Name:  l2mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: l2mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module l2mux_test;

	// Inputs
	reg a1;
	reg a2;
	reg b1;
	reg b2;
	reg c1;
	reg c2;
	reg d1;
	reg d2;
	reg sabcd;
	reg sxy;
	reg sz;

	// Outputs
	wire y4;
	wire y8;

	// Instantiate the Unit Under Test (UUT)
	l2mux uut (
		.a1(a1), 
		.a2(a2), 
		.b1(b1), 
		.b2(b2), 
		.c1(c1), 
		.c2(c2), 
		.d1(d1), 
		.d2(d2), 
		.sabcd(sabcd), 
		.sxy(sxy), 
		.sz(sz), 
		.y4(y4), 
		.y8(y8)
	);

	initial begin
		// Initialize Inputs
		a1 = 1;
		a2 = 0;
		b1 = 1;
		b2 = 0;
		c1 = 1;
		c2 = 0;
		d1 = 1;
		d2 = 0;
		sabcd = 0;
		sxy = 0;
		sz = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 sabcd = ~sabcd;
	always #2 sxy = ~sxy;
	always #4 sz = ~sz;
      
endmodule

