rzeczownik(kot).
rzeczownik(blok).
rzeczownik(dom).
rzeczownik(pies).
rzeczownik(ksiazka).

czasownik(czyta).
czasownik(gryzie).
czasownik(zaczepia).

przymiotnik(gruby).
przymiotnik(glupi).
przymiotnik(ladny).

poprawna_skladnia(Przymiotnik1,Rzeczownik1,Czasownik1,Przymiotnik2,Rzeczownik2):-
    przymiotnik(Przymiotnik1),
    rzeczownik(Rzeczownik1),
    czasownik(Czasownik1),
    przymiotnik(Przymiotnik2),
    rzeczownik(Rzeczownik2).
