`timescale 1ns/1ps
module testbench2;
	reg a,x;
	wire y,z;
	adder g1(a,x,y,z);
	initial
		begin
			$dumpfile("hadder.vcd");
			$dumpvars;
			$monitor(,$time," a=%b, x=%b, y=%b,z=%b",a,x,y,z);
			#0 a=1'b0;x=1'b0;;
			#10 a=1'b1;x=1'b0;
			#20 a=1'b0;x=1'b1;
			#30 a=1'b1;x=1'b1;
			#100 $finish;
		end
endmodule