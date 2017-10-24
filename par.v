module par(inp,out,clock)
input[3:0] X;
output out;
input clock;
reg out;
always@(posedge(clock))
begin
out<=X[0];
end
endmodule