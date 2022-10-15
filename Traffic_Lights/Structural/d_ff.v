module d_ff(
input clk, d,rst_n,
output q
);
wire x1,x2,x3,x4,x5,x6,_q;

nand nand1(x1,d,x2,rst_n);
nand nand2(x2,clk,x1,x3);
nand nand3(x3,clk,x4,rst_n);
nand nand4(x4,x3,x1);

nand nand5(q,x3,_q);
nand nand6(_q,x2,q,rst_n);


endmodule