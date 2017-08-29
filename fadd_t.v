`timescale 1ns/1ps
module testbench2;
	reg a,x,c;
	wire y,z;
	adder g1(a,x,c,y,z);
	initial
		begin
			$dumpfile("fadder.vcd");
			$dumpvars;
			$monitor(,$time," a=%b, x=%b,c=%b, y=%b,z=%b",a,x,c,y,z);
			#0 a=1'b0;x=1'b0;c=1'b0;
			#5 c=1'b1;
			#10 a=1'b1;x=1'b0;
			#15 c = 1'b0;
			#20 a=1'b0;x=1'b1;
			#25 c=1'b1;
			#30 a=1'b1;x=1'b1;
			#50 c=1'b0;
			#100 $finish;
		end
endmodule