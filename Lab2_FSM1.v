module ExCode_Converter(ClrN,X,CLK,S,V);
input X,CLK,ClrN;
output reg S,V;

reg [2:0] State;
reg [2:0] Next_State;


always @(State or X)
begin 
case(State)
0 : begin 
	if(X == 1'b0)
	begin 
	S = 1'b1;
	V = 1'b0;
	Next_State = 1;
	end 
	else
	begin
	S = 1'b0;
	V = 1'b0;
	Next_State = 2;
	end
    end
1 : begin 
	if(X == 1'b0)
	begin 
	S = 1'b1;
	V = 1'b0;
	Next_State = 3;
	end
	else
	begin 
	S = 1'b0;
	V = 1'b0;
	Next_State = 4;
	end
    end
2 : begin 
	if(X == 1'b0)
	begin 
	S = 1'b0;
	V = 1'b0;
	Next_State = 4;
	end
	else 
	begin 
	S = 1'b1;
	V = 1'b0;
	Next_State = 4;
	end
    end 
3 : begin 
	if(X == 1'b0)
	begin
	S = 1'b0;
	V = 1'b0;
	Next_State = 5;
	end
	else 
	begin 
	S = 1'b1;
	V = 1'b0;
	Next_State = 5;
	end
     end
4 : begin 
	if(X == 1'b0)
	begin
	S = 1'b1;
	V = 1'b0;
	Next_State = 5;
	end
	else 
	begin 
	S = 1'b0;
	V = 1'b0;
	Next_State = 6;
	end
     end
5 : begin 
	if(X == 1'b0)
	begin
	S = 1'b0;
	V = 1'b0;
	Next_State = 0;
	end
	else 
	begin 
	S = 1'b1;
	V = 1'b0;
	Next_State = 0;
	end
     end
6 : begin 
	if(X == 1'b0)
	begin
	S = 1'b1;
	V = 1'b0;
	Next_State = 0;
	end
	else 
	begin 
	S = 1'b0; 
	V = 1'b1;
	Next_State = 0;
	end
     end
default : begin 
end
endcase
end

always @(negedge CLK)
begin 
if(~ClrN)
begin 
State <= 0;
Next_State <= 0;
end 
else
State <= Next_State;
end
endmodule 
