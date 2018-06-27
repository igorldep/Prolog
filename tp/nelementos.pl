nelementos([], 0).
nelementos([_|L], S) :- nelementos(L, S2), S is S2+1.
