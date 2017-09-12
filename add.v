module add8bit(cout,out,in1,in2,cin);
 input [7:0] in1,in2;
 output [7:0] out;
 input cin;
 output cout;
 wire t[7:0];
 genvar j;
  add1 m1(t[0],out[0],in1[0],in2[0],cin);
 generate for (j=1; j<8;j=j+1) begin: add_loop
 add1 m1(t[j],out[j],in1[j],in2[j],t[j-1]);
end
endgenerate
assign cout = t[7];
endmodule