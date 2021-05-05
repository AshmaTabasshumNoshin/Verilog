module subtractor(
    input wire x,
    input wire y,
    output wire diff,
    output wire borrow
);
assign diff= (~x&y)|(x&~y);
assign borrow= (~x&y);

endmodule