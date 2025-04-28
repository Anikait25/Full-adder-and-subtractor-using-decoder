module full_adder_and_subtractor_tb;
reg A,B,Cin;
wire C,S,Bo;
full_adder_and_subtractor f1(A,B,Cin,S,C,Bo);
initial
begin
A=0;B=0;Cin=0;#10;
A=0;B=0;Cin=1;#10;
A=0;B=1;Cin=0;#10;
A=0;B=1;Cin=1;#10;
A=1;B=0;Cin=0;#10;
A=1;B=0;Cin=1;#10;
A=1;B=1;Cin=0;#10;
A=1;B=1;Cin=1;#10;
end
endmodule