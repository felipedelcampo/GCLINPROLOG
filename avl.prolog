consulta(X) :-
	avl_new(A),
	avl_insert('var', 'int', A, A2),
	avl_lookup('var', X, A2).
