%%% palavras chaves do GCL:
%%% module private end const Boolean integer begin typedef array range
%%% proc val ref return write read if fi do od true false forall llarof skip 

%%% adicionadas: real string

%%% verifica se id eh na verdade palavra_chave
palavra_chave([_, 'module', PosX, PosY], [palavra_chave, 'module', PosX, PosY]).
palavra_chave([_, 'private', PosX, PosY], [palavra_chave, 'private', PosX, PosY]).
palavra_chave([_, 'end', PosX, PosY], [palavra_chave, 'end', PosX, PosY]).
palavra_chave([_, 'const', PosX, PosY], [palavra_chave, 'const', PosX, PosY]).
palavra_chave([_, 'Boolean', PosX, PosY], [palavra_chave, 'Boolean', PosX, PosY]).
palavra_chave([_, 'integer', PosX, PosY], [palavra_chave, 'integer', PosX, PosY]).
palavra_chave([_, 'begin', PosX, PosY, [palavra_chave, 'begin', PosX, PosY]).
palavra_chave([_, 'typedef', PosX, PosY], [palavra_chave, 'typedef', PosX, PosY]).
palavra_chave([_, 'array', PosX, PosY], [palavra_chave, 'array', PosX, PosY]).
palavra_chave([_, 'range', PosX, PosY], [palavra_chave, 'range', PosX, PosY]).
palavra_chave([_, 'proc', PosX, PosY], [palavra_chave, 'proc', PosX, PosY]).
palavra_chave([_,  'val', PosX, PosY], [palavra_chave, 'val', PosX, PosY]).
palavra_chave([_, 'ref', PosX, PosY], [palavra_chave, 'ref', PosX, PosY]).
palavra_chave([_, 'return', PosX, PosY], [palavra_chave, 'return', PosX, PosY]).
palavra_chave([_, 'write', PosX, PosY], [palavra_chave, 'write', PosX, PosY]).
palavra_chave([_, 'read', PosX, PosY], [palavra_chave, 'read', PosX, PosY]).
palavra_chave([_, 'if', PosX, PosY], [palavra_chave, 'if', PosX, PosY]).
palavra_chave([_, 'fi', PosX, PosY], [palavra_chave, 'fi', PosX, PosY]).
palavra_chave([_, 'do', PosX, PosY], [palavra_chave, 'do', PosX, PosY]).
palavra_chave([_, 'od', PosX, PosY], [palavra_chave, 'od', PosX, PosY]).
palavra_chave([_, 'true', PosX, PosY], [palavra_chave, 'true', PosX, PosY]).
palavra_chave([_, 'false', PosX, PosY], [palavra_chave, 'false', PosX, PosY]).
palavra_chave([_, 'forall', PosX, PosY], [palavra_chave, 'forall', PosX, PosY]).
palavra_chave([_, 'llarof', PosX, PosY], [palavra_chave, 'llarof', PosX, PosY]).
palavra_chave([_, 'skip', PosX, PosY], [palavra_chave, 'skip', PosX, PosY]).
palavra_chave([_, 'real', PosX, PosY], [palavra_chave, 'real', PosX, PosY]).
palavra_chave([_, 'string', PosX, PosY], [palavra_chave, 'string', PosX, PosY]).

%%% nao eh palavra chave
palavra_chave(Token, Token).
	
