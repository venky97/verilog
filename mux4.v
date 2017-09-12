module bit32_2to1mux(out,sel,in1,in2);
 input [31:0] in1,in2;
 output [31:0] out;
 wire [7:0] a,b,c;
 input sel;
 genvar j;
//this is the variable that is be used in the generate
//block
 generate for (j=0; j<4;j=j+1) begin: mux_loop
//mux_loop is the name of the loop
 bit8_2to1mux m1(out[j*8+7:j*8],sel,in1[j*8+7:j*8],in2[j*8+7:j*8]);
//mux2to1 is instantiated every time it is called
end
endgenerate
endmodule