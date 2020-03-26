`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:24:49 11/11/2019
// Design Name:   shift_reg
// Module Name:   /home/aryan/Desktop/shiftreg/shift_reg/shift_reg_tb.v
// Project Name:  shift_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shift_reg_tb;

	// Inputs
	reg clk;
	reg [3:0] p_in;
	reg left_shift_inp;
	reg right_shift_inp;
	reg select1;
	reg select0;

	// Outputs
	wire [3:0] p_out;

	// Instantiate the Unit Under Test (UUT)
	shift_reg uut (
		.clk(clk), 
		.p_in(p_in), 
		.left_shift_inp(left_shift_inp), 
		.right_shift_inp(right_shift_inp), 
		.select1(select1), 
		.select0(select0), 
		.p_out(p_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		p_in = 0;
		left_shift_inp = 0;
		right_shift_inp = 0;
		select1 = 0;
		select0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 clk=~clk;
        always #2 p_in[0]=~p_in[0];
		  always #3 p_in[1]=~p_in[1];
        always #5 p_in[3]=~p_in[3];
        always #6 left_shift_inp=~left_shift_inp;
        always #7 right_shift_inp=~right_shift_inp;
        always #8 select1=~select1;
        always #9 select0=~select0;

      
endmodule

