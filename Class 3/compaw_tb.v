`timescale 1ps/1ps
module comp_tb;
reg i0;
reg i1;
wire out;
comp uut(i0,i1,out);
initial begin
    i0=0;
    i1=0;
    #20;
    i0=1;
    #20;
    i1=1;
    #20;
    i0=0;
    #40;
end
initial begin
  $monitor("i0=%b,i1=%b,out=%b",i0,i1,out);
end
endmodule