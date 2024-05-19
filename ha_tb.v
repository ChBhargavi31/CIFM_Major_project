`timescale 1ns / 1ps
module ha_tb;
	// Inputs
	reg a;
	reg b;
	// Outputs
	wire sum;
	wire carry;
	// Instantiate the Unit Under Test (UUT)
	ha uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);
	initial begin
	$dumpfile("ha_power.vcd");
	$dumpvars();
		a = 0; b = 0;#100;
      a = 0; b = 1;#100;
      a = 1; b = 0;#100;
      a = 1; b = 1;#100;
    end     
endmodule

