rotacionarn(1,[X|L1],L2) :- inserirfim(X,L1,L2).
rotacionarn(N, [X|L1], L2) :- inserirfim(X,L1,L3), M is N-1, rotacionarn(M,L3,L2).

inserirfim(X, [], [X]).
inserirfim(X, [Y|L1], [Y|L2]) :- inserirfim(X, L1, L2).
