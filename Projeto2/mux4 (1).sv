module mux4 (input logic [31:0] primeiro, segundo, terceiro, quarto, input logic [1:0] selecao, output logic [31:0] saida);
	always_comb begin
		case (selecao)
			2'd0: saida = primeiro;
			2'd1: saida = segundo;//32'd4
			2'd2: saida = terceiro;//segundo
			2'd3: saida = quarto;//terceiro
			default: saida = primeiro;
		endcase
	end
endmodule: mux4