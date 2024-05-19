`timescale 1ns / 1ps
module Ror_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire o1;
	wire o2;

	// Instantiate the Unit Under Test (UUT)
	Ror uut (
		.a(a), 
		.b(b), 
		.o1(o1), 
		.o2(o2)
	);

	initial begin
		$dumpfile("Ror_power.vcd");
	$dumpvars();
		a = 0; b = 0;#100;
      a = 0; b = 1;#100;
      a = 1; b = 0;#100;
      a = 1; b = 1;#100;
    end
endmodule

