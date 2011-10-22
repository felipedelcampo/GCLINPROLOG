
cria_arvore(Valor, Filho, arvore(Valor, [arvore(Filho, [])])).
cria_arvore(Valor, arvore(Valor, [])).
adiciona_no(arvore(Valor, SubArvore), No, arvore(Valor, [No | SubArvore])).
adiciona_lista_no(arvore(Valor, SubArvore), ListaNo, arvore(Valor, NovaListaNo)):-
	concat(ListaNo, SubArvore, NovaListaNo).

imprime_arvore(arvore(Valor, Filhos)) :-
	write(Valor),nl,
	imprime_lista_arvores(Filhos).

imprime_lista_arvores([]).
imprime_lista_arvores([H|T]):-
	imprime_arvore(H),
	imprime_lista_arvores(T).

teste :-
	popula_teste(Arvore),
	write(Arvore).
	
popula_teste(Arvore) :-
	cria_arvore(5, Ar),
	cria_arvore(2, A1),
	
	cria_arvore(3, A2),
	adiciona_no(A1, A2, A3),
	cria_arvore(5, A6),
	adiciona_no(A3, A6, A7),
	adiciona_no(Ar, A7, Arvore). 

concat([], Y, Y).
concat([A|X], Y, [A|Z]) :- concat(X, Y, Z).

imprimir_arvore(arvore(Valor, Filhos)) :- 
	write(Valor), nl,
	imprimir_arvore(Filhos, 1).
	
imprimir_arvore([arvore(Valor,Filhos)|RestoArvore], X):-
	imprimir_tabs(X),
	write(Valor), nl,
	X1 is X + 1,
	imprimir_arvore(Filhos, X1),
	imprimir_arvore(RestoArvore, X).
	
imprimir_arvore([], _).

imprimir_tabs(0).	

imprimir_tabs(X):-
	write(' '),
	X1 is X - 1,
	imprimir_tabs(X1).


	
	
	
