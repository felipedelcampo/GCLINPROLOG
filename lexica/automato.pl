
%%% verifica geracao de identificadores
muda_estado(s1, letra, s2).
muda_estado(s2, letra, s2).
muda_estado(s2, numero, s2).
muda_estado(s2, underline, s2).
muda_estado(s2, espaco, gera_id).
muda_estado(s2, fim_de_linha, gera_id).
muda_estado(s2, ponto, gera_id).
muda_estado(s2, hifen, gera_id).
muda_estado(s2, barra_invertida, gera_id).
muda_estado(s2, pontuacao, gera_id).

%%% verifica geracao de inteiros
muda_estado(s1, numero, s3).
muda_estado(s3, numero, s3).
muda_estado(s3, espaco, gera_inteiro).
muda_estado(s3, fim_de_linha, gera_inteiro).
muda_estado(s3, ponto, gera_inteiro).
muda_estado(s3, hifen, gera_inteiro).
muda_estado(s3, barra_invertida, gera_inteiro).
muda_estado(s3, pontuacao, gera_inteiro).

%%% verifica geracao de numeros reais
muda_estado(s1, ponto, s4).
muda_estado(s3, ponto, s4).
muda_estado(s4, numero, s4).
muda_estado(s4, espaco, gera_real).
muda_estado(s4, fim_de_linha, gera_real).
muda_estado(s4, ponto, gera_real).
muda_estado(s4, hifen, gera_real).
muda_estado(s4, barra_invertida, gera_real).
muda_estado(s4, pontuacao, gera_real).

%%% verifica comentarios
muda_estado(s1, hifen, s5).
muda_estado(s5, hifen, s6).
muda_estado(s6, fim_de_linha, gera_comentario).
muda_estado(s6, _, s6).
