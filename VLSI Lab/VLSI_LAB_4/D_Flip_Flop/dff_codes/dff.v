`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:23 10/15/2019 
// Design Name: 
// Module Name:    dff 
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
module dff(input clk,input rst,input D,Q);
output reg Q;
always@(posedge clk or negedge rst)
begin
if(!rst)
Q <=  1'b0;
else
Q <= D;
end
endmodule
