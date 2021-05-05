`timescale 1ns/1ps
module stimulus;
    reg I0;
    reg I1;
    reg sel;
    wire out;
mux uut(
.I0(I0),.I1(I1),.sel(sel),.out(out)
);
initial begin
    I0=0;
    I1=0;
    sel=0;
    #20 I0=1;
    #20 I1=1;I0=0;
    #20 sel=1;I1=0;
    #20 I0=1;
    #20 I1=1;I0=0;
    #40;
end
initial begin
        $monitor("I0=%d,I1=%d,sel=%1b,out=%d \n",I0,I1,sel,out);
    end
    endmodule
