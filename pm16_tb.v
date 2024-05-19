`timescale 1ns / 1ps
module pm16_tb;
	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	// Outputs
	wire [31:0] c;
	// Instantiate the Unit Under Test (UUT)
	pm16 uut (
		.a(a), 
		.b(b), 
		.c(c)
	);
	initial begin
	$dumpfile("pm16.vcd");
	$dumpvars();
		// Initialize Inputs
		a = 16'h0004;
		b = 16'h0006;
		#100;
		a = 16'h004c;
		b = 16'h0018;
		#100;
		a = 16'b0010110011101100;
		b = 16'b1100111011101100;
		#100;
		a = 16'b1010101010101011;
		b = 16'b0010110011001100;
		#100;
	end     
endmodule

