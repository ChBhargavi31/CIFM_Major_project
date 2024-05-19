module subtractor_9bit_tb;
    reg [8:0] min;
    reg bin;
    wire [8:0] diff;
    wire bout;
    // Instantiate the subtractor_9bit module
    subtractor_9bit uut (.diff(diff),.bout(bout),
        .min(min),.bin(bin));
initial begin
min = 9'b101010101;
bin = 1'b0;
#100;
min = 9'b111100001;
bin = 1'b1;
#100; 
end
endmodule
