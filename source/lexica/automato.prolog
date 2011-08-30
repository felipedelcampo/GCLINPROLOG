%%% formato tokens: [Tipo, Valor, PosX, PosY]
%%% tipos: espaco, id, palavra_chave, inteiro, real, pontuacao, comentario, string, erro, erro_id


%%% caso base
automato([], _, _, []).

%%% caso base para processar o ultimo fim de linha e não adicionar um token vazio
automato(ListaChar, X, Y, []) :-
	muda_estado(s1, ListaChar, X, Y, TipoToken, [], [], NovoX, NovoY).


%%% caso geral
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
	muda_estado(s13, ListaChar, X1, Y,  TipoToken, Token, NovaListaChar, NovoX, NovoY).
	
muda_estado(s1, [Char|ListaChar], X, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, fim_de_linha),
	Y1 is Y + 1,
	muda_estado(s13, ListaChar, 1, Y1, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s1, [Char|ListaChar], X, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, tab),
	X1 is X + 4,
	muda_estado(s13, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).


muda_estado(s13, ListaChar, X, Y, espaco, [], ListaChar, X, Y ).


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

muda_estado(s2, ListaChar, X, Y, id, [], ListaChar, X, Y ).

%%% id erros
muda_estado(s3, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, letra), 
	X1 is X + 1, 
	muda_estado(s18, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s4, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, letra), 
	X1 is X + 1, 
	muda_estado(s18, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s18, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, letra), 
	X1 is X + 1, 
	muda_estado(s18, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s18, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, numero), 
	X1 is X + 1, 
	muda_estado(s18, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s18, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, underline), 
	X1 is X + 1, 
	muda_estado(s18, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s18, ListaChar, X, Y, erro_id, [], ListaChar, X, Y ).



%%% verifica geracao de inteiros
muda_estado(s1, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, numero), 
	X1 is X + 1, 
	muda_estado(s3, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s3, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, numero), 
	X1 is X + 1, 
	muda_estado(s3, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s3, [Char|ListaChar], X , Y, TipoToken, Token, NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, ponto), 
	muda_estado(s15, [Char | ListaChar], X, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s15, [Char|[Char2|ListaChar]], X , Y, inteiro, [], [Char|[Char2|ListaChar]], X, Y):-
	tipo_char(Char2, ponto).

muda_estado(s3, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, ponto), 
	X1 is X + 1, 
	muda_estado(s4, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s3, ListaChar, X, Y, inteiro, [], ListaChar, X, Y ).




%%% verifica geracao de numeros reais
muda_estado(s4, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, numero), 
	X1 is X + 1, 
	muda_estado(s4, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s4, ListaChar, X, Y, real, [], ListaChar, X, Y ).



%%% verifica comentarios
muda_estado(s1, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, hifen), 
	X1 is X + 1, 
	muda_estado(s5, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s5, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, hifen), 
	X1 is X + 1, 
	muda_estado(s6, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s5, ListaChar, X, Y, pontuacao, [], ListaChar, X, Y ).

muda_estado(s6, [Char|ListaChar], X, Y, comentario, [], [Char|ListaChar], X, Y ):-
	tipo_char(Char, fim_de_linha).

muda_estado(s6, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	X1 is X + 1, 
	muda_estado(s6, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

%%verifica intervalo
muda_estado(s1, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, ponto), 
	X1 is X + 1, 
	muda_estado(s14, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).


muda_estado(s14, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, ponto), 
	X1 is X + 1, 
	muda_estado(s16, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s14, ListaChar, X, Y, pontuacao, [], ListaChar, X, Y ).
	
muda_estado(s16, ListaChar, X, Y, intervalo, [], ListaChar, X, Y ).

%%% verifica pontuacao
muda_estado(s1, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, pontuacao), 
	X1 is X + 1, 
	muda_estado(s11, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s1, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, barra_invertida), 
	X1 is X + 1, 
	muda_estado(s11, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s11, ListaChar, X, Y, pontuacao, [], ListaChar, X, Y ).


%%% verifica strings
muda_estado(s1, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, aspas), 
	X1 is X + 1, 
	muda_estado(s7, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s7, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, barra_invertida), 
	X1 is X + 1, 
	muda_estado(s8, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s8, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	X1 is X + 1, 
	muda_estado(s7, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s7, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, aspas), 
	X1 is X + 1, 
	muda_estado(s12, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s7, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	!,
	X1 is X + 1, 
	muda_estado(s7, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s1, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, aspas_simples), 
	X1 is X + 1, 
	muda_estado(s9, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s9, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, barra_invertida), 
	X1 is X + 1, 
	muda_estado(s10, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s10, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	X1 is X + 1, 
	muda_estado(s9, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s9, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	tipo_char(Char, aspas_simples), 
	X1 is X + 1, 
	muda_estado(s12, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s9, [Char|ListaChar], X , Y, TipoToken, [Char | Token], NovaListaChar, NovoX, NovoY):-
	X1 is X + 1, 
	muda_estado(s9, ListaChar, X1, Y, TipoToken, Token, NovaListaChar, NovoX, NovoY).

muda_estado(s12, ListaChar, X, Y, string, [], ListaChar, X, Y ).

%%% caso que nao encontra um caminho no automato... gera erro
muda_estado(_, [Char|ListaChar], X, Y, TipoToken, [Char|Token], NovaListaChar, NovoX, NovoY):-
	not(tipo_char(Char, Tipo)),
	X1 is X + 1, 
	muda_estado(s17, ListaChar, X1, Y,  TipoToken, Token, NovaListaChar, NovoX, NovoY).
	
muda_estado(s17, ListaChar, X, Y, erro, [], ListaChar, X, Y ).



