tabela_preditiva(naoTerminal('program'), [palavra_chave, 'module', _, _],[naoTerminal('module')]).

tabela_preditiva(naoTerminal('module'), [palavra_chave, 'module', _, _],[terminal(palavra_chave,'module'),terminal(id),naoTerminal('definitionPart'),terminal(pontuacao,'.')]).

tabela_preditiva(naoTerminal('definitionPart'), [pontuacao, '.', _, _],[]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'const', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'const', _, _],[naoTerminal('constantDef')]).

tabela_preditiva(naoTerminal('constantDef'), [palavra_chave, 'const', _, _],[terminal(palavra_chave,'const'),naoTerminal('constantName'),terminal(pontuacao,'=')]).

tabela_preditiva(naoTerminal('constantName'), [id, _, _, _],[terminal(id)]).

