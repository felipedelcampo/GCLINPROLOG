

%%% caso base
automato([], _, _, []).

%%% caso base para processar o ultimo fim de linha e não adicionar um token vazio
automato(ListaChar, X, Y, []) :-
	muda_estado(s1, ListaChar, X, Y, TipoToken, [], [], NovoX, NovoY).
	
	
automato(ListaChar, X, Y, [[TipoToken, Token, X, Y] | ListaToken]) :-
	muda_estado(s1, ListaChar, X, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY),
	automato(NovaListaChar, NovoX, NovoY, ListaToken).		

%%%estados

%%%caso base
muda_estado(_, [], _, _, _, [], [], _, _).


%%% ignora espacos e fim de linha
muda_estado(s1, [Char|ListaChar], X, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, espaco),
	X1 is X + 1, 
	muda_estado(s1, ListaChar, X1, Y,  TipoToken, Token, NovaListaChar, NovoX, NovoY).
	
muda_estado(s1, [Char|ListaChar], X, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, fim_de_linha),
	Y1 is Y + 1,
	muda_estado(s1, ListaChar, 0, Y1, TipoToken, Token, NovaListaChar, NovoX, NovoY).


%%% verifica geracao de identificadores

muda_estado(s1, [Char|ListaChar], X, Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, letra),
	X1 is X + 1, 
	muda_estado(s2, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s2, [Char|ListaChar], X, Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, letra), 
	X1 is X + 1, 
	muda_estado(s2, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s2, [Char|ListaChar], X, Y, TipoToken,  [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, underline), 
	X1 is X + 1, 
	muda_estado(s2, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).
	
muda_estado(s2, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, numero), 
	X1 is X + 1, 
	muda_estado(s2, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s2, [Char|ListaChar], X, Y, id, [], [Char|ListaChar], X, Y ):-
	tipo_char(Char, espaco).
	
muda_estado(s2, [Char|ListaChar], X, Y, id, [], [Char|ListaChar], X, Y):-
	tipo_char(Char, fim_de_linha).

muda_estado(s2, [Char|ListaChar], X, Y, id, [], [Char|ListaChar], X, Y):-
	tipo_char(Char, ponto).

muda_estado(s2, [Char|ListaChar], X, Y, id, [], [Char|ListaChar], X, Y):-
	tipo_char(Char, hifen).

muda_estado(s2, [Char|ListaChar], X, Y, id, [], [Char|ListaChar], X, Y):-
	tipo_char(Char, pontuacao).

muda_estado(s2, [Char|ListaChar], X, Y, id, [], [Char|ListaChar], X, Y):-
	tipo_char(Char, barra_invertida).


muda_estado(s2, ponto, gera_id).
muda_estado(s2, hifen, gera_id).
muda_estado(s2, barra_invertida, gera_id).
muda_estado(s2, pontuacao, gera_id).



%%% verifica geracao de inteiros
muda_estado(s1, numero, s3).
muda_estado(s3, numero, s3).
muda_estado(s3, espaco, gera_inteiro).
muda_estado(s3, fim_de_linha, gera_inteiro).
muda_estado(s3, ponto, gera_inteiro).
muda_estado(s3, hifen, gera_inteiro).
muda_estado(s3, barra_invertida, gera_inteiro).
muda_estado(s3, pontuacao, gera_inteiro).

%%% verifica geracao de numeros reais
muda_estado(s1, ponto, s4).
muda_estado(s3, ponto, s4).
muda_estado(s4, numero, s4).
muda_estado(s4, espaco, gera_real).
muda_estado(s4, fim_de_linha, gera_real).
muda_estado(s4, ponto, gera_real).
muda_estado(s4, hifen, gera_real).
muda_estado(s4, barra_invertida, gera_real).
muda_estado(s4, pontuacao, gera_real).

%%% verifica comentarios
muda_estado(s1, hifen, s5).
muda_estado(s5, hifen, s6).
muda_estado(s6, fim_de_linha, gera_comentario).
muda_estado(s6, _, s6).

%%% verifica pontuacao
muda_estado(s1, pontuacao, s11).
muda_estado(s1, barra_invertida, s11).
muda_estado(s5,  _, s11).
muda_estado(s11, gera_pontuacao).

%%% verifica strings
muda_estado(s1, aspas, 	s7).
muda_estado(s7, barra_invertida, s8).
muda_estado(s8, _, s7).
muda_estado(s7, aspas, gera_string).
muda_estado(s7, _, s7).
muda_estado(s1, aspas_simples, s9).
muda_estado(s9, barra_invertida, s10).
muda_estado(s10, _, s9).
muda_estado(s9, aspas_simples, gera_string).
muda_estado(s9, _, s9).


