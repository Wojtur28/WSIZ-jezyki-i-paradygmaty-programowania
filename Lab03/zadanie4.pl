d�ugo��(kontener1, 20).
d�ugo��(kontener2, 25).

szeroko��(kontener1,30).
szeroko��(kontener2,9).

wysoko��(kontener1, 15).
wysoko��(kontener2, 10).

objetosc(Kontener, Wynik):-
    d�ugo��(Kontener, X),
    szeroko��(Kontener, Y),
    wysoko��(Kontener, Z),
    Wynik is X * Y * Z.
