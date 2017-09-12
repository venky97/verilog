module tb_add;
 reg [7:0] IN1,IN2;
 reg cin,bi;
 wire [7:0] OUT;
 wire cout;
 ads8bit a1 (cout,OUT,IN1,IN2,cin,bi);
 initial
 begin
 $dumpfile("add.vcd");
 $dumpvars;
 $monitor(,$time," IN1=%b,IN2 = %b,cout=%b,OUT=%b",IN1,IN2,cout,OUT);
 IN1=8'hA5;
 IN2=8'h5A;
 cin=1'b1;
 bi=1'b0;
 #100 bi=1'b1;
 #400 $finish;
 end
endmodule
