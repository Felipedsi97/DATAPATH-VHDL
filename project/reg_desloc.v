module reg_desloc (rst, clk, enable, data, out, select);

input rst, clk, enable;
input [3:0] data;
input [1:0] select;
output reg [3:0] out;

always @ (posedge clk, posedge rst)
begin 
  if (rst)
  begin 
	 out <= 4'b0000;
  end
  else if (enable)
   begin
     case ({select})
			2'b00: begin 
				out <= data;
			end 
			2'b01: begin 
				out <= {1'b0, data[3:1]};
			end 
			2'b10: begin 
				out <= {data[2:0], 1'b0};
			end 
			2'b11: begin 
				out <= {data[3], data[3:1]}; 
			end
			default begin 
				out <= 4'b0000;
			end
	  endcase 
   end	
end 

endmodule 