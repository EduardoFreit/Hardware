module mux11 (input logic [31:0] primeiro, segundo, terceiro, quarto, quinto, sexto, setimo, oitavo, nono, decimo, onze, doze, input logic [3:0] selecao, output logic [31:0] saida);
	always_comb begin
		case (selecao)
			4'd0: saida = primeiro;
			4'd1: saida = segundo;
			4'd2: saida = terceiro;
			4'd3: saida = quarto;
			4'd4: saida = quinto;
			4'd5: saida = sexto;
			4'd6: saida = setimo;
			4'd7: saida = oitavo;
			4'd8: saida = nono;
			4'd9: saida = decimo;
			4'd10: saida = onze;
			4'd11: saida = doze;
			default: saida = primeiro;
		endcase
	end
endmodule: mux11