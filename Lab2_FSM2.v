module ExCode_Converter2 (ClrN,X,CLK,S,V);
input X,CLK,ClrN;
output S,V;

reg Q1;
reg Q2;
reg Q3;

always @(negedge CLK)
begin 
if(~ClrN)
begin 
Q1<=0;
Q2<=0;
Q3<=0;
end
else
begin
Q1 <= (Q2 & ~Q3 & ~X) | (Q2 & ~Q1 & Q3) | (Q1 & ~Q2 & Q3);
Q2 <= (Q2 & ~Q3 & X) | (~Q2 & ~Q1 & ~X) | (Q3 & ~Q1 & X);
Q3 <= (Q2 & ~Q3) | (~Q1 & X) | (Q3 & ~Q1 & ~Q2);
end 
end

assign S = (~Q1 & ~Q3 & ~X) | (Q1 & Q2 & ~X) | (Q2 & Q3 & ~X) | (Q1 & ~Q2 & X) | (~Q2 & Q3 & X);
assign V = (Q1 & Q2 & X);  
endmodule