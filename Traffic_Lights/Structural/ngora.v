module ngora(state,l1,l2);
input  [2:0] state;
output [1:0] l1,l2;

wire b_c_,bc;
// L1[1] = state[0]'
not l11(l1[1],state[0]);

// L1[0] = state[0]'.state[1]' + state[0].state[1]
and bbcc(b_c_,~state[0],~state[1]);
and _bc(bc,state[0],state[1]);
or l10 (l1[0],bc,b_c_);

// L2[1] = state[1]' + state[0]
or l21 (l2[1],~state[1],state[0]);

// L2[0] = state[0]'.state[1]' + state[2]
or l20 (l2[0],b_c_,state[2]);

endmodule

