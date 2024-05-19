`timescale 1ns / 1ps
module PeresGate_tb;
	// Inputs
	reg a;
	reg b;
	reg c;
	// Outputs
	wire o1;
	wire o2;
	wire o3;
	// Instantiate the Unit Under Test (UUT)
	PeresGate uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3)
	);
	initial begin
	$dumpfile("PeresGate_power.vcd");
	$dumpvars();
    a = 0; b = 0; c = 0;#100; 
    a = 0; b = 0; c = 1;#100;  
    a = 0; b = 1; c = 0;#100; 
    a = 0; b = 1; c = 1;#100;  
    a = 1; b = 0; c = 0;#100;  
    a = 1; b = 0; c = 1;#100;  
    a = 1; b = 1; c = 0;#100;  
    a = 1; b = 1; c = 1;#100;  
	end     
endmodule

