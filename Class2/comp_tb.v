`timescale 1ns / 1ps
module stimulus;
reg x;
reg y;
wire z; 

comp uut(.x(x),.y(y),.z(z));

initial begin
    x=0; y=0;#20
    x=0; y=1;#20
    x=1; y=0;#20
    x=1;y=1;#40;
end
initial begin
  $monitor("x=%d,y=%d,z=%d",x,y,z);
end
endmodule