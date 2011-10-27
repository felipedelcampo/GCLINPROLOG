tabela_preditiva(naoTerminal('program'), [palavra_chave, 'module', _, _],[naoTerminal('module'),naoTerminal('program_')]).

tabela_preditiva(naoTerminal('module'), [palavra_chave, 'module', _, _],[terminal(palavra_chave,'module'),terminal(id),naoTerminal('definitionPart'),naoTerminal('block_'),terminal(pontuacao,'.')]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'private', _, _],[]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'begin', _, _],[]).

tabela_preditiva(naoTerminal('definitionPart'), [pontuacao, '.', _, _],[]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'const', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [pontuacao, '[', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'integer', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'Boolean', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [id, _, _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'real', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'string', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'typedef', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definitionPart'), [palavra_chave, 'proc', _, _],[naoTerminal('definition'),terminal(pontuacao,';'),naoTerminal('definitionPart')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'const', _, _],[naoTerminal('constantDef')]).

tabela_preditiva(naoTerminal('definition'), [pontuacao, '[', _, _],[naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'integer', _, _],[naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'Boolean', _, _],[naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('definition'), [id, _, _, _],[naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'real', _, _],[naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'string', _, _],[naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'typedef', _, _],[naoTerminal('typeDef')]).

tabela_preditiva(naoTerminal('definition'), [palavra_chave, 'proc', _, _],[naoTerminal('procedureDef')]).

tabela_preditiva(naoTerminal('constantDef'), [palavra_chave, 'const', _, _],[terminal(palavra_chave,'const'),naoTerminal('constantName'),terminal(pontuacao,'='),naoTerminal('constant')]).

tabela_preditiva(naoTerminal('constantName'), [id, _, _, _],[terminal(id)]).

tabela_preditiva(naoTerminal('variableDef'), [pontuacao, '[', _, _],[naoTerminal('type'),naoTerminal('variableList')]).

tabela_preditiva(naoTerminal('variableDef'), [palavra_chave, 'integer', _, _],[naoTerminal('type'),naoTerminal('variableList')]).

tabela_preditiva(naoTerminal('variableDef'), [palavra_chave, 'Boolean', _, _],[naoTerminal('type'),naoTerminal('variableList')]).

tabela_preditiva(naoTerminal('variableDef'), [id, _, _, _],[naoTerminal('type'),naoTerminal('variableList')]).

tabela_preditiva(naoTerminal('variableDef'), [palavra_chave, 'real', _, _],[naoTerminal('type'),naoTerminal('variableList')]).

tabela_preditiva(naoTerminal('variableDef'), [palavra_chave, 'string', _, _],[naoTerminal('type'),naoTerminal('variableList')]).

tabela_preditiva(naoTerminal('type'), [pontuacao, '[', _, _],[naoTerminal('turpleType')]).

tabela_preditiva(naoTerminal('type'), [palavra_chave, 'integer', _, _],[naoTerminal('typeSymbol'),naoTerminal('type_')]).

tabela_preditiva(naoTerminal('type'), [palavra_chave, 'Boolean', _, _],[naoTerminal('typeSymbol'),naoTerminal('type_')]).

tabela_preditiva(naoTerminal('type'), [id, _, _, _],[naoTerminal('typeSymbol'),naoTerminal('type_')]).

tabela_preditiva(naoTerminal('type'), [palavra_chave, 'real', _, _],[naoTerminal('typeSymbol'),naoTerminal('type_')]).

tabela_preditiva(naoTerminal('type'), [palavra_chave, 'string', _, _],[naoTerminal('typeSymbol'),naoTerminal('type_')]).

tabela_preditiva(naoTerminal('typeSymbol'), [palavra_chave, 'integer', _, _],[terminal(palavra_chave,'integer')]).

tabela_preditiva(naoTerminal('typeSymbol'), [palavra_chave, 'Boolean', _, _],[terminal(palavra_chave,'Boolean')]).

tabela_preditiva(naoTerminal('typeSymbol'), [id, _, _, _],[terminal(id)]).

tabela_preditiva(naoTerminal('typeSymbol'), [palavra_chave, 'real', _, _],[terminal(palavra_chave,'real')]).

tabela_preditiva(naoTerminal('typeSymbol'), [palavra_chave, 'string', _, _],[terminal(palavra_chave,'string')]).

tabela_preditiva(naoTerminal('turpleType'), [pontuacao, '[', _, _],[terminal(pontuacao,'['),naoTerminal('typeSymbol'),naoTerminal('tupleType_'),terminal(pontuacao,']')]).

tabela_preditiva(naoTerminal('arrayType'), [palavra_chave, 'array', _, _],[terminal(palavra_chave,'array'),terminal(pontuacao,'['),terminal(id),terminal(pontuacao,']'),naoTerminal('arrayType_')]).

tabela_preditiva(naoTerminal('rangeType'), [palavra_chave, 'range', _, _],[terminal(palavra_chave,'range'),terminal(pontuacao,'['),naoTerminal('constant'),terminal(intervalo),naoTerminal('constant'),terminal(pontuacao,']')]).

tabela_preditiva(naoTerminal('variableList'), [id, _, _, _],[terminal(id),naoTerminal('variableList_')]).

tabela_preditiva(naoTerminal('typeDef'), [palavra_chave, 'typedef', _, _],[terminal(palavra_chave,'typedef'),naoTerminal('type'),terminal(id)]).

tabela_preditiva(naoTerminal('procedureDecl'), [palavra_chave, 'proc', _, _],[terminal(palavra_chave,'proc'),terminal(id_proc),naoTerminal('procedureDecl_')]).

tabela_preditiva(naoTerminal('procedureDef'), [palavra_chave, 'proc', _, _],[naoTerminal('procedureDecl'),naoTerminal('block')]).

tabela_preditiva(naoTerminal('paramPart'), [pontuacao, '(', _, _],[terminal(pontuacao,'('),naoTerminal('paramPart_'),terminal(pontuacao,')')]).

tabela_preditiva(naoTerminal('paramDef'), [palavra_chave, 'val', _, _],[naoTerminal('variableType'),naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('paramDef'), [palavra_chave, 'ref', _, _],[naoTerminal('variableType'),naoTerminal('variableDef')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'skip', _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'read', _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'write', _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [id, _, _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'return', _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [id_proc, _, _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'if', _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'do', _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'forall', _, _],[naoTerminal('statement'),terminal(pontuacao,';'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'od', _, _],[]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'fi', _, _],[]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'llarof', _, _],[]).

tabela_preditiva(naoTerminal('statementPart'), [pontuacao, '[', _, _],[]).

tabela_preditiva(naoTerminal('statementPart'), [palavra_chave, 'end', _, _],[]).

tabela_preditiva(naoTerminal('statement'), [palavra_chave, 'skip', _, _],[naoTerminal('emptyStatement')]).

tabela_preditiva(naoTerminal('statement'), [palavra_chave, 'read', _, _],[naoTerminal('readStatement')]).

tabela_preditiva(naoTerminal('statement'), [palavra_chave, 'write', _, _],[naoTerminal('writeStatement')]).

tabela_preditiva(naoTerminal('statement'), [id, _, _, _],[naoTerminal('assignStatement')]).

tabela_preditiva(naoTerminal('statement'), [palavra_chave, 'return', _, _],[naoTerminal('returnStatement')]).

tabela_preditiva(naoTerminal('statement'), [id_proc, _, _, _],[naoTerminal('callStatement')]).

tabela_preditiva(naoTerminal('statement'), [palavra_chave, 'if', _, _],[naoTerminal('ifStatement')]).

tabela_preditiva(naoTerminal('statement'), [palavra_chave, 'do', _, _],[naoTerminal('doStatement')]).

tabela_preditiva(naoTerminal('statement'), [palavra_chave, 'forall', _, _],[naoTerminal('forStatement')]).

tabela_preditiva(naoTerminal('emptyStatement'), [palavra_chave, 'skip', _, _],[terminal(palavra_chave,'skip')]).

tabela_preditiva(naoTerminal('readStatement'), [palavra_chave, 'read', _, _],[terminal(palavra_chave,'read'),naoTerminal('variableAccessList')]).

tabela_preditiva(naoTerminal('variableAccessList'), [id, _, _, _],[naoTerminal('variableAccess'),naoTerminal('variableAccessList_')]).

tabela_preditiva(naoTerminal('writeStatement'), [palavra_chave, 'write', _, _],[terminal(palavra_chave,'write'),naoTerminal('writeItem'),naoTerminal('writeStatement_')]).

tabela_preditiva(naoTerminal('writeItem'), [pontuacao, '+', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [hifen, '-', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [id, _, _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [inteiro, _, _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [real, _, _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [palavra_chave, 'true', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [palavra_chave, 'false', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [pontuacao, '[', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [pontuacao, '(', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [pontuacao, '~', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('writeItem'), [string, _, _, _],[terminal(string)]).

tabela_preditiva(naoTerminal('expressionList'), [pontuacao, '+', _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [hifen, '-', _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [id, _, _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [inteiro, _, _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [real, _, _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [palavra_chave, 'true', _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [palavra_chave, 'false', _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [pontuacao, '[', _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [pontuacao, '(', _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList'), [pontuacao, '~', _, _],[naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('assignStatement'), [id, _, _, _],[naoTerminal('variableAccessList'),terminal(pontuacao,':'),terminal(pontuacao,'='),naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('ifStatement'), [palavra_chave, 'if', _, _],[terminal(palavra_chave,'if'),naoTerminal('guardedCommandList'),terminal(palavra_chave,'fi')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [pontuacao, '+', _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [hifen, '-', _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [id, _, _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [inteiro, _, _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [real, _, _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [palavra_chave, 'true', _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [palavra_chave, 'false', _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [pontuacao, '[', _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [pontuacao, '(', _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList'), [pontuacao, '~', _, _],[naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommand'), [pontuacao, '+', _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [hifen, '-', _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [id, _, _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [inteiro, _, _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [real, _, _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [palavra_chave, 'true', _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [palavra_chave, 'false', _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [pontuacao, '[', _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [pontuacao, '(', _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('guardedCommand'), [pontuacao, '~', _, _],[naoTerminal('expression'),terminal(flecha,'->'),naoTerminal('statementPart')]).

tabela_preditiva(naoTerminal('doStatement'), [palavra_chave, 'do', _, _],[terminal(palavra_chave,'do'),naoTerminal('guardedCommandList'),terminal(palavra_chave,'od')]).

tabela_preditiva(naoTerminal('forStatement'), [palavra_chave, 'forall', _, _],[terminal(palavra_chave,'forall'),naoTerminal('variableAccess'),terminal(flecha,'->'),naoTerminal('statementPart'),terminal(palavra_chave,'llarof')]).

tabela_preditiva(naoTerminal('returnStatement'), [palavra_chave, 'return', _, _],[terminal(palavra_chave,'return'),naoTerminal('expression')]).

tabela_preditiva(naoTerminal('callStatement'), [id_proc, _, _, _],[terminal(id_proc),naoTerminal('callStatement_'),naoTerminal('argumentList')]).

tabela_preditiva(naoTerminal('argumentList'), [pontuacao, '(', _, _],[terminal(pontuacao,'('),naoTerminal('argumentList_'),terminal(pontuacao,')')]).

tabela_preditiva(naoTerminal('expression'), [pontuacao, '+', _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [hifen, '-', _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [id, _, _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [inteiro, _, _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [real, _, _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [palavra_chave, 'true', _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [palavra_chave, 'false', _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [pontuacao, '[', _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [pontuacao, '(', _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression'), [pontuacao, '~', _, _],[naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('booleanOperator'), [pontuacao, '&', _, _],[terminal(pontuacao,'&')]).

tabela_preditiva(naoTerminal('booleanOperator'), [pontuacao, '|', _, _],[terminal(pontuacao,'|')]).

tabela_preditiva(naoTerminal('relationalExpression'), [pontuacao, '+', _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [hifen, '-', _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [id, _, _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [inteiro, _, _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [real, _, _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [palavra_chave, 'true', _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [palavra_chave, 'false', _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [pontuacao, '[', _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [pontuacao, '(', _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalExpression'), [pontuacao, '~', _, _],[naoTerminal('simpleExpression'),naoTerminal('relationalExpression_')]).

tabela_preditiva(naoTerminal('relationalOperator'), [pontuacao, '<', _, _],[terminal(pontuacao,'<'),naoTerminal('relationalOperator_')]).

tabela_preditiva(naoTerminal('relationalOperator'), [pontuacao, '=', _, _],[terminal(pontuacao,'=')]).

tabela_preditiva(naoTerminal('relationalOperator'), [pontuacao, '>', _, _],[terminal(pontuacao,'>'),naoTerminal('relationalOperator_')]).

tabela_preditiva(naoTerminal('relationalOperator'), [pontuacao, '#', _, _],[terminal(pontuacao,'#')]).

tabela_preditiva(naoTerminal('simpleExpression'), [pontuacao, '+', _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [hifen, '-', _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [id, _, _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [inteiro, _, _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [real, _, _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [palavra_chave, 'true', _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [palavra_chave, 'false', _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [pontuacao, '[', _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [pontuacao, '(', _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('simpleExpression'), [pontuacao, '~', _, _],[naoTerminal('sign'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('term'), [id, _, _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term'), [inteiro, _, _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term'), [real, _, _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term'), [palavra_chave, 'true', _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term'), [palavra_chave, 'false', _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term'), [pontuacao, '[', _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term'), [pontuacao, '(', _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term'), [pontuacao, '~', _, _],[naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('factor'), [id, _, _, _],[naoTerminal('variableAccess')]).

tabela_preditiva(naoTerminal('factor'), [inteiro, _, _, _],[terminal(inteiro)]).

tabela_preditiva(naoTerminal('factor'), [real, _, _, _],[terminal(real)]).

tabela_preditiva(naoTerminal('factor'), [palavra_chave, 'true', _, _],[naoTerminal('booleanConstant')]).

tabela_preditiva(naoTerminal('factor'), [palavra_chave, 'false', _, _],[naoTerminal('booleanConstant')]).

tabela_preditiva(naoTerminal('factor'), [pontuacao, '[', _, _],[terminal(pontuacao,'['),naoTerminal('expressionList'),terminal(pontuacao,']')]).

tabela_preditiva(naoTerminal('factor'), [pontuacao, '(', _, _],[terminal(pontuacao,'('),naoTerminal('expression'),terminal(pontuacao,')')]).

tabela_preditiva(naoTerminal('factor'), [pontuacao, '~', _, _],[terminal(pontuacao,'~'),naoTerminal('factor')]).

tabela_preditiva(naoTerminal('addingOperator'), [pontuacao, '+', _, _],[terminal(pontuacao,'+')]).

tabela_preditiva(naoTerminal('addingOperator'), [hifen, '-', _, _],[terminal(hifen,'-')]).

tabela_preditiva(naoTerminal('multiplyOperator'), [pontuacao, '*', _, _],[terminal(pontuacao,'*')]).

tabela_preditiva(naoTerminal('multiplyOperator'), [pontuacao, '/', _, _],[terminal(pontuacao,'/')]).

tabela_preditiva(naoTerminal('multiplyOperator'), [pontuacao, '\\', _, _],[terminal(pontuacao,'\\')]).

tabela_preditiva(naoTerminal('variableAccess'), [id, _, _, _],[terminal(id),naoTerminal('variableMore')]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, ':', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '*', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '>', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [intervalo, _, _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '#', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [hifen, '-', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, ',', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '=', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '/', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '&', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '\\', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '|', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [flecha, '->', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '+', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '<', _, _],[]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '[', _, _],[terminal(pontuacao,'['),naoTerminal('expression'),terminal(pontuacao,']'),naoTerminal('indexorcomp')]).

tabela_preditiva(naoTerminal('variableMore'), [pontuacao, '.', _, _],[terminal(pontuacao,'.'),naoTerminal('nextitem'),naoTerminal('indexorcomp')]).

tabela_preditiva(naoTerminal('nextitem'), [inteiro, _, _, _],[terminal(inteiro)]).

tabela_preditiva(naoTerminal('nextitem'), [id, _, _, _],[terminal(id)]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '.', _, _],[terminal(pontuacao,'.'),naoTerminal('indexorcomp')]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '[', _, _],[terminal(pontuacao,'['),naoTerminal('expression'),terminal(pontuacao,']'),naoTerminal('indexorcomp')]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, ':', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '*', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '>', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [intervalo, _, _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '#', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [hifen, '-', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, ',', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '=', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '/', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '&', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '\\', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '|', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [flecha, '->', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '+', _, _],[]).

tabela_preditiva(naoTerminal('indexorcomp'), [pontuacao, '<', _, _],[]).

tabela_preditiva(naoTerminal('constant'), [pontuacao, '+', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [hifen, '-', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [id, _, _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [inteiro, _, _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [real, _, _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [palavra_chave, 'true', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [palavra_chave, 'false', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [pontuacao, '[', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [pontuacao, '(', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('constant'), [pontuacao, '~', _, _],[naoTerminal('expression')]).

tabela_preditiva(naoTerminal('booleanConstant'), [palavra_chave, 'true', _, _],[terminal(palavra_chave,'true')]).

tabela_preditiva(naoTerminal('booleanConstant'), [palavra_chave, 'false', _, _],[terminal(palavra_chave,'false')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'const', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [pontuacao, '[', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'integer', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'Boolean', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [id, _, _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'real', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'string', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'typedef', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'proc', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('block'), [palavra_chave, 'begin', _, _],[naoTerminal('definitionPart'),terminal(palavra_chave,'begin'),naoTerminal('statementPart'),terminal(palavra_chave,'end')]).

tabela_preditiva(naoTerminal('program_'), [palavra_chave, 'module', _, _],[naoTerminal('module'),naoTerminal('program_')]).

tabela_preditiva(naoTerminal('program_'), [], []).

tabela_preditiva(naoTerminal('block_'), [palavra_chave, 'private', _, _],[terminal(palavra_chave,'private'),naoTerminal('block')]).

tabela_preditiva(naoTerminal('block_'), [pontuacao, '.', _, _],[]).

tabela_preditiva(naoTerminal('type_'), [palavra_chave, 'array', _, _],[naoTerminal('arrayType')]).

tabela_preditiva(naoTerminal('type_'), [palavra_chave, 'range', _, _],[naoTerminal('rangeType')]).

tabela_preditiva(naoTerminal('type_'), [id, _, _, _],[]).

tabela_preditiva(naoTerminal('tupleType_'), [pontuacao, ',', _, _],[terminal(pontuacao,','),naoTerminal('typeSymbol'),naoTerminal('tupleType_')]).

tabela_preditiva(naoTerminal('tupleType_'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('arrayType_'), [pontuacao, '[', _, _],[terminal(pontuacao,'['),terminal(id),terminal(pontuacao,']'),naoTerminal('arrayType_')]).

tabela_preditiva(naoTerminal('arrayType_'), [id, _, _, _],[]).

tabela_preditiva(naoTerminal('variableList_'), [pontuacao, ',', _, _],[terminal(pontuacao,','),terminal(id),naoTerminal('variableList_')]).

tabela_preditiva(naoTerminal('variableList_'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('variableList_'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [pontuacao, '(', _, _],[naoTerminal('paramPart')]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'begin', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'const', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'typedef', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'real', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'string', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'integer', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'Boolean', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [palavra_chave, 'proc', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [pontuacao, '[', _, _],[]).

tabela_preditiva(naoTerminal('procedureDecl_'), [id, _, _, _],[]).

tabela_preditiva(naoTerminal('paramPart_'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('paramPart_'), [palavra_chave, 'val', _, _],[naoTerminal('paramDef'),naoTerminal('paramList')]).

tabela_preditiva(naoTerminal('paramPart_'), [palavra_chave, 'ref', _, _],[naoTerminal('paramDef'),naoTerminal('paramList')]).

tabela_preditiva(naoTerminal('paramList'), [pontuacao, ';', _, _],[terminal(pontuacao,';'),naoTerminal('paramDef'),naoTerminal('paramList')]).

tabela_preditiva(naoTerminal('paramList'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('variableType'), [palavra_chave, 'val', _, _],[terminal(palavra_chave,'val')]).

tabela_preditiva(naoTerminal('variableType'), [palavra_chave, 'ref', _, _],[terminal(palavra_chave,'ref')]).

tabela_preditiva(naoTerminal('variableAccessList_'), [pontuacao, ',', _, _],[terminal(pontuacao,','),naoTerminal('variableAccess'),naoTerminal('variableAccessList_')]).

tabela_preditiva(naoTerminal('variableAccessList_'), [pontuacao, ':', _, _],[]).

tabela_preditiva(naoTerminal('variableAccessList_'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('writeStatement_'), [pontuacao, ',', _, _],[terminal(pontuacao,','),naoTerminal('writeItem'),naoTerminal('writeStatement_')]).

tabela_preditiva(naoTerminal('writeStatement_'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('expressionList_'), [pontuacao, ',', _, _],[terminal(pontuacao,','),naoTerminal('expression'),naoTerminal('expressionList_')]).

tabela_preditiva(naoTerminal('expressionList_'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('expressionList_'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('expressionList_'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('guardedCommandList_'), [pontuacao, '[', _, _],[terminal(pontuacao,'['),terminal(pontuacao,']'),naoTerminal('guardedCommand'),naoTerminal('guardedCommandList_')]).

tabela_preditiva(naoTerminal('guardedCommandList_'), [palavra_chave, 'fi', _, _],[]).

tabela_preditiva(naoTerminal('guardedCommandList_'), [palavra_chave, 'od', _, _],[]).

tabela_preditiva(naoTerminal('callStatement_'), [pontuacao, '.', _, _],[terminal(pontuacao,'.'),terminal(pontuacao,'.')]).

tabela_preditiva(naoTerminal('callStatement_'), [pontuacao, '(', _, _],[]).

tabela_preditiva(naoTerminal('argumentList_'), [pontuacao, '+', _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [hifen, '-', _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [id, _, _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [inteiro, _, _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [real, _, _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [palavra_chave, 'true', _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [palavra_chave, 'false', _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [pontuacao, '[', _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [pontuacao, '(', _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [pontuacao, '~', _, _],[naoTerminal('expressionList')]).

tabela_preditiva(naoTerminal('argumentList_'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('expression_'), [pontuacao, '&', _, _],[naoTerminal('booleanOperator'),naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression_'), [pontuacao, '|', _, _],[naoTerminal('booleanOperator'),naoTerminal('relationalExpression'),naoTerminal('expression_')]).

tabela_preditiva(naoTerminal('expression_'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('expression_'), [intervalo, _, _, _],[]).

tabela_preditiva(naoTerminal('expression_'), [pontuacao, ',', _, _],[]).

tabela_preditiva(naoTerminal('expression_'), [flecha, '->', _, _],[]).

tabela_preditiva(naoTerminal('expression_'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('expression_'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, '<', _, _],[naoTerminal('relationalOperator'),naoTerminal('simpleExpression')]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, '=', _, _],[naoTerminal('relationalOperator'),naoTerminal('simpleExpression')]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, '>', _, _],[naoTerminal('relationalOperator'),naoTerminal('simpleExpression')]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, '#', _, _],[naoTerminal('relationalOperator'),naoTerminal('simpleExpression')]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [intervalo, _, _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, ',', _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, '&', _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, '|', _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [flecha, '->', _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('relationalExpression_'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [pontuacao, '=', _, _],[terminal(pontuacao,'=')]).

tabela_preditiva(naoTerminal('relationalOperator_'), [inteiro, _, _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [hifen, '-', _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [palavra_chave, 'false', _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [pontuacao, '(', _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [palavra_chave, 'true', _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [real, _, _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [pontuacao, '[', _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [id, _, _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [pontuacao, '~', _, _],[]).

tabela_preditiva(naoTerminal('relationalOperator_'), [pontuacao, '+', _, _],[]).

tabela_preditiva(naoTerminal('sign'), [pontuacao, '+', _, _],[terminal(pontuacao,'+')]).

tabela_preditiva(naoTerminal('sign'), [hifen, '-', _, _],[terminal(hifen,'-')]).

tabela_preditiva(naoTerminal('sign'), [inteiro, _, _, _],[]).

tabela_preditiva(naoTerminal('sign'), [palavra_chave, 'false', _, _],[]).

tabela_preditiva(naoTerminal('sign'), [pontuacao, '(', _, _],[]).

tabela_preditiva(naoTerminal('sign'), [palavra_chave, 'true', _, _],[]).

tabela_preditiva(naoTerminal('sign'), [real, _, _, _],[]).

tabela_preditiva(naoTerminal('sign'), [pontuacao, '[', _, _],[]).

tabela_preditiva(naoTerminal('sign'), [id, _, _, _],[]).

tabela_preditiva(naoTerminal('sign'), [pontuacao, '~', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, '+', _, _],[naoTerminal('addingOperator'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('addingExpression'), [hifen, '-', _, _],[naoTerminal('addingOperator'),naoTerminal('term'),naoTerminal('addingExpression')]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, '>', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [intervalo, _, _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, '#', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, ',', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, '=', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, '&', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, '|', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [flecha, '->', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('addingExpression'), [pontuacao, '<', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '*', _, _],[naoTerminal('multiplyOperator'),naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '/', _, _],[naoTerminal('multiplyOperator'),naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '\\', _, _],[naoTerminal('multiplyOperator'),naoTerminal('factor'),naoTerminal('term_')]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, ']', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '>', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [intervalo, _, _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '#', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [hifen, '-', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, ',', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '=', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '&', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '|', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [flecha, '->', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, ')', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, ';', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '+', _, _],[]).

tabela_preditiva(naoTerminal('term_'), [pontuacao, '<', _, _],[]).


