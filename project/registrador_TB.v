`timescale 1ns/100ps 
module registrador_TB(); 
    
   wire [3:0]q;
   reg clk, rst,entrada;
	reg [3:0]d; 	
	     
   registrador DUT (rst, clk, entrada, d, q);
   
    // clock 
   always begin
    clk = 0;
	forever #20 clk =!clk; 
   end                   
                         
   initial begin
	d <= 0;
	rst = 1;
	entrada = 0;
 	#100 
	d <= 4'b0011;
	rst = 0;
	entrada = 1;
	#100 
	d <= 4'b1011;
	#100 
	d <= 4'b1111; 
	#100 $finish; 
  end
  
endmodule 