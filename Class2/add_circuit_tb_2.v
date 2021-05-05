`timescale 1ns / 1ps
module add_circuit_tb_2;
reg [7:0] x;
reg [7:0] y;
wire [7:0] z; 
wire cout;

add_circuit_2 uut(.x(x),.y(y),.z(z),.cout(cout));

initial begin
    x=8'd2; y=8'd2;#20;
    x=8'd255; y=8'd255;#20;
    $stop;
end
initial begin
  $monitor("x=%d,y=%d,z=%d,cout=%d",x,y,z,cout);
end
endmodule