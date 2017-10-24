module datapath(inp,a,b,clock);
input[7:0] inp;
input[3:0] a,b;
input clock;
reg[10:0] pass1,pass2;
wire[2:0] in;
reg p;
reg[3:0] X,X2;
encoder e1(inp,in,clock);
assign pass1[2:0] = in;
assign pass1[6:3] = a;
assign pass1[10:7] = b;
reg1 r1(pass1,pass2,clock);
alu a1(pass2,X,clock);
reg2 r2(X,X2,clock);
par p1(X2,p);
endmodule
