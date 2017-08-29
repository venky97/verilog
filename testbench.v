`timescale 1ns/1ps
module testbench2;
	reg a,x,y,z,i;
	wire f,g,h,e;
	bcd_gray g1(a,x,y,z,e,f,g,h);
	initial
		begin
			$dumpfile("filename.vcd");
			$dumpvars;
			$monitor(,$time," a=%b, x=%b, y=%b,z=%b, e=%b, f=%b, g=%b, h=%b",a,x,y,z,e,f,g,h);
			#0 a=1'b1;x=1'b0;y=1'b0;z=1'b0;
			#20 a=1'b1;x=1'b1;y=1'b1;z=1'b0;
			#25 a=1'b1;x=1'b1;y=1'b0;z=1'b1;
			#100 $finish;
		end
endmodule