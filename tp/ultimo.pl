ultimo([X|[]], X).
ultimo([X|L], Y) :- ultimo(L, Y).
