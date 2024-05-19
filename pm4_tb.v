`timescale 1ns / 1ps
module pm4_tb;
	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	// Outputs
	wire [7:0] c;
	// Instantiate the Unit Under Test (UUT)
	pm4 uut (
		.a(a), 
		.b(b), 
		.c(c)
	);
	initial begin
	$dumpfile("pm4_power.vcd");
	$dumpvars();
	 a = 4'b0010;b = 4'b0100;#100;
    a = 4'b1010;b = 4'b0101;#100;
	 a = 4'b1110;b = 4'b0111;#100;
	 a = 4'b1111;b = 4'b0011;#100;
	end
endmodule

