d³ugoœæ(kontener1, 20).
d³ugoœæ(kontener2, 25).

szerokoœæ(kontener1,30).
szerokoœæ(kontener2,9).

wysokoœæ(kontener1, 15).
wysokoœæ(kontener2, 10).

objetosc(Kontener, Wynik):-
    d³ugoœæ(Kontener, X),
    szerokoœæ(Kontener, Y),
    wysokoœæ(Kontener, Z),
    Wynik is X * Y * Z.
