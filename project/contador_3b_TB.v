`timescale 1ns/100ps 
module contador_3b_TB(); 
    
   wire [2:0] saida;
   reg clk, rst, entrada; 	
     
   contador_3b DUT (clk, rst, entrada, saida);
   
    // clock 
   always begin
    clk = 0;
	forever #10 clk =!clk; 
   end                   
                         
   initial begin
	entrada = 0;
	rst = 1;
 	#100 
	entrada = 1;
	rst = 0;
	#400 $finish; 
  end
  
endmodule 