`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:29 10/29/2019 
// Design Name: 
// Module Name:    radix_2_fft 
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
module radix_2_fft(
input [3:0] x,
output  [2:0] real_y_0,
output  [2:0] real_y_1,
output  [2:0] real_y_2,
output  [2:0] real_y_3,
output  [2:0] complex_y_0,
output  [2:0] complex_y_1,
output  [2:0] complex_y_2,
output  [2:0] complex_y_3
);
	
wire [2:0]st10;
wire [2:0]st12;
wire [2:0]st11;
wire [2:0]st13;

assign st10 = x[0]+x[2];
assign st11 = x[0]-x[2];
assign st12 = x[1]+x[3];
assign st13 = x[1]-x[3];

assign real_y_0 = st10+st12;
assign complex_y_0 = 0;
assign real_y_1 = st11;
assign complex_y_1 = st13;
assign real_y_2 = st10-st12;
assign complex_y_2 = 0;
assign real_y_3 = st11;
assign complex_y_3 = 0-st13;

endmodule
