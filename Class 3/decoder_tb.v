`timescale 1ps/1ps
module decoder_tb;
reg [1:0] a;
reg en;
wire [3:0] out;
decoder uut(a,en,out);
initial begin
    a=2'b00;
    en=1;
    #20;
    a=2'b01;
    #20;
    a=2'b10;
    #20;
    a=2'b11;
    #40;
end
initial begin
  $monitor("a=%2b,en=%b,out=%4b",a,en,out);
end
endmodule