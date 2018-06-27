concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar([X], X).
linearizar([X|L1], L2) :- concatenar(X, L3, L2), linearizar(L1,L3).
