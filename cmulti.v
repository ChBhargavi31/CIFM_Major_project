module cmulti(
    input wire [31:0] int_input1, // Integer input 1
    input wire [31:0] int_input2, // Integer input 2
    input wire [31:0] fp_input1,  // Floating-point input 1
    input wire [31:0] fp_input2,  // Floating-point input 2
    output wire [63:0] int_output, // Integer output
    output wire [31:0] fp_output,  // Floating-point output
    output wire int_mode           // Integer mode select
);

    wire [63:0] int_out;
    wire [31:0] fp_out;

    pm32 int_mult(
        .a(int_input1),
        .b(int_input2),
        .c(int_out)
        
    );

   control fp_mult(
        .inp1(fp_input1),
        .inp2(fp_input2),
        .out(fp_out),
        .underflow(), // Assuming underflow and overflow are not needed for floating-point output
        .overflow()
    );

    assign int_output = int_out;
    assign fp_output = fp_out;

    // Mode selection logic: 1 for integer mode, 0 for floating-point mode
    assign int_mode = (int_input1 !== 32'b0 && int_input2 !== 32'b0) ? 1'b1 : 1'b0;

endmodule

