analise_sintatica(ListaTokens, Arvore2, Mensagens):-
	verifica_producao([naoTerminal('program')], ListaTokens, ListaTokens2, [Arvore | Resto], Mensagens),
	arvore_sem_nos_inuteis(Arvore, Arvore2).

%%%Remove os nos da arvore que não possuem um Token e portanto não são úteis para a as próximas fases
arvore_possui_token(arvore([Tipo, Valor, X, Y], [])).
arvore_possui_token(arvore(_, Sub)):-
	filho_possui_token(Sub).


filho_possui_token([A|_]) :-
	arvore_possui_token(A).
filho_possui_token([_|T]) :-
	filho_possui_token(T).

arvore_sem_nos_inuteis(arvore(Valor, SubArvore), Arvore2) :-
	filhos_com_token(SubArvore, Sub),
	cria_arvore(Valor, Arvore),
	adiciona_lista_no(Arvore, Sub, Arvore2).

filhos_com_token([],[]).

filhos_com_token([arvore([Tipo, Valor, X, Y], []) | RestoArvore], [arvore([Tipo, Valor, X, Y], []) | RestoArvore2]):-
	filhos_com_token(RestoArvore, RestoArvore2).

filhos_com_token([arvore(Valor, Filho)|RestoArvore], [Arvore2|RestoArvore2]) :-
	filho_possui_token(Filho),
	arvore_sem_nos_inuteis(arvore(Valor, Filho), Arvore2),
	filhos_com_token(RestoArvore, RestoArvore2).
	
filhos_com_token([Arvore|RestoArvore], RestoArvore2) :-
	filhos_com_token(RestoArvore, RestoArvore2).
%%%

verifica_producao([], ListaTokens, ListaTokens, [], []).

verifica_producao([naoTerminal(NaoTerminal) | RestoPilha], [], [], [], []):-
	tabela_preditiva(naoTerminal(NaoTerminal), [], []).

verifica_producao([naoTerminal(NaoTerminal) | RestoPilha], [Token|ListaTokens], RetornoTokens2, [NovaArvore| ArvoreRetorno], Mensagens):-
	tabela_preditiva(naoTerminal(NaoTerminal), Token, Pilha),
	cria_arvore(NaoTerminal, Arvore),
	verifica_producao(Pilha, [Token|ListaTokens], RetornoTokens, ListaNo, Mensagens1),
	adiciona_lista_no(Arvore, ListaNo, NovaArvore),
	verifica_producao(RestoPilha, RetornoTokens, RetornoTokens2, ArvoreRetorno, Mensagens2),
	concat(Mensagens1, Mensagens2, Mensagens).

%%%verifica se o token processado pode ser inserido na arvore...
verifica_producao([terminal(Tipo, Valor) | RestoPilha], [[Tipo, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore], Mensagens):-
	pode_inserir([Tipo, Valor, PosX, PoxY]),
	cria_arvore([Tipo, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 

%% ...e não insere se não poder
verifica_producao([terminal(Tipo, Valor) | RestoPilha], [[Tipo, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, RetornoArvore, Mensagens):-
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 
	
verifica_producao([terminal(string) | RestoPilha], [[string, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore], Mensagens):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 
		
verifica_producao([terminal(id) | RestoPilha], [[id, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore], Mensagens):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 
	
verifica_producao([terminal(id_proc) | RestoPilha], [[id_proc, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore], Mensagens):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 
	
verifica_producao([terminal(inteiro) | RestoPilha], [[inteiro, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore], Mensagens):-
	cria_arvore([inteiro, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 
	
verifica_producao([terminal(real) | RestoPilha], [[real, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore], Mensagens):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 
	
verifica_producao([terminal(intervalo) | RestoPilha], [[intervalo, Valor, PosX, PoxY]|ListaTokens], RetornoListaTokens, [Arvore|RetornoArvore], Mensagens):-
	cria_arvore([id, Valor, PosX, PoxY], Arvore),
	verifica_producao(RestoPilha, ListaTokens, RetornoListaTokens, RetornoArvore, Mensagens). 
	
%%%Tratamento de erros
verifica_producao([terminal(Tipo, Valor) | RestoPilha], [[Tipo2, Valor2, PosX, PoxY]|ListaTokens], RetornoListaTokens, RetornoArvore, [['Esperado ', Valor, ' Linha: ', PoxY, ' Coluna: ', PosX]]):- 	
	verifica_producao(RestoPilha, [[Tipo2, Valor2, PosX, PoxY]|ListaTokens], RetornoListaTokens, RetornoArvore, Mensagens).

verifica_producao([terminal(Tipo) | RestoPilha], [[Tipo2, Valor2, PosX, PoxY]|ListaTokens], RetornoListaTokens, RetornoArvore, [['Esperado ', Tipo, ' Linha: ', PoxY, ' Coluna: ', PosX] | Mensagens]):- 
	verifica_producao(RestoPilha, [[Tipo2, Valor2, PosX, PoxY]|ListaTokens], RetornoListaTokens, RetornoArvore, Mensagens).
	
verifica_producao([naoTerminal(NaoTerminal) | RestoPilha], [[Tipo2, Valor2, PosX, PoxY]|ListaTokens], RetornoListaTokens, RetornoArvore, [['Token ', Tipo2, ' Invalido ', ' - ', NaoTerminal, ' Linha: ', PoxY, ' Coluna: ', PosX] | Mensagens]):-
	 sincroniza_tokens(naoTerminal(NaoTerminal), ListaTokens, ListaTokens2),
	 verifica_producao(RestoPilha, ListaTokens2, RetornoListaTokens, RetornoArvore, Mensagens).

sincroniza_tokens(NaoTerminal, [], []).

sincroniza_tokens(NaoTerminal, [Token|ListaTokens], ListaTokens):-
	sincronizacao(NaoTerminal, Token).
	
sincroniza_tokens(NaoTerminal, [Token|ListaTokens], ListaTokens2):-
	sincroniza_tokens(NaoTerminal, ListaTokens, ListaTokens2).
