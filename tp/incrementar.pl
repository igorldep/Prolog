incrementar([X|[]], [S]) :- S is X+1.
incrementar([X|L0], [S|L1]) :- S is X+1, incrementar(L0,L1).
