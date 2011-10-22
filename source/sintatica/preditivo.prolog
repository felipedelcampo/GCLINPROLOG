analise_sintatica(ListaTokens, Arvore):-
	verifica_producao([naoTerminal('program')], ListaTokens, ListaTokens2, [Arvore | Resto]).

verifica_producao([], ListaTokens, ListaTokens, []).

verifica_producao([naoTerminal(NaoTerminal) | RestoPilha], [], [], []):-
	tabela_preditiva(naoTerminal(NaoTerminal), [], []).

verifica_producao([naoTerminal(NaoTerminal) | RestoPilha], [Token|ListaTokens], RetornoTokens2, [NovaArvore| ArvoreRetorno]):-
	tabela_preditiva(naoTerminal(NaoTerminal), Token, Pilha),
	cria_arvore(NaoTerminal, Arvore),
	verifica_producao(Pilha, [Token|ListaTokens], RetornoTokens, ListaNo),
	adiciona_lista_no(Arvore, ListaNo, NovaArvore),
	verifica_producao(RestoPilha, RetornoTokens, RetornoTokens2, ArvoreRetorno).
	


verifica_producao([terminal(Tipo, Valor) | RestoPilha], [[Tipo, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore]):-
	cria_arvore([Tipo, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore). 
	
verifica_producao([terminal(string) | RestoPilha], [[string, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore]):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore). 
		
verifica_producao([terminal(id) | RestoPilha], [[id, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore]):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore). 
	
verifica_producao([terminal(inteiro) | RestoPilha], [[inteiro, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore]):-
	cria_arvore([inteiro, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore). 
	
verifica_producao([terminal(real) | RestoPilha], [[real, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore]):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore). 
	
verifica_producao([terminal(intervalo) | RestoPilha], [[intervalo, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore]):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore). 
