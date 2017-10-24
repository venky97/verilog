module reg2(inp,out,clock);
input[3:0] inp;
input clock;
output[3:0] out;
reg[3:0] out;
always@(posedge(clock))
begin:
	out <= inp;
end
endmodule