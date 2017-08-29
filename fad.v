`timescale 1ns/1ps
module adder(a,b,ci,s,c1);
	input a,b,ci;
	output s,c1;
	wire [7:0] c;
	nand(c[1],a,b);
	nand(c[2],c[1],a);
	nand(c[3],c[1],b);
	nand(c[4],c[2],c[3]);
	nand(c[5],c[4],ci);
	nand(c[0],c[4],c[5]);
	nand(c[6],c[5],ci);
	nand(s,c[6],c[0]);
	nand(c1,c[1],c[5]);
endmodule