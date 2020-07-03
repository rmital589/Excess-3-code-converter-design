module Nand5 (A1,A2,A3,A4,A5,Z);

input A1,A2,A3,A4,A5;
output Z;

assign Z = (~(A1 & A2 & A3 & A4 & A5));

endmodule
