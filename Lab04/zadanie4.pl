dlugosc([], 0).
dlugosc([_|Ogon], Dlugosc) :-
    dlugosc(Ogon, DlugoscOgona),
    Dlugosc is DlugoscOgona + 1.
