module fullsub1(output wire diff,output wire bout,
input wire min,input wire bin);
assign diff= min ~^ bin;
assign bout=~min|bin;
endmodule
module fullsub0(output wire diff,output wire bout,
input wire min,input wire bin);
assign diff= min^bin;
assign bout= ~min & bin;
endmodule
module subtractor_9bit(
    output wire [8:0] diff,
    output wire bout,
    input wire [8:0] min,
    input wire bin);
    wire [7:0] b;
    fullsub1 sub1(diff[0], b[0], min[0], bin);
    fullsub1 sub2(diff[1], b[1], min[1], b[0]);
    fullsub1 sub3(diff[2], b[2], min[2], b[1]);
    fullsub1 sub4(diff[3], b[3], min[3], b[2]);
    fullsub1 sub5(diff[4], b[4], min[4], b[3]);
    fullsub1 sub6(diff[5], b[5], min[5], b[4]);
    fullsub1 sub7(diff[6], b[6], min[6], b[5]);
    fullsub0 sub8(diff[7], b[7], min[7], b[6]);
    fullsub0 sub9(diff[8], bout, min[8], b[7]);
endmodule
