module reg32b(out,inp,clk,rst);
	input clk,rst;
	input[31:0] inp;
	output [31:0] out;
	genvar i;
	generate for(i=0;i<32;i=i+1) begin: bit
		d_ff d1(clk,inp[i],rst,out[i]);
	end
	endgenerate
endmodule