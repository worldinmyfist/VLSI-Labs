`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:53 09/13/2019 
// Design Name: 
// Module Name:    l2decoder 
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
module two_decoder(input io, input e1, output y,output z);
assign y = e1&(~io);
assign z = e1&(io);

endmodule

module four_decoder(input i1,input i2,input en,output t1,output t2,output t3,output t4);
two_decoder level2_2(i1,en,hello,world);
two_decoder level2_3_1(i2,hello,t1,t2);
two_decoder level2_3_2(i2,world,t3,t4);
endmodule




module l2decoder(
    input e,
    input x1,
    input x2,
    input x3,
    output y2_1,
    output y2_2,
    output y8_1,
    output y8_2,
    output y8_3,
    output y8_4,
    output y8_5,
    output y8_6,
    output y8_7,
    output y8_8
    );
	 
	 two_decoder level1(x1,e,hell,lleh);
	 assign y2_1 = hell;
	 assign y2_2 = lleh;
	 four_decoder level4_2_1(x2,x3,hell,aryan,arya,ary,ar);
	 assign y8_1 = aryan;
	 assign y8_2 = arya;
	 assign y8_3 = ary;
	 assign y8_4 = ar;
	 
	 four_decoder level4_2_2(x2,x3,lleh,agarwal,agarwa,agarw,agar);
	 assign y8_5 = agarwal;
	 assign y8_6 = agarwa;
	 assign y8_7 = agarw;
	 assign y8_8 = agar;
	 
endmodule
