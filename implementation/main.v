`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 03:29:39 PM
// Design Name: 
// Module Name: main
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


module main(CLK, Reset, Pulse, Units, Tens
    );
    input CLK, Reset, Pulse;
    output [3:0] Tens;
    output [3:0] Units;
    
    wire PulseR;
    wire CLK_cont;
    wire [4:0] Cuenta;
    
    assign PulseR = Pulse & ~Reset;
    
    FSM_Detector_4_Arriba detector(CLK, Reset, PulseR, CLK_cont
    );
    
    MOD_Contador contador(CLK_cont, Reset, Cuenta
    );
    
    Traductor_BCD tradutor(Cuenta, Tens, Units
    );
    
endmodule
