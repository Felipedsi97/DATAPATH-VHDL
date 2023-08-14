module registrador (rst, clk, entrada, d, q);

input clk, rst, entrada;
input [3:0] d;
output reg [3:0] q; 

always @ (posedge clk, posedge rst)
begin 
  if (rst)
    begin
     q <= 4'd0;
	 end
  else if (entrada)
    begin
     q <= d;
	 end 
end 

endmodule 