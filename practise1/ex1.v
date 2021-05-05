//1. Change the code such that it compares two values x and y and gives 1 if x is greater than or equal to y.
// Write stimulus to verify it.
module comparator(
    input wire x,
    input wire y,
    output wire z
);
assign z=(~x&~y) | (x&y) | (~x&y)|(x&~y);

endmodule
