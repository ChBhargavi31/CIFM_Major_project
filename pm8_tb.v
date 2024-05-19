`timescale 1ns / 1ps
module pm8_tb;
	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	// Outputs
	wire [15:0] c;
	// Instantiate the Unit Under Test (UUT)
	pm8 uut (
		.a(a), 
		.b(b), 
		.c(c)
	);
	initial begin
	$dumpfile("pm8_power.vcd");
	$dumpvars();
	 a = 8'b00000101;b = 8'b00000111;#100;
    a = 8'b11111111;b = 8'b00000001;#100;
	 a = 8'b00100101;b = 8'b01100111;#100;
    a = 8'b11111111;b = 8'b10100001;#100;
	end     
endmodule

