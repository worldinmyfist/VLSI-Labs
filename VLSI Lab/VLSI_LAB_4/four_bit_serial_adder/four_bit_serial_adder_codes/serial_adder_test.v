`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:50:06 10/16/2019
// Design Name:   serial_adder
// Module Name:   /home/karan/Documents/Lab_5/serial_adder_test.v
// Project Name:  Lab_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serial_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serial_adder_test;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire [3:0] S;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	serial_adder uut (
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
		rst = 0;
		a =0;
		b= 0;
		#6;
		rst =1;
		#67;
		repeat(17) begin
		repeat(15) begin
		rst = 0;
		if(b==15)
		begin
		a = a+1;
		end
		b = b+4'b0001;
		#6;
		rst = 1;
		#64;
		end
		end
        
		// Add stimulus here

	end
	
      
endmodule

