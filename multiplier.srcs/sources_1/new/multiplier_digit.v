`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2018 08:54:45 PM
// Design Name: 
// Module Name: multiplier_digit
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


module multiplier_digit #(
    parameter n = 4
) (
    input [n-1:0] A,
    input [n-1:0] B,
    input i,
    output [n:0] PP
    );
    always @(A, B)
    begin
        assign PP = A & {n{B[i]}};
    end
endmodule
