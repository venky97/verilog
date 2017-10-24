module alu(P,X,clock);
input clock;
input[10:0] P;
reg[3:0] a,b;
reg[2:0] op;
output[3:0] X;
reg[3:0] X;
assign op = P[2:0];
assign a = P[6:3];
assign b = P[10:7];
always@(posedge(clock))
begin
	if(op==0)
		X <= a+b;
	if(op==1)
		X<= a-b;
	if(op==2)
		X<= a^b;
	if(op==3)
		X<= a|b;
	if(op==4)
		X<= a&b;
	if(op==5)
		X<=a~|b;
	if(op==6)
		X<=a~&b;
	if(op==7)
		X<=a~^b;
end
endmodule