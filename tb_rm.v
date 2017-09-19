module tb32regmux;
	reg [31:0] d1,d2,d3,d4;
	reg [1:0] s;
	wire [31:0] q;
	muxreg a1(q,d1,d2,d3,d4,s);
	initial
	begin
	$monitor(,$time,"q=%b,s1=%b",q,s);
		d1=32'hAFAFAFAF; d2=32'hBBBBBBBB; d3=32'hAAAAAAAA; d4=32'h00000000;
		#20 s = 2'b00;
		#20 s = 2'b01;
		#20 s = 2'b10;
		#20 s = 2'b11;
		#20 $finish;
	end
endmodule
