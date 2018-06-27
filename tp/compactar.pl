compactar([], []).
compactar([X], [[1,X]]).
compactar([X,X|L1], [[N,X]|L2]) :- compactar([X|L1], [[Z,X]|L2]), N is Z+1.
compactar([X,Y|L1],[[1,X]|L2]) :- X \== Y, compactar([Y|L1], L2).

