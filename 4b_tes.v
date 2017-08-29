`timescale 1ns/1ps
module testbench2;
	reg [3:0] a,x;
	reg c;
	wire [3:0] y;
	wire z;
	b_fad g1(a,x,c,y,z);
	initial
		begin
			$dumpfile("f4b.vcd");
			$dumpvars;
			$monitor(,$time," a=%b, x=%b,c=%b, y=%b,z=%b",a,x,c,y,z);
			#0 a=4'b1010;x=4'b1111;c=1'b0;
			#5 c=1'b1;
			#10 a=4'b0010;x=4'b1100;
			#15 c = 1'b0;
			#20 a=4'b1010;x=4'b0001;
			#25 c=1'b1;
			#30 a=4'b1010;x=4'b0011;
			#50 c=1'b0;
			#100 $finish;
		end
endmodule