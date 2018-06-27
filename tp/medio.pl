soma([], 0).
soma([X|L], S) :- soma(L,S1), S is X+S1.

nelementos([], 0).
nelementos([_|L], S) :- nelementos(L,S2), S is S2+1.

medio(X, M) :- soma(X,S), nelementos(X,Z), M is S/Z.
