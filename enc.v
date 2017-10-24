module encoder(inp,out,clock);
input[7:0] inp; 
input clock;
output[2:0] out;
reg[2:0] out;
genvar i;
	generate
	for (i = 0; i < 7 ; i = i + 1) begin: 
	always@(posedge(clock))
	begin
	if(inp[a]==1)
		out <= a;
end
end
endgenerate
endmodule
	