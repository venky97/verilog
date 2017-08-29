`timescale 1ns/1ps
`include "fad.v"
module b_fad(a,b,c,d,e);
input [3:0] a,b;
input c;
output [3:0] d;
output e;
wire [3:0] f;
adder f1(a[0],b[0],c,d[0],f[0]);
adder f2(a[1],b[1],f[0],d[1],f[1]);
adder f3(a[2],b[2],f[1],d[2],f[2]);
adder f4(a[3],b[3],f[2],d[3],e);
endmodule

