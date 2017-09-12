module tb_add;
 reg [7:0] IN1,IN2;
 reg cin;
 wire [7:0] OUT;
 wire cout;
 add8bit a1 (cout,OUT,IN1,IN2,cin);
 initial
 begin
 $dumpfile("add.vcd");
 $dumpvars;
 $monitor(,$time," IN1=%b,IN2 = %b,cout=%b,OUT=%b",IN1,IN2,cout,OUT);
 IN1=8'hA5;
 IN2=8'h5A;
 cin=1'b1;
 #100 IN1=8'h05;
 #400 $finish;
 end
endmodule
