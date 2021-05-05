/*Implement and verify the verilog code for a circuit that has three inputs and one one output. 
The three inputs represent a binary number ( from 0 to 7) 
and output is 1 if the value is greater than 5 else it is 0.*/
module comparator(
    input wire x,
    input wire y,
    input wire z,
    output wire answer
);
assign answer = (x&y&~z)|(x&y&z);
endmodule