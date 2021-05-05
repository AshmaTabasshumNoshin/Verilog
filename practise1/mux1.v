module mux(
    input wire I0,
    input wire I1,
    input wire sel,
    output wire out
);
//assign out= sel?I0:I1;
//o korle i1 er value ,1 korle i0 er value
assign out= (sel==1'b0)?I0:
            (sel==1'b1)?I1:
            1'bX;

endmodule