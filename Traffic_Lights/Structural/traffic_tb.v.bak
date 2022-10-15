`timescale 100ns/10ns
module traffic_tb;
reg clk,rst_n,start;
wire [1:0] l1,l2;

traffic MUT(clk,rst_n,start,l1,l2);

initial begin
 clk=1'b0; 
 rst_n=1'b1;
 start=1'b1;
 end
initial#10 rst_n=1'b1;
always #5000 clk=~clk;

endmodule

