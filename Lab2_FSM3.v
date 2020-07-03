module ExCode_Converter3(ClrN,CLK,X,S,V);

input CLK,X,ClrN;
output S,V;

wire Q1;
wire Q2;
wire Q3;
wire Q1N;
wire Q2N;
wire Q3N;
wire XN;
wire D1;
wire D2;
wire D3;
wire A1;
wire A2;
wire A3;
wire A4;
wire A5;
wire A6;
wire A7;
wire A8;
wire A9;
wire A10;
wire A11;
wire A12;
wire A13;
wire A14;
wire A15;


Inverter I1 (X,XN);
Nand3 N1 (Q2,Q3N,XN,A1);
Nand3 N2 (Q2,Q1N,Q3,A2);
Nand3 N3 (Q1,Q2N,Q3,A3);
Nand3 N4 (A1,A2,A3,D1);
DFF   DF1 (ClrN,D1,CLK,Q1,Q1N);
Nand3 N5 (Q2,Q3N,X,A4);
Nand3 N6 (Q2N,Q1N,XN,A5);
Nand3 N7 (Q1N,X,Q3,A6);
Nand3 N8 (A5,A6,A4,D2);
DFF   DF2 (ClrN,D2,CLK,Q2,Q2N);
Nand3 N9 (Q1N,Q2N,Q3,A7);
Nand2 N10 (Q2,Q3N,A8);
Nand2 N11 (Q1N,X,A9);
Nand3 N12 (A7,A8,A9,D3);
DFF   DF3 (ClrN,D3,CLK,Q3,Q3N);
Nand3 N13 (Q1,Q2,X,A10);
Inverter I2 (A10,V);
Nand3 N14 (Q1N,Q3N,XN,A11);
Nand3 N15 (Q1,Q2,XN,A12);
Nand3 N16 (Q2,Q3,XN,A13);
Nand3 N17 (Q1,Q2N,X,A14);
Nand3 N18 (Q2N,Q3,X,A15);
Nand5 N19 (A11,A12,A13,A14,A15,S);


endmodule
