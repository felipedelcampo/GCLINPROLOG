compilar(File) :-       
          open(File, read, Stream), 
		  see(Stream),
          ler(ListaChar),
          automato(ListaChar, 0, 0, ListaToken),
        %%%  imprime_lista(ListaToken).
          %%%imprime_lista(ListaChar).
          write(ListaToken).

ler(ListaChar) :-
	get_char(Data),
	concatenar(Data, ListaChar).

concatenar(end_of_file,  ListaChar).

concatenar(Data, [Data|ListaChar]) :- ler(ListaChar). 


imprime_lista([]).

imprime_lista([H|T]) :-
	write(H),
	imprime_lista(T).
	

	 
	
