%%% palavras chaves do GCL:
%%% module private end const Boolean integer begin typedef array range
%%% proc val ref return write read if fi do od true false forall llarof skip 

%%% adicionadas: real string

%%% verifica se id eh na verdade palavra_chave
palavra_chave([_, 'module', PosX, PosY], [palavra_chave, 'module', PosX, PosY]).
palavra_chave([_, [p,r,i,v,a,t,e], PosX, PosY], [palavra_chave, 'private', PosX, PosY]).
palavra_chave([_, [e,n,d], PosX, PosY], [palavra_chave, [e,n,d], PosX, PosY]).
palavra_chave([_, [c,o,n,s,t], PosX, PosY], [palavra_chave, [c,o,n,s,t], PosX, PosY]).
palavra_chave([_, 'Boolean', PosX, PosY], [palavra_chave, 'Boolean', PosX, PosY]).
palavra_chave([_, 'integer', PosX, PosY], [palavra_chave, 'integer', PosX, PosY]).
palavra_chave([_, [b,e,g,i,n], PosX, PosY, [palavra_chave, 'begin', PosX, PosY]).
palavra_chave([_, [t,y,p,e,d,e,f], PosX, PosY], [palavra_chave, [t,y,p,e,d,e,f], PosX, PosY]).
palavra_chave([_, [a,r,r,a,y], PosX, PosY], [palavra_chave, [a,r,r,a,y], PosX, PosY]).
palavra_chave([_, [r,a,n,g,e], PosX, PosY], [palavra_chave, [r,a,n,g,e], PosX, PosY]).
palavra_chave([_, [p,r,o,c], PosX, PosY], [palavra_chave, [p,r,o,c], PosX, PosY]).
palavra_chave([_, [v,a,l], PosX, PosY], [palavra_chave, [v,a,l], PosX, PosY]).
palavra_chave([_, [r,e,f], PosX, PosY], [palavra_chave, [r,e,f], PosX, PosY]).
palavra_chave([_, [r,e,t,u,r,n], PosX, PosY], [palavra_chave, [r,e,t,u,r,n], PosX, PosY]).
palavra_chave([_, [w,r,i,t,e], PosX, PosY], [palavra_chave, [w,r,i,t,e], PosX, PosY]).
palavra_chave([_, [r,e,a,d], PosX, PosY], [palavra_chave, [r,e,a,d], PosX, PosY]).
palavra_chave([_, [i,f], PosX, PosY], [palavra_chave, [i,f], PosX, PosY]).
palavra_chave([_, [f,i], PosX, PosY], [palavra_chave, [f,i], PosX, PosY]).
palavra_chave([_, [d,o], PosX, PosY], [palavra_chave, [d,o], PosX, PosY]).
palavra_chave([_, [o,d], PosX, PosY], [palavra_chave, [o,d], PosX, PosY]).
palavra_chave([_, [t,r,u,e], PosX, PosY], [palavra_chave, [t,r,u,e], PosX, PosY]).
palavra_chave([_, [f,a,l,s,e], PosX, PosY], [palavra_chave, [f,a,l,s,e], PosX, PosY]).
palavra_chave([_, [f,o,r,a,l,l], PosX, PosY], [palavra_chave, [f,o,r,a,l,l], PosX, PosY]).
palavra_chave([_, [l,l,a,r,o,f], PosX, PosY], [palavra_chave, [l,l,a,r,o,f], PosX, PosY]).
palavra_chave([_, [s,k,i,p], PosX, PosY], [palavra_chave, [s,k,i,p], PosX, PosY]).
palavra_chave([_, [r,e,a,l], PosX, PosY], [palavra_chave, [r,e,a,l], PosX, PosY]).
palavra_chave([_, [s,t,r,i,n,g], PosX, PosY], [palavra_chave, [s,t,r,i,n,g], PosX, PosY]).

%%% nao eh palavra chave
palavra_chave(Token, Token).
	
