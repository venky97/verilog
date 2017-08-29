`timescale 1ns/1ps
module bcd_gray (a0,a1,a2,a3,e,b0,b1,b2,b3);
	input a0,a1,a2,a3,e;
	output b0,b1,b2,b3;
	wire c0,c1,c2,c3;
	assign b3 = e&((b2&~b3)|(~b2&b3));
	assign b2 = e&((b1&~b2)|(~b1&b2));
	assign b1 = e&((b0&~b1)|(~b0&b1));
	assign b0 = e;
endmodule
	