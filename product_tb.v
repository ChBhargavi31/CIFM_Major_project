`timescale 1ns / 1ps
module product_tb;
// Inputs
reg [23:0] min;
reg [23:0] q;
// Outputs
wire [47:0] sum;
// Instantiate the Unit Under Test (UUT)
product uut (.sum(sum), .min(min), .q(q));
initial begin
// Initialize Inputs
min = 24'b110011001100110011001100; 
q = 24'b101010101010101010101010; 
#200;
min = 24'b010101010101010101010101; 
q = 24'b110011001100110011001100; 
#200;
end     
endmodule

