`timescale 1ns/1ps
module stimulus;
    reg [1:0] x;
    reg [1:0] y;
    wire z;
comparator2bit uut(
.x(x),.y(y),.z(z)
);
initial begin
    x=0;
    y=0;
    #20 y=1;
    #20 x=1;y=0;
    #20 y=1;
    #20 y=2;x=0;
    #20 y=3;
    #20 x=1;y=2;
    #20 y=3;
    #20 x=2;y=0;
    #20 y=1;
    #20 x=3;y=0;
    #20 y=1;
    #20 x=2;y=2;
    #20 y=3;
    #20 x=3;y=2;
    #20 y=3;
    #40;

end
initial begin
        $monitor("time=%3d,x=%2b,y=%2b,z=%d \n",$time,x,y,z);
    end
    endmodule