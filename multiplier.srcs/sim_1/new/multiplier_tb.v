`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2018 03:50:58 PM
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb();
    reg [3:0]A, B;
    wire [3:0]R;
    wire overflow;

    multiplier DUT (
        .A(A),
        .B(B),
        .R(R),
        .overflow(overflow)
    );

    initial begin
        A = 14; B = 11;        
        #20 A = 0; B = 1;
        #20 A = 7; B = 2;
        #20 A = 3; B = 3;
        #20 A = 5; B = 2;
        #20
        $finish;
    end
endmodule
