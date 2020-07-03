module DFF(ClrN,D,CLK,Q,QN);
input D, CLK, ClrN;
output  Q, QN;
reg Q1;
reg QN1;
/*wire A1;
wire A2;
wire DN;
wire CLKN;
wire CLKNN;
wire Q1;
wire QN1;

Inverter I3 (D,DN);
Inverter I4 (CLK,CLKN);
Nand2 N20 (D,CLKN,A1);
Nand2 N21 (DN,CLKN,A2);
Nand2 N22 (A1,QN1,Q);
Nand2 N23 (A2,Q1,QN);
Nand2 N24 (Q,~ClrN,QN1);
Nand2 N25 (ClrN,QN,Q1);
*/



always @(negedge CLK)
begin 
if(~ClrN)
begin 
Q1<=0;
QN1<=1;
end
else 
begin 
Q1<=D;
QN1<=~D;
end
end

assign Q = Q1;
assign QN = QN1; 


endmodule