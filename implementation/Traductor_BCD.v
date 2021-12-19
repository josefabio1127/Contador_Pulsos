`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 03:16:34 PM
// Design Name: 
// Module Name: Traductor_BCD
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


module Traductor_BCD(
    input [4:0] Cuenta,
    output [3:0] Tens, Units
    );
    
    wire and_Rep;
    assign and_Rep = Cuenta[4] & ~Cuenta[3] & ~Cuenta[2] & ~Cuenta[1];
    
    assign Tens[3] = 2'b0;
    assign Tens[2] = 2'b0;
    assign Tens[1] = Cuenta[4] & Cuenta[2];
    assign Tens[0] = (Cuenta[3] & Cuenta[2]) | (Cuenta[3] & Cuenta[1]) | (Cuenta[4] & ~Cuenta[3] & ~Cuenta[2]);
    
    assign Units[3] = (Cuenta[3] & ~Cuenta[2] & ~Cuenta[1]) | (Cuenta[4] & Cuenta[1]);
    assign Units[2] = (~Cuenta[4] & ~Cuenta[3] & Cuenta[2]) | (Cuenta[2] & Cuenta[1]) | and_Rep;
    assign Units[1] = (Cuenta[3] & Cuenta[2] & ~Cuenta[1]) | (~Cuenta[4] & ~Cuenta[3] & Cuenta[1]) | and_Rep;
    assign Units[0] = Cuenta[0];
    
endmodule
