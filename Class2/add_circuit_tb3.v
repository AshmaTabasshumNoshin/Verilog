`timescale 1ns / 1ps
module add_circuit_tb_3;
localparam N = 32 ;
reg [N:0] x;
reg [N:0] y;
wire [N:0] z; 
wire cout;

add_circuit3 #(.N(N))uut (.x(x),.y(y),.z(z));

initial begin
    x=32'd512;y=32'd512;#20;
    $stop;
end
initial begin
  $monitor("x=%d,y=%d,z=%d",x,y,z);
end
endmodule