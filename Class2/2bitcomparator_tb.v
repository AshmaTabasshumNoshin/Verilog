`timescale 1ns / 1ps
module two_bit_comp;
reg [1:0] x;
reg [1:0] y;
wire answer; 
twobitcomptwo uut(x,y,answer);
initial begin
    x = 2'b00;
    y = 2'b00;
    #20
    x = 2'b00;
    y = 2'b01;
    #20
    x = 2'b01;
    y = 2'b00;
    #20
    x = 2'b11;
    y = 2'b11;
    #40;
end
initial begin
  $monitor("x=%d,y=%d,answer=%d",x,y,answer);
end
endmodule