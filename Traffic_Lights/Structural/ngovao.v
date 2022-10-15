module ngovao(en,clk,rst_n,q);
input en,clk,rst_n;
output [2:0] q;
wire [2:0] d;
wire b,c; //time
wire x0,x1,x2,x3,x4,x5,x6,x7,x8;//temp
wire y1,y2,y3,y4,y5,y0;//temp
wire rstn;
time_ _time (1'b1,clk,rstn,b,c);
d_ff d_ff_[2:0](clk,d[2:0],rst_n,q[2:0]);
//c'd'ef + bd'e'f + ad'e'f' D0 //////// c'd'f + d'e'f + cd'ef' + ad'e'
and andd01(x1,~c,~q[2],q[0]);
and andd02(x2,~q[2],~q[1],q[0]);
and andd03(x3,en,~q[2],~q[1]);
and andd04(x0,c,q[2],q[1],~q[0]);
or ord0(d[0],x1,x2,x3,x0);
//d'e + c'ef' + bd'f  D1  //////d'e + c'ef' + bd'f
and andd14(x4,~q[2],q[1]);
and andd15(x5,~c,q[1],~q[0]);
and andd16(x6,b,~q[2],q[0]);
or ord1(d[1],x4,x5,x6);
//c'def' + bd'ef' D2 /////////////  c'def' + bd'ef'
and andd27(x7,~c,q[2],q[1],~q[0]);
and andd28(x8,b,~q[2],q[1],~q[0]);
or ord2(d[2],x7,x8);

//reset counter rstn=s0start+(s1+s3)b+((s2+s4).c
xor (y0,d[0],q[0]);
xor (y1,d[1],q[1]);
xor (y2,d[2],q[2]);
or rstnn(y3,y1,y2,y0);
d_ff resetcount(clk,~y3,rst_n,rstn);
endmodule


module time_(en,clk,rst_n,b,c); // b=t1=50000 c=t2=10000 
input en,clk,rst_n;
output b,c;
wire[15:0] a,bb,cc,mm,nn;
up_counter count(en,clk,rst_n,a);

xor xorb[15:0](bb,a,16'd49998);
nor norb(b,bb[0], bb[1], bb[2], bb[3], bb[4], bb[5], bb[6], bb[7], bb[8], bb[9], bb[10], bb[11], bb[12], bb[13], bb[14], bb[15]);

xor xorc[15:0](cc,a,16'd9998);
nor norc(c,cc[0], cc[1], cc[2], cc[3], cc[4], cc[5], cc[6], cc[7], cc[8], cc[9], cc[10], cc[11], cc[12], cc[13], cc[14], cc[15]);

endmodule

