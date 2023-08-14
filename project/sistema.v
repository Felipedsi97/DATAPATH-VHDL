module sistema(a, rst, selectMux, clock, clockalt1, clockalt2, ena, enb, enc, enshift, out0, out1, out2, out3, out4, out5, outled1, outled2);

input rst, selectMux, clock, clockalt1, clockalt2, ena, enb, enc, enshift;
input [3:0]a;
output [2:0]outled1;
output [1:0]outled2;
output [6:0]out0, out1, out2, out3, out4, out5;

wire [3:0] regA, regB, outUla, outshift, outC, outMux;



registrador A(rst, clock, ena, a, regA);
registrador B(rst, clock, enb, a, regB);
decod_display a0(regA, out0);
decod_display a1(regB, out1);
//linha de habilitação do register A  utilizada no contador de 3b devido a falta de chaves
contador_3b(clockalt1, rst, ena, outled1);
ula(regA, regB, outled1, outUla);
decod_display a2(outUla, out2);
//linha de habilitação do register A  utilizada no contador de 2b devido a falta de chaves
contador_2b(clockalt2, rst, ena, outled2);
reg_desloc(rst, clock, enshift, outUla, outshift, outled2);
registrador C(rst, clock, enc, outUla, outC);
decod_display a3(outshift, out3);
decod_display a4(outC, out4);
mux(outshift, outC, selectMux, outMux);
decod_display a5(outMux, out5);

endmodule