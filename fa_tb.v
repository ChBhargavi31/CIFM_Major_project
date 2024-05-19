`timescale 1ns / 1ps
module fa_tb;
	reg a;
	reg b;
	reg cin;
	wire sum;
	wire carry;
	// Instantiate the Unit Under Test (UUT)
	fa uut (.a(a), .b(b), .cin(cin), .sum(sum), 
		.carry(carry));
initial begin
$dumpfile("fa_power.vcd");
	$dumpvars();
	  a = 0; b = 0; cin = 0; #100; 
	  a = 0; b = 0; cin = 1; #100; 
	  a = 0; b = 1; cin = 0; #100; 
     a = 0; b = 1; cin = 1; #100; 
	  a = 1; b = 0; cin = 0; #100; 
     a = 1; b = 0; cin = 1; #100;
	  a = 1; b = 1; cin = 0; #100; 
	  a = 1; b = 1; cin = 1; #100; 
	end     
endmodule
