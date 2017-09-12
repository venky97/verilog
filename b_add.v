module tb_add;
 reg IN1,IN2;
 reg cin;
 wire OUT;
 wire cout;
 add1 a1 (cout,OUT,IN1,IN2,cin);
 initial
 begin
 $dumpfile("add.vcd");
 $dumpvars;
 $monitor(,$time," IN1=%b,IN2 = %b,cout=%b,OUT=%b",IN1,IN2,cout,OUT);
 IN1=1'b1;
 IN2=1'b1;
 cin=1'b1;
 #100 IN1=1'b0;
 #400 $finish;
 end
endmodule
