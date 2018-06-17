module mux5 (input logic [31:0] primeiro, segundo, terceiro, quarto, quinto, input logic [2:0] selecao, output logic [31:0] saida);
	always_comb begin
		case (selecao)
			3'd0: saida = primeiro;
			3'd1: saida = segundo;
			3'd2: saida = terceiro;
			3'd3: saida = quarto;
			3'd4: saida = quinto;
			default: saida = primeiro;
		endcase
	end
endmodule: mux5