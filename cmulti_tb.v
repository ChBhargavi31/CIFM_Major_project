`timescale 1ns / 1ps

module cmulti_tb;

	// Inputs
	reg [31:0] int_input1;
	reg [31:0] int_input2;
	reg [31:0] fp_input1;
	reg [31:0] fp_input2;

	// Outputs
	wire [63:0] int_output;
	wire [31:0] fp_output;
	wire int_mode;

	// Instantiate the Unit Under Test (UUT)
	cmulti uut (
		.int_input1(int_input1), 
		.int_input2(int_input2), 
		.fp_input1(fp_input1), 
		.fp_input2(fp_input2), 
		.int_output(int_output), 
		.fp_output(fp_output), 
		.int_mode(int_mode)
	);

	initial begin
		 // Test case 1: Integer multiplication
        int_input1 =32'h0000ffff;//65535
        int_input2 =32'h0000ffff;//65535
		  fp_input1=0;
		  fp_input2=0;
		  #200;
		  int_input1=0;
		  int_input2=0;
        fp_input1 = 32'b01000000001000000000000000000000;//2.5
        fp_input2 = 32'b01000000001000000000000000000000;//2.5
        #200;
        // Test case 3: Mixed multiplication (Integer * Floating-point)
		  int_input1=0;
		  int_input2=0;
        fp_input1 = 32'b01000000000000000000000000000000;//2.0
        fp_input2 = 32'b01000000001000000000000000000000;//2.5
        #200;
        
        // Test case 4: Mixed multiplication (Floating-point * Integer)
		  int_input1=32'h0000ffff;
		  int_input2=32'h0000ffff;
        fp_input1 = 32'b01000000001000000000000000000000;//2.5
        fp_input2 = 32'b01000000001000000000000000000000;//2.5
        #200;
		  
		  int_input1=0;
		  int_input2=0;
		  fp_input1 = 32'b01000010110111010110001010110010;
        fp_input2 = 32'b01000011001001100111010110110110;
		  #200;
        
	end
      
endmodule

