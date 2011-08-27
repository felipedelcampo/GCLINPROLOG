
%%%tabela_preditiva(NaoTerminal, Terminal, Pilha, NovaPilha).
tabela_preditiva(terminal(p), [palavra_chave, 'module', _, _], Pilha, [terminal(m) | Pilha]).
tabela_preditiva(terminal(m), [palavra_chave, 'module', _, _], Pilha, [[palavra_chave, 'module']| [id| [terminal(dp)| [ [pontuacao, '.']  | Pilha] ] ] ]).
tabela_preditiva(terminal(dp), [palavra_chave, 'const', _, _], Pilha, [terminal(d) | [[pontuacao, ';'] | [ terminal(dp) | Pilha]]]).
tabela_preditiva(terminal(dp), [pontuacao, '.', _, _], Pilha, Pilha).
tabela_preditiva(terminal(d), [palavra_chave, 'const', _, _], Pilha, [terminal(cd) | Pilha]).
tabela_preditiva(terminal(cd), [palavra_chave, 'const', _, _], Pilha, 

