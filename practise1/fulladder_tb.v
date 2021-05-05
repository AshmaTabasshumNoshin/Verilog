`timescale 1ns/1ps
module stimulus;
    reg x;
    reg y;
    reg cin;
    wire z;
    wire cout;
fulladder uut(
.x(x),.y(y),.z(z),.cin(cin),.cout(cout)
);
initial begin
    x=0;
    y=0;
    cin=0;
    #20 x=1;
    #20 y=1;x=0;
    #20 x=1;
    #20 cin=1;x=0;y=0;
    #20 x=1;
    #20 x=0;y=1;
    #20 x=1;
    #40;
end
initial begin
        $monitor("carryIn=%d,x=%d,y=%d,cout=%d,z=%d\n",cin,x,y,cout,z);
    end
    endmodule
