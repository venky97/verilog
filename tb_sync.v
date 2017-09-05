module Testing;
reg d, clk, rst;
wire q,q1;
dff_sync_clear dff (d, rst, clk, q); 
dff_async_clear dff1 (d, rst,clk, q1);
//Always at rising edge of clock display the signals
always @(posedge clk)begin
$display("d=%b, clk=%b, rst=%b, q=%b, q1=%b", d, clk, rst, q,q1);
end
//Module to generate clock with period 10 time units
initial begin
$dumpfile("a2.vcd");
$dumpvars;
$monitor("d=%b, clk=%b, rst=%b, q=%b, q1=%b", d, clk, rst, q,q1);
forever begin
#0
clk=0;
#5
clk=1;
#5 
clk=0;
end
end
initial begin
forever begin
#0
d=0; rst=1;
#20
d=1; rst=0;
#20
d=1; rst=1;
#20
d=0; rst=0;
end
end
endmodule