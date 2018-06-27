gerar(X, X, [X]).
gerar(X, Y, [X|L2]) :- Z is X+1, gerar(Z, Y, L2).
