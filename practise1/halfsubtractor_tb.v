
`timescale 1ns/1ps
module stimulus;
    reg x;
    reg y;
    wire diff;
    wire borrow;
subtractor uut(
.x(x),.y(y),.diff(diff),.borrow(borrow)
);
initial begin
    x=0;
    y=0;
    #20 y=1;
    #20 y=0;x=1;
    #20 x=1;y=1;
    #40;
end
initial begin
        $monitor("x=%d,y=%d,diff=%d,borrow=%d \n",x,y,diff,borrow);
    end
    endmodule