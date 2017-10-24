module t_dp;
reg clock;
reg [3:0] a,b;
reg [2:0] op;
$monitor(,"%b clock %b a %b b %b op" % clock,a,b,op);
initial
a = 4'b0010;
b = 4'b0010;
op = 3'b001;
clock = 0;
always #5 clock = ~clock
begin
#5 op = 3'b100;
#10 op = 3'b011;
end

endmodule

