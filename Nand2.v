module Nand2(A1,A2,Z);

input A1,A2;
output Z;

assign Z = (~(A1 & A2));

endmodule
