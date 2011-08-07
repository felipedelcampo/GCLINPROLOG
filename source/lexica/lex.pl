compilar(File) :-       
          open(File, read, Stream), 
		  see(Stream),
          ler(ListaChar),
          automato(ListaChar, 1, 1, TmpListaToken),
          verifica_tokens(TmpListaToken, ListaToken, Msg),
          imprime_lista(ListaToken),
          imprime_mensagens_erro(Msg).
          %%%imprime_lista(ListaChar).
          %%%write(ListaToken).

ler(ListaChar) :-
	get_char(Data),
	concatenar(Data, ListaChar).

concatenar(end_of_file,  ListaChar).

concatenar(Data, [Data|ListaChar]) :- ler(ListaChar). 


imprime_lista([]).

imprime_lista([H|T]) :-
	write(H),nl,
	imprime_lista(T).

imprime_mensagem([]):- nl.

imprime_mensagem([H|T]) :-
	write(H),
	imprime_mensagem(T).

imprime_mensagens_erro([]).

imprime_mensagens_erro([H|T]):-
	imprime_mensagem(H),
	imprime_mensagens_erro(T).
	
	

pega_tipo_token([Tipo|Token], Tipo).
pega_valor_token([Tipo | [Valor |Token]], Valor).
pega_posx_token([Tipo | [Valor | [X | Token]]], X).
pega_posy_token([Tipo | [Valor | [X | [Y | Token]]]], Y).


%%%verifica_tokens recebe a lista de tokens, retira espacos, tokens errados e comentarios
%%% e retorna uma lista de mensagens para imprimir no console em caso de erro
verifica_tokens([], [], []).

%%% remove comentarios
verifica_tokens([Token | ListaToken], NovaListaToken, Erros) :-
	pega_tipo_token(Token, comentario),
	verifica_tokens(ListaToken, NovaListaToken, Erros).

%%% remove espacos
verifica_tokens([Token | ListaToken], NovaListaToken, Erros) :-
	pega_tipo_token(Token, espaco),
	verifica_tokens(ListaToken, NovaListaToken, Erros).
	
%%% remove tokens errados
verifica_tokens([Token | ListaToken], NovaListaToken, [Msg|Erros]) :-
	pega_tipo_token(Token, erro),
	cria_mensagem_token_erro(Token, Msg),
	verifica_tokens(ListaToken, NovaListaToken, Erros).

%%% arruma identificadores errados
verifica_tokens([Token | ListaToken], [NovoToken | NovaListaToken], [Msg|Erros]) :-
	pega_tipo_token(Token, erro_id),
	cria_mensagem_identificador_erro(Token, Msg),
	arruma_identificador(Token, NovoToken),
	verifica_tokens(ListaToken, NovaListaToken, Erros).

verifica_tokens([Token | ListaToken], [Token | NovaListaToken], Erros) :-
	verifica_tokens(ListaToken, NovaListaToken, Erros).

cria_mensagem_token_erro(Token, ['Token Invalido: ', Valor, ' Linha: ', PosY, ' Coluna: ', PosX]) :-
	pega_valor_token(Token, Valor),
	pega_posx_token(Token, PosX),
	pega_posy_token(Token, PosY).
		 
cria_mensagem_identificador_erro(Token, ['Identificador Invalido: ', Valor, ' Linha: ', PosY, ' Coluna: ', PosX]) :-
	pega_valor_token(Token, Valor),
	pega_posx_token(Token, PosX),
	pega_posy_token(Token, PosY).
	
arruma_identificador(Token, [id, NovoValor, PosX, PosY]) :-
	pega_valor_token(Token, Valor),
	pega_posx_token(Token, PosX),
	pega_posy_token(Token, PosY),
	remove_numeros_inicio(Valor, NovoValor).

remove_numeros_inicio([], []).
remove_numeros_inicio([H|T], NovoID) :-
	tipo_char(H, numero),
	remove_numeros_inicio(T).
remove_numeros_inicio([H|T], T).
	