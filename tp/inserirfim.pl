%inserirfim(X, [], [X]).
%inserirfim(X, [Y|L1], [Y|L2]) :- inserirfim(X, L1, L2).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

inserirfim(X, L1, L2) :- concatenar(L1, [X], L2).
