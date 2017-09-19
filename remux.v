module muxreg(regdata,q1,q2,q3,q4,reg_no);
	input[1:0] reg_no;
	input[31:0] q1,q2,q3,q4;
	output[31:0] regdata;
	reg[31:0] regdata;
	always@ (reg_no)
	begin
		if(reg_no[0]==0&&reg_no[1]==0)
			regdata <= q1;
		if(reg_no[0]==0&&reg_no[1]==1)
			regdata <= q2;
		if(reg_no[0]==1&&reg_no[1]==0)
			regdata <= q3;
		if(reg_no[0]==1&&reg_no[1]==1)
			regdata <= q4;
	end
endmodule