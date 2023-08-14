module ula (opA, opB, select, saida);

input [3:0] opA, opB;
input [2:0] select;
output reg [3:0] saida;

always @(*)
begin
   case (select) 
	  3'b000: begin 
			saida <= opA;
	  end 
	  3'b001: begin 
			saida <= ~opA;
	  end 
	  3'b010: begin 
			saida <= opB;
	  end 
	  3'b011: begin 
			saida <= ~opB;
	  end 
	  3'b100: begin 
			saida <= opA & opB;
	  end 
	  3'b101: begin 
			saida <= opA | opB;
	  end 
	  3'b110: begin 
			saida <= opA ^ opB;
	  end 
	  3'b111: begin 
			saida <= opA ^~ opB;
	  end 
	  default: begin 
			saida <= 4'b0000;
	  end 
   endcase
end 
endmodule
