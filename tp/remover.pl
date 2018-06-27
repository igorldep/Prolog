remover(_, [], []).
remover(X, [X|L1], L2) :- remover(X, L1, L2).
remover(X, [Y|T], [Y|NT]) :- X \== Y, remover(X, T, NT).
