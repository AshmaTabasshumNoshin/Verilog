main: comp.v comp_tb.v
	iverilog -o o.vpp comp.v comp_tb.v
	vvp o.vpp

main2:
	iverilog -o out.vpp 2to1mux.v 2to1mux_tb.v
	vvp out.vpp