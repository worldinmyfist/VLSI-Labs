`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:48 10/10/2019
// Design Name:   wallace_tree
// Module Name:   /home/aryan/ISE_DS/wallace_tree/wallace_tree_test.v
// Project Name:  wallace_tree
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallace_tree
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wallace_tree_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] prod;

	// Instantiate the Unit Under Test (UUT)
	wallace_tree uut (
		.a(a), 
		.b(b), 
		.prod(prod)
	);

	initial begin
		// Initialize Inputs
		a[0] = 0;
		a[1] = 0;
		a[2] = 0;
		a[3] = 0;
		b[0] = 0;
		b[1] = 0;
		b[2] = 0;
		b[3] = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
   end
	always #1 a[0] = ~a[0];
	always #2 a[1] = ~a[1];
	always #4 a[2] = ~a[2];
	always #8 a[3] = ~a[3];
	always #16 b[0] = ~b[0];
	always #32 b[1] = ~b[1];
	always #64 b[2] = ~b[2];
	always #128 b[3] = ~b[3];
	 
	
      
endmodule

