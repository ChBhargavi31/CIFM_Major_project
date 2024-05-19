module pm32(a,b,c);
 
    input [31:0]a,b;
    output [63:0]c;
     
    wire [31:0]q0,q1,q2,q3,q4,temp1;
    wire [63:0]c;
    wire [47:0]q5,q6,temp2,temp3,temp4;
     
    pm16 z1(a[15:0],b[15:0],q0[31:0]);
    pm16 z2(a[31:16],b[31:16],q1[31:0]);
    pm16 z3(a[15:0],b[31:16],q2[31:0]);
    pm16 z4(a[31:16],b[31:16],q3[31:0]);
    assign temp1 ={16'b0,q0[31:16]};
    assign q4 = q1[31:0]+temp1;
    assign temp2 ={16'b0,q2[31:0]};
    assign temp3 ={q3[31:0],16'b0};
    assign q5 = temp2+temp3;
    assign temp4={16'b0,q4[31:0]};
     
    assign q6 = temp4 + q5;
     
    assign c[15:0]=q0[15:0];
    assign c[63:16]=q6[47:0];
 
endmodule
 