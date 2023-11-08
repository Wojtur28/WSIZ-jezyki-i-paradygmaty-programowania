nwd(X,X,X).
nwd(X,Y,Wynik):-
    X<Y,
    Y1 is Y - X,
    nwd(X,Y1,Wynik).
nwd(X,Y,Wynik):-
    Y<X,
    nwd(Y,X,Wynik).
