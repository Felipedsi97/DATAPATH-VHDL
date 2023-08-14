module decod_display (codigo_BCD, display);
 input [3:0] codigo_BCD;
 output reg [6:0] display;
 // leds acendem com nivel logico 0
 // leds -> gfe dcba
parameter branco   = 7'b111_1111; //h7F
parameter zero     = 7'b100_0000; //h40
parameter um       = 7'b111_1001; //h79
parameter dois     = 7'b010_0100; //h24
parameter tres     = 7'b011_0000; //h30
parameter quatro   = 7'b001_1001; //h19
parameter cinco    = 7'b001_0010; //h12
parameter seis     = 7'b000_0010; //h02
parameter sete     = 7'b111_1000; //h78
parameter oito     = 7'b000_0000; //h00
parameter nove     = 7'b001_1000; //h18
parameter A        = 7'b000_1000; //h77
parameter b        = 7'b000_0011; //h7C
parameter C        = 7'b100_0110; //h39
parameter d        = 7'b010_0001; //h5E
parameter E        = 7'b000_0110; //h79
parameter F        = 7'b000_1110; //h71
 always @(codigo_BCD)
 case(codigo_BCD)
    0: display = zero;
    1: display = um;
    2: display = dois;
    3: display = tres;
    4: display = quatro;
    5: display = cinco;
    6: display = seis;
	 7: display = sete;
	 8: display = oito;
	 9: display = nove;
	 10: display = A;
	 11: display = b;
	 12: display = C;
	 13: display = d;
	 14: display = E;
	 15: display = F;
	 default: display = branco;
 endcase
endmodule