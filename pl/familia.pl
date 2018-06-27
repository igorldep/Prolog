pai(igor, mauro).
pai(cristina, luciano).
pai(mauro, antonio).

mae(igor, cristina).
mae(mauro, marta).
mae(cristina, laura).

avo(X, A) :- pai(X, P), pai(P, A).
avo(X, A) :- pai(X, P), mae(P, A).
avo(X, A) :- mae(X, M), pai(M, A).
avo(X, A) :- mae(X, M), mae(M, A).

avos(X, R) :- findall(A, avo(X, A), R).
