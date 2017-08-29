`timescale 1ns/1ps
module bcd_gray (a0,a1,a2,a3,b0,b1,b2,b3,e);
	input a0,a1,a2,a3,e;
	output b0,b1,b2,b3;
	wire c0,c1,c2,c3;
	assign b0 = e;
	assign b1 = e;
	assign b2 = e;
	assign b3 = e;
endmodule
	