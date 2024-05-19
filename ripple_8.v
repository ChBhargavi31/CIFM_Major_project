 //`include "fa.v"
 module ripple_8(output wire [7:0] sum,output wire cout,
  input wire [7:0] in1, input wire [7:0] in2,
  input wire cin);
wire c1, c2, c3, c4, c5, c6, c7;
  fa FA1( .a(in1[0]),.b( in2[0]), .cin(cin),.sum(sum[0]),.carry( c1));
  fa FA2( .a(in1[1]),.b( in2[1]), .cin(c1),.sum(sum[1]),.carry( c2));
  fa FA3( .a(in1[2]),.b( in2[2]), .cin(c2),.sum(sum[2]),.carry( c3));
  fa FA4( .a(in1[3]),.b( in2[3]), .cin(c3),.sum(sum[3]),.carry( c4));
  fa FA5( .a(in1[4]),.b( in2[4]), .cin(c4),.sum(sum[4]),.carry( c5));
  fa FA6( .a(in1[5]),.b( in2[5]), .cin(c5),.sum(sum[5]),.carry( c6));
  fa FA7( .a(in1[6]),.b( in2[6]), .cin(c6),.sum(sum[6]),.carry( c7));
  fa FA8( .a(in1[7]),.b( in2[7]), .cin(c7),.sum(sum[7]),.carry( cout));
endmodule
 