module ads8bit(cout,out,in1,in2,cin,bi);
 input [7:0] in1,in2;
 output [7:0] out;
 input cin,bi;
 output cout;
 wire [7:0] t,z,r;
 wire as;
 genvar j;
  add1 m1(t[0],out[0],in1[0],in2[0],cin);
generate for (j=1; j<8;j=j+1)
xor(z[j],in2[j],bi);
endgenerate 
 add8bit a1 (as,r,z,8'h01,1'b0);
 generate for (j=1; j<8;j=j+1) begin: add_loop
 add1 m1(t[j],out[j],in1[j],r[j],t[j-1]);
end
endgenerate
assign cout = t[7];
endmodule