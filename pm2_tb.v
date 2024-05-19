`timescale 1ns / 1ps
module pm2_tb;
	// Inputs
	reg [1:0] a;
	reg [1:0] b;
	//Outputs
	wire [3:0] c;
	// Instantiate the Unit Under Test (UUT)
	pm2 uut (
		.a(a), 
		.b(b), 
		.c(c)
	);
	initial begin
	$dumpfile("pm2_power.vcd");
	$dumpvars();
		 a = 2'b11; b = 2'b11; #100;
	    a = 2'b11; b = 2'b01; #100;
	    a = 2'b10; b = 2'b01; #100;
	    a = 2'b10; b = 2'b10; #100;
	end    
endmodule

