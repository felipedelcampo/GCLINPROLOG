%%% formato tokens: [Tipo, Valor, PosX, PosY]
%%% tipos: espaco, id, inteiro, real, pontuacao, comentario, string, intervalo, erro, erro_id

pega_tipo_token([Tipo|Token], Tipo).
pega_valor_token([Tipo | [Valor |Token]], Valor).
pega_posx_token([Tipo | [Valor | [X | Token]]], X).
pega_posy_token([Tipo | [Valor | [X | [Y | Token]]]], Y).

