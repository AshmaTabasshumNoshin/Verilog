module fulladder(
    input wire x,
    input wire y,
    input wire cin,
    output wire z,
    output wire cout
);
assign {cout,z}= cin+x+y ;

endmodule