`timescale 1ns / 1ps
module add_circuit_tb;
reg x;
reg y;
reg cin;
wire z; 
wire cout;

add_circuit uut(.x(x),.y(y),.cin(cin),.z(z),.cout(cout));

initial begin
    x=0; y=0;cin=0;#20
    x=0; y=1;#20
    x=1; y=0;#20
    x=1;y=1;cin=1;#40;
end
initial begin
  $monitor("x=%d,y=%d,cin=%d,z=%d,cout=%d",x,y,cin,z,cout);
end
endmodule