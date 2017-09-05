module cont(clk,q3);
input clk;
wire [3:0] q;
output q3;
reg q0,q1,q2;
wire q3;
jk jk1(1'b1,1'b1,clk,1'b0,q[0]);
jk jk2(1'b1,1'b1,clk,1'b0,q[0]);
jk jk3(1'b1,1'b1,clk,1'b0,q[0]);
jk jk4(1'b1,1'b1,clk,1'b0,q[0]);
always@(posedge clk)
begin
	jk1(1,1,clk,q[0],q[0]);
	jk2(q[0],q[0],clk,q[1],q[1]);
	q1 <= q[0]&q[1];
	jk3(q1,q1,clk,q[2],q[2]);
	q2 <= q1&q[2];
	jk3(q2,q2,clk,q[3],q[3]);
	q3 <= q[3];
end
endmodule