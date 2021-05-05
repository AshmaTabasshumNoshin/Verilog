module twobitcomp3(
    input wire [1:0] x,y,
    output wire answer

);
assign answer= x==y;

endmodule