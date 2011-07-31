tipo_char(' ', espaco).
tipo_char('\t', espaco).
tipo_char('\r', espaco). %%% para ignorar \r em arquivos gravados no windows 

tipo_char('\n', fim_de_linha).
tipo_char(end_of_file, fim_de_linha).

%%% Pontuacoes
tipo_char('=', pontuacao).
tipo_char(':', pontuacao).
tipo_char(',', pontuacao).
tipo_char(';', pontuacao).
tipo_char('(', pontuacao).
tipo_char(')', pontuacao).
tipo_char('[', pontuacao).
tipo_char(']', pontuacao).
tipo_char('>', pontuacao).
tipo_char('<', pontuacao).
tipo_char('#', pontuacao).
tipo_char('&', pontuacao).
tipo_char('|', pontuacao).
tipo_char('~', pontuacao).
tipo_char('+', pontuacao).
tipo_char('*', pontuacao).
tipo_char('/', pontuacao).

tipo_char('-', hifen).
tipo_char('.', ponto).
tipo_char('\\', barra_invertida).
tipo_char('"', aspas).
tipo_char('\'', aspas_simples).
tipo_char('_', underline).

%%% verifica se eh letra minuscula
tipo_char(Char, letra) :-
	char_code(Char, Code),
	Code > 96,
	Code < 123.

%%% verifica se eh letra maiuscula
tipo_char(Char, letra) :-
	char_code(Char, Code),
	Code > 64,
	Code < 91.

%%% verifica se eh numero
tipo_char(Char, numero) :-
	char_code(Char, Code),
	Code > 47,
	Code < 58.

%%% tipo nao reconhecido
tipo_char(_, outro).
