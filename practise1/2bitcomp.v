module comparator2bit(
    input wire [1:0] x,
    input wire [1:0] y,
    output wire z
);
assign z=( x[1] & y[1] & x[0] & y[0] ) |
         (~x[1] &~y[1] &~x[0] &~y[0] ) |
         (~x[1] &~y[1] & x[0] & y[0] ) |
         ( x[1] & y[1] &~x[0] &~y[0] ) ;


endmodule