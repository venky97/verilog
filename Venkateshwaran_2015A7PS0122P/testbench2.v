module testbench;
	reg a,x,y,z,i;
	wire f,g,h,e;
	bcd_gray g1(a,x,y,z,i,e,f,g,h);
	intital
		begin
			$monitor(,$time," a=%b, x=%b, y=%b, z=%b, e=%b, f=%b, g=%b, h=%b, i=%b",a,x,y,z,e,f,g,h,i)
			#0 a=1'b1;x=1'b0;
			#10 y=1'b0;z=1'b0;
			#15 f=1'b0;g=1'b0;
			#20 h=1'b0;i=1'b0;
			#25 e=1'b0;
			#50 e=1'b1;
			#100 $finish;
		end
endmodule