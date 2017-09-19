module d_ff(clock,c,rst,q);
	input clock,c,rst;
	output q;
	reg q;
	always @ (posedge clock)
	begin
		q <= c;
		if ( rst == 0 ) 
			q<=0;
	end
endmodule