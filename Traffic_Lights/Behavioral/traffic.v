module traffic(clk,START,RST_N,l1,l2); // L1 = LIGHT1  -  L2 = LIGHT2
// Tham số
parameter INIT	  = 3'd0;
parameter STATE1 = 3'd1;
parameter STATE2 = 3'd3;
parameter STATE3 = 3'd2;
parameter STATE4 = 3'd6;

input clk, RST_N, START;
output reg [1:0] l1,l2; //	0=green	-	1=yellow	-	2=red - 3=OFF

reg flag;
reg [15:0] _time=16'd0;
reg [2:0] state=INIT, next_state=INIT;


always @(posedge clk, negedge RST_N) begin
flag=1'b0;
if(RST_N == 1'b0)
	state= INIT;
else if(state==INIT & START==1'b1 & RST_N == 1'b1)
	state= STATE1;
else state=next_state;

flag=1'b1;
end

// Mô tả trạng thái kế tiếp

always @(posedge flag) begin
	
	_time=_time+16'd1;
	case(state)
		STATE1: begin
		l1=2'd0;	// GREEN
		l2=2'd2;	//	RED
		next_state = (_time!=16'd50000)?STATE1:STATE2;
					end
		STATE2: begin
		l1=2'd1; //YELLOW
		l2=2'd2;	//	RED
		next_state = (_time!=16'd10000)?STATE2:STATE3;
					end
		STATE3: begin
		l1=2'd2;	//	RED
		l2=2'd0;	// GREEN
		next_state = (_time!=16'd50000)?STATE3:STATE4;
					end
		STATE4: begin
		l1=2'd2;	//	RED
		l2=2'd1; //YELLOW
		next_state = (_time!=16'd10000)?STATE4:STATE1;
					end
		default: begin
		l1=2'd3; //OFF
		l2=2'd3;	//OFF
		end
	endcase
	if(next_state!=state)
	_time=16'd0;
end

// Mô tả ngõ ra

endmodule

