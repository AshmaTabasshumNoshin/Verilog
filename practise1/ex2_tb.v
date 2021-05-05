/*Implement and verify the verilog code for a circuit that has three inputs and one one output. 
The three inputs represent a binary number ( from 0 to 7) 
and output is 1 if the value is greater than 5 else it is 0.*/
`timescale 1ns/1ps
module stimulus;
    reg x;
    reg y;
    reg z;
    wire answer;
comparator uut(
.x(x),.y(y),.z(z),.answer(answer)
);
initial begin
    x=0;
    y=0;
    z=0;
    #20 z=1;
    #20 z=0;y=1;
    #20 z=0;y=0;x=1;
    #20 z=1;
    #20 y=1;z=0;
    #20 z=1;
    #40;
end
initial begin
        $monitor("x=%d,y=%d,z=%d,answer=%d\n",x,y,z,answer);
    end
    endmodule