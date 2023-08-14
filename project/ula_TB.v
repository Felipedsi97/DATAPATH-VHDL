`timescale 1ns/100ps 
module ula_TB(); 
   
   wire [3:0] saida;
	reg [3:0] opA, opB;
  	reg [2:0] select;
   
   ula DUT  (opA, opB, select, saida);
	   	   
   initial begin
	// select_ULA = 000
	opA <= 4'b1100;
   opB <= 4'b0011;
	select <= 3'b000;
	#100
	// select_ULA = 001
	opA <= 4'b1011;
   opB <= 4'b1111;
	select <= 3'b001;
	#100
	// select_ULA = 010
	opA <= 4'b0000;
   opB <= 4'b1111;
	select <= 3'b010;
	#100
	// select_ULA = 011
	opA <= 4'b1100;
   opB <= 4'b1111;
	select <= 3'b011;
	#100
	// select_ULA = 100
	opA <= 4'b1010;
   opB <= 4'b0011;
	select <= 3'b100;
	#100
	// select_ULA = 101
	opA <= 4'b1010;
   opB <= 4'b1011;
	select <= 3'b101;
	#100
	// select_ULA = 110
	opA <= 4'b1001;
   opB <= 4'b0010;
	select <= 3'b110;
	#100
	// select_ULA = 111
	opA <= 4'b1010;
   opB <= 4'b0110;
	select <= 3'b111;
	#400 $finish; 
   end
   
endmodule 