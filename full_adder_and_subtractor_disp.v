module full_adder_and_subtractor_disp(A,B,Cin,oledS,oledC,oledBo,oledD);
input A,B,Cin;
output [0:6]oledS,oledC,oledBo,oledD;
wire S,C,Bo;
full_adder_and_subtractor f1(A,B,Cin,S,C,Bo);
display_b b1(oledS,S);
display_b b2(oledC,C);
display_b b3(oledBo,Bo);
display_b b4(oledD,S);
endmodule