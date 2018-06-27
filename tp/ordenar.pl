ordenar([], []).
ordenar([X|L1], LR) :- separar(X, L1, L2, L3),
                       ordenar(L2, L4),
                       ordenar(L3, L5),
                       concatenar(L4, [X], L6),
		       concatenar(L6, L5, LR).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

separar(_, [], [], []).
separar(X, [Z|L0], [Z|L1], L2) :- Z =< X, separar(X, L0, L1, L2).
separar(X, [Z|L0], L1, [Z|L2]) :- Z > X, separar(X, L0, L1, L2).
