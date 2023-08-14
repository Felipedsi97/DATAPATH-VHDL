`timescale 1ns/1ps
module sistema_TB();
  reg clk, clk2, clk3, rst;  
  reg selectMux;
  reg [3:0] data;
  wire [6:0] out0, out1, out2, out3, out4, out5;
  wire [1:0] outled2;
  wire [2:0] outled1;
  reg ena, enb, enc, enshift; 
  
 sistema DUT (data, rst, selectMux, clk, clk2, clk3, ena, enb, enc, enshift, out0, out1, out2, out3, out4, out5, outled1, outled2);
 
always begin
	ena = 1;
	enb = 1;
	enc = 1;
	enshift = 1;
	clk = 0;
	clk2 = 0;
	clk3 = 0;
	forever #10 clk =!clk; 
	forever #10 clk2 = !clk2;
	forever #10 clk3 = !clk3;
end     
	
initial begin
	rst = 1;
	#10 
	rst = 0;
	selectMux <= 0;
	#10
	data <= 4'b0001;

	#10
	selectMux = 1;
	#100

	selectMux = 0;

	#100 $finish;
end

endmodule 