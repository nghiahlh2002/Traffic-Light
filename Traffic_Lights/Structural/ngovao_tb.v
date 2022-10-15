`timescale 100ns/10ns
module ngovao_tb;
reg clk,rst_n,en;
wire [2:0] state;

ngovao MUT1(en,clk,rst_n,state);

initial begin
 clk=1'b0; 
 rst_n=1'b1;
 en=1'b1;
 end
initial#10 rst_n=1'b1;
always #5000 clk=~clk;

endmodule