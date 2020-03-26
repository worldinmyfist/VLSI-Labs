`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:44 09/13/2019 
// Design Name: 
// Module Name:    l2demux 
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
module two_demux(input io1, input sio1, inout y2_1,inout y2_2);
assign y2_1 = (~sio1)&io1;
assign y2_2 = (sio1)&io1;
endmodule

module four_demux(input io, input sio_1,input sio_2,output y4_1,output y4_2,output y4_3,output y4_4);
two_demux level4_1(io,sio_1,alpha,beta);
two_demux level4_2_1(alpha,sio_2,y4_1,y4_2);
two_demux level4_2_2(beta,sio_2,y4_3,y4_4);
endmodule


module l2demux(
    input x,
    input s1,
    input s2,
    input s3,
    output y8_1,
    output y8_2,
    output y8_3,
    output y8_4,
    output y8_5,
    output y8_6,
    output y8_7,
    output y8_8,
	 output y2_1,
	 output y2_2
    );
	 
	 two_demux level8_1(x,s1,hello,world);
	 assign y2_1 = hello;
	 assign y2_2 = world;
	 four_demux level8_2_1(hello,s2,s3,y8_1,y8_2,y8_3,y8_4);
	 four_demux level8_2_2(world,s2,s3,y8_5,y8_6,y8_7,y8_8);
	 
endmodule