`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2024 23:50:39
// Design Name: 
// Module Name: testMain
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


module testMain();

    reg [20:0] I;
    reg clk;
    reg set;
    reg [20:0] c;
    reg [20:0] d;
    wire signed [20:0] v;
   // wire signed [20:0] u;
   // wire signed [20:0] e1s3;
   // wire signed [20:0] f;
   // wire signed [20:0] x;
   // wire signed [20:0] g;
    wire signed [20:0] final;
    main m (I, clk, set, c, d, v, final);//, u, e1s3, f, x, g, h);
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        #0 c = 21'b1111_1100_1000_000000000; 
        #0 d = 21'b0000_0000_0100_110_000_000;
        #0 I = 0;
        set = 1;
        #1.5 set = 0;
        //#2 I = 21'b0000_0001_1110_000_000_000;
        #10000 $finish;
    end
    
endmodule

