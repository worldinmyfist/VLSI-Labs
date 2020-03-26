`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:34 09/26/2019 
// Design Name: 
// Module Name:    FA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FA(
    input a_i,
    input b_i,
    input c_in,
    output S_i,
    output C_out
    );
    assign x = a_i^b_i;
	 assign S_i = (x)^c_in;
	 assign C_out = (a_i&b_i)|x&c_in;

endmodule
