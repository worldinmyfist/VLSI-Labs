`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:14:29 10/17/2019
// Design Name:   serial_full_adder
// Module Name:   /home/karan/Documents/Lab_5/serial_full_test.v
// Project Name:  Lab_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serial_full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serial_full_test;

	// Inputs
	reg clk;
	reg rst;
	reg a;
	reg b;
	reg c_in;

	// Outputs
	wire S;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	serial_full_adder uut (
		.clk(clk), 
		.rst(rst), 
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.S(S), 
		.c_out(c_out)
	);
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk=0;
		c_in = 0;
		rst = 1;
		a = 0;
		b = 0;
		#6;
		rst = 0;
		#17;
		rst = 1;
		a = 0;
		b = 1;
		#6;
		rst = 0;
		#14;
		rst = 1;
		a = 1;
		b = 0;
		#6;
		rst = 0;
		#14;
		rst = 1;
		a = 1;
		b = 1;
		#6;
		rst = 0;
		#14;
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

