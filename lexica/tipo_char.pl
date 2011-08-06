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
tipo_char('a', letra).
tipo_char('b', letra).
tipo_char('c', letra).
tipo_char('d', letra).
tipo_char('e', letra).
tipo_char('f', letra).
tipo_char('g', letra).
tipo_char('h', letra).
tipo_char('i', letra).
tipo_char('j', letra).
tipo_char('k', letra).
tipo_char('l', letra).
tipo_char('m', letra).
tipo_char('n', letra).
tipo_char('o', letra).
tipo_char('p', letra).
tipo_char('q', letra).
tipo_char('r', letra).
tipo_char('s', letra).
tipo_char('t', letra).
tipo_char('u', letra).
tipo_char('v', letra).
tipo_char('w', letra).
tipo_char('x', letra).
tipo_char('y', letra).
tipo_char('z', letra).

%%% verifica se eh letra maiuscula
tipo_char('A', letra).
tipo_char('B', letra).
tipo_char('C', letra).
tipo_char('D', letra).
tipo_char('E', letra).
tipo_char('F', letra).
tipo_char('G', letra).
tipo_char('H', letra).
tipo_char('I', letra).
tipo_char('J', letra).
tipo_char('K', letra).
tipo_char('L', letra).
tipo_char('M', letra).
tipo_char('N', letra).
tipo_char('O', letra).
tipo_char('P', letra).
tipo_char('Q', letra).
tipo_char('R', letra).
tipo_char('S', letra).
tipo_char('T', letra).
tipo_char('U', letra).
tipo_char('V', letra).
tipo_char('W', letra).
tipo_char('X', letra).
tipo_char('Y', letra).
tipo_char('Z', letra).

%%% verifica se eh numero
tipo_char('0', numero).
tipo_char('1', numero).
tipo_char('2', numero).
tipo_char('3', numero).
tipo_char('4', numero).
tipo_char('5', numero).
tipo_char('6', numero).
tipo_char('7', numero).
tipo_char('8', numero).
tipo_char('9', numero).


%%% tipo nao reconhecido
tipo_char(_, outro).
