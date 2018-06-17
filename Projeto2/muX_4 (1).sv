module muX4 #(parameter W = 32) (input logic [W-1:0] primeiro, segundo, terceiro, quarto, input logic[1:0] selecao, output logic [W-1:0] saida);
	always_comb begin
		case (selecao)
			2'd0: saida = primeiro;
			2'd1: saida = segundo;
			2'd2: saida = terceiro;
			2'd3: saida = quarto;
			default: saida = primeiro;
		endcase
	end
endmodule: muX4