`timescale 1ns / 1ps
module mux_tb;
reg A;
reg B;
reg S;
wire z; 

mux uut(.A(A),.B(B),.S(S),.z(z));

initial begin
    S=0; A=0;B=0;#20
    S=0; A=1;B=0;#20
    S=1; A=0;B=0;#20
    S=1; A=0;B=1;#40;
end
initial begin
  $monitor("S=%d,A=%d,B=%d,z=%d",S,A,B,z);
end
endmodule