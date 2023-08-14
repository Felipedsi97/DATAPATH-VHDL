`timescale 1ns/100ps 
module reg_desloc_TB(); 
    
   wire [3:0] out;
	reg [3:0] data;
   reg clk, rst, enable; 	
	reg [1:0] select;
   
   reg_desloc DUT (rst, clk, enable, data, out, select);
	   	   
    // clock 
   always begin
    clk = 0;
	forever #50 clk =!clk;
	end                   
     	
   initial begin
	enable = 0;
	rst = 1;
	data <= 4'b0000;
	select <= 2'b00;
	#100
	enable = 1;
	rst = 0;
	data <= 4'b1010;
	select <= 2'b00;
	#100
	select <= 2'b01;
	#100
	select <= 2'b10;
	#100
	select <= 2'b11;
	#400 $finish; 
   end
   
endmodule 