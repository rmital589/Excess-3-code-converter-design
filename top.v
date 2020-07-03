module top(CLK,D,Q,En,Ld,Clr,Up,Co);
input CLK;
input [3:0] D;
input En,Ld,Clr,Up;
output Co;
output [3:0] Q;
wire slowClk;
divider d1 (CLK,slowClk);
BCD B3 (D,slowClk,Clr,En,Ld,Up,Q,Co);
endmodule
