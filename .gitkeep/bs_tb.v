`timescale 1ps/1ps
module barrelshifter_tb;
reg [7:0] a;
reg [2:0] amt;
wire [7:0] y;
barrelshifter uut(a,amt,y);
initial begin 
    $dumpfile("test.vcd");
    $dumpvars(0 ,barrelshifter_tb);
    a=8'b00001111;
    amt = 3'd1;
    #20;
     amt = 3'd2;
     #20;
     amt = 3'd3;
     #20;
      amt = 3'd4;
      #40;
end
initial begin
  $monitor("a=%8b,amt=%3b,y=%8b",a,amt,y);
end
endmodule