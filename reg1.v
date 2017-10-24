module reg1(inp,out,clock);
input[10:0] inp;
input clock;
output[10:0] out;
reg[10:0] out;
always@(posedge(clock))
begin:
	out <= inp;
end
endmodule