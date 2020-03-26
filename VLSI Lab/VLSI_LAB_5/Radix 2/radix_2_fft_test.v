`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:01:42 10/30/2019
// Design Name:   radix_2_fft
// Module Name:   /home/aryan/ISE_DS/radix_2_fft/radix_2_fft_test.v
// Project Name:  radix_2_fft
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: radix_2_fft
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module radix_2_fft_test;

	// Inputs
	reg [3:0] x;

	// Outputs
	wire [2:0] real_y_0;
	wire [2:0] real_y_1;
	wire [2:0] real_y_2;
	wire [2:0] real_y_3;
	wire [2:0] complex_y_0;
	wire [2:0] complex_y_1;
	wire [2:0] complex_y_2;
	wire [2:0] complex_y_3;

	// Instantiate the Unit Under Test (UUT)
	radix_2_fft uut (
		.x(x), 
		.real_y_0(real_y_0), 
		.real_y_1(real_y_1), 
		.real_y_2(real_y_2), 
		.real_y_3(real_y_3), 
		.complex_y_0(complex_y_0), 
		.complex_y_1(complex_y_1), 
		.complex_y_2(complex_y_2), 
		.complex_y_3(complex_y_3)
	);

	initial begin
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 x[0] = ~x[0];
	always #2 x[1] = ~x[1];
	always #4 x[2] = ~x[2];
	always #8 x[3] = ~x[3];
       
endmodule

