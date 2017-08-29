`timescale 1ns/1ps
module bcd_gray (a0,a1,a2,a3,b0,b1,b2,b3);
	input a0,a1,a2,a3,e;
	output b0,b1,b2,b3;
	xor(b3,a2,a3);
	xor(b2,a2,a1);
	xor(b1,a1,a0);
	and(b0,a0,1);
endmodule
	