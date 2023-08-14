module mux (in1, in2, select, out);

input[3:0]in1, in2;
input select;
output reg[3:0]out;

always @(in1, in2, select)
begin
	if(select == 1'b0)	out = in1;
	else out = in2;
end

endmodule
	