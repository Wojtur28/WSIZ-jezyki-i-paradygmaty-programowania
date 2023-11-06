lubi(pawel,grac).
lubi(magda,czytac).
lubi(jan,spac).

wiek(pawel,15).
wiek(magda,30).
wiek(jan,30).

starszy(Osoba1,Osoba2):-
    wiek(Osoba1,Osoba1Wiek),
    wiek(Osoba2,Osoba2Wiek),
    Osoba1Wiek>Osoba2Wiek.

mlodszy(Osoba1,Osoba2):-
    wiek(Osoba1,Osoba1Wiek),
    wiek(Osoba2,Osoba2Wiek),
    Osoba1Wiek<Osoba2Wiek.

rowny(Osoba1,Osoba2):-
    wiek(Osoba1,Osoba1Wiek),
    wiek(Osoba2,Osoba2Wiek),
    Osoba1Wiek=:=Osoba2Wiek.

