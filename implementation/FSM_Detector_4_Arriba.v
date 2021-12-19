`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2021 08:36:46 PM
// Design Name: 
// Module Name: FSM_Detector_4_Arriba
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


module FSM_Detector_4_Arriba(CLK, Reset, PulseR, CLK_cont
    );
    input CLK, Reset, PulseR;
    output reg CLK_cont;
    
    reg [2:0] State = 0;
    reg [2:0] NextState = 0; 
    
    parameter S0=3'd0, S1=3'd1, S2=3'd2, S3=3'd3, S4=3'd4, S5=3'd5, S6=3'd6, S7=3'd7;
    
    //Registro de estado de memoria 
    always @(posedge CLK)
        begin
            if (Reset)
                State<=S0;
            else
                State<=NextState;
        end
    
    //Logica Combinacional de estado siguiente 
    always @*
        begin 
            case (State)
                S0: begin
                    if (PulseR) NextState <= S1;
                    else NextState <= S1;
                end
                S1: begin
                    if (PulseR) NextState <= S2;
                    else NextState <= S1;
                end
                S2: begin
                    if (PulseR) NextState <= S3;
                    else NextState <= S1;
                end
                S3: begin
                    if (PulseR) NextState <= S4;
                    else NextState <= S1;
                end 
                S4: begin
                    if (PulseR) NextState <= S5;
                    else NextState <= S1;
                end 
                S5: begin
                    if (PulseR) NextState <= S6;
                    else NextState <= S1;
                end 
                S6: begin
                    if (PulseR) NextState <= S7;
                    else NextState <= S7;
                end
                S7: begin
                    if (PulseR) NextState <= S7;
                    else NextState <= S1;
                end
                default: begin
                    NextState <= S1;
                end
            endcase
        end                
    
    //Logica combinacional de salida 
    always @*
        begin
            case (State)
                S0: begin
                    CLK_cont <= 1'b1;
                end
                S1: begin
                    CLK_cont <= 1'b0;
                end
                S2: begin
                    CLK_cont <= 1'b0;
                end
                S3: begin
                    CLK_cont <= 1'b0;
                end
                S4: begin
                    CLK_cont <= 1'b0;
                end
                S5: begin
                    CLK_cont <= 1'b0;
                end
                S6: begin
                    CLK_cont <= 1'b1;
                end
                S7: begin
                    CLK_cont <= 1'b0;
                end
            endcase
        end
endmodule
