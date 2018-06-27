maior([X], X).
maior([X|L], M) :- maior(L,M), M >= X.
maior([X|L], X) :- maior(L,M), X >  M.
