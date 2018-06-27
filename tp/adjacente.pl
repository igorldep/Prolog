concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

adjacente(X,W,[X,W|_]).
adjacente(X,W,[_,Y|L1]) :- concatenar([Y], L1, L2), adjacente(X,W,L2).
