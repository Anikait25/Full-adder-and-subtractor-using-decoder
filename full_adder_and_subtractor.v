module full_adder_and_subtractor(A,B,Cin,S,C,Bo);
input A,B,Cin;
output S,C,Bo;
wire [2:0]a={A,B,Cin};
wire en=1;
wire [7:0]y;
dec3_8 d1(a,en,y);
assign S = (y[1] | y[2] | y[4] | y[7]);
assign C = (y[3] | y[5] | y[6] | y[7]);
assign Bo = (y[1] | y[2] | y[3] | y[7]);
endmodule