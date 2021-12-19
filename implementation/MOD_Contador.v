`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 02:56:22 PM
// Design Name: 
// Module Name: MOD_Contador
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


module MOD_Contador(CLK_cont, Reset, Cuenta
    );
    input CLK_cont;
    input Reset;
    output reg [4:0] Cuenta;
    
    always @ (posedge CLK_cont)
      if (Reset) begin
          Cuenta <= 5'b0;
       end
       else if (Cuenta == 5'b10100) begin
                Cuenta <= 5'b0;
             end
             else begin
                Cuenta <= Cuenta + 1'b1; 
             end
   
endmodule
