module jk(j,k,clk,q0,q);
input j,k,clk,q0;
output q;
reg q;
always @ (posedge clk)
begin
q <= ~j&~k&q0 | j&~k | j&k&~q0;
end
endmodule
