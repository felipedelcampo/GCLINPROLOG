abrir(File) :-       
          open(File, read, Stream), 
		  see(Stream),
	get_char(Data),
	processar(Data),
          ler(Data).

ler(end_of_file).
 
ler(_) :-
  get_char(Data),
  processar(Data),
  ler(Data).

processar(end_of_file).

%%% processar(Data) :-  char_code(Data, Tipo), write(Data), write(-), write(Tipo), write(' '). 

processar(Data) :-  tipo_char(Data, Tipo), write(Data), write(-), write(Tipo), write(' '). 


	
