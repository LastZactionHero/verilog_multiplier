`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2018 03:38:19 PM
// Design Name: 
// Module Name: multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplier #(
    parameter n = 4
)(
    input [n-1:0] A,
    input [n-1:0] B,
    output [n-1:0] R,
    output overflow
);

    genvar i;
    wire [n:0] PP [n-1:0];

    generate
        for(i = 0; i < n; i = i + 1)
        begin
            if(i == 0)
                begin
                    assign PP[i] = A & {n{B[i]}};
                    assign R[0] = PP[i][0];
                end
            else
                begin
                    assign PP[i] = ((A & {n{B[i]}}) << 1) + PP[i-1]; // ((A & {n{B[i]}}) < 1) + PP[i-1];
                    assign R[i] = PP[1][i];
                    
//                    assign R[i] = 1; //PP[i][n];
                end          
        end
    endgenerate
endmodule
