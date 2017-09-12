module tb_32bit2to1mux;
 reg [31:0] INP1, INP2;
 reg SEL;
 wire [31:0] out;
 bit32_2to1mux M1(out,SEL,INP1,INP2);
 initial
 begin
 $dumpfile("mux2.vcd");
 $dumpvars;
 $monitor(,$time," INP1=%b,INP2 = %b,SEL=%b,out=%b",INP1,INP2,SEL,out);
 INP1=32'b10101010101010101010101001010101;
 INP2=32'b01010101010101010101010110101010;
 SEL=1'b0;
 #100 SEL=1'b1;
 #1000 $finish;
 end
endmodule