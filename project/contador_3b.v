module contador_3b (clk, rst, entrada, saida);

input rst, clk, entrada;
output reg [2:0] saida;



always @ (posedge clk, posedge rst)
begin
  if (rst)
  begin 
	 saida <= 3'b0;
  end
  else if (entrada)
   begin
     saida <= saida + 1'b1;
	end 
end

endmodule
