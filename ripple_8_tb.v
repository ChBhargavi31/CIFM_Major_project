module ripple_8_tb;
reg [7:0] in1;
reg [7:0] in2;
reg cin;
wire [7:0] sum;
wire cout;
// Instantiate the ripple_8 module
ripple_8 ripple_adder (.sum(sum),.cout(cout),
    .in1(in1),.in2(in2),.cin(cin));
initial begin
$dumpfile("ripple_power.vcd");
	$dumpvars();
    in1 = 8'b00000101;
    in2 = 8'b00000011;
    cin = 1'b0;
    #200; 
    in1 = 8'b01111111;
    in2 = 8'b00000001;
    cin = 1'b1;
    #200; 
    in1 = 8'b01111111;
    in2 = 8'b01111111;
    cin = 1'b1;
    #200; 
  end
endmodule
