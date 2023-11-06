osoba(maciej, piotr, krystyna, mezczyzna, 22).
osoba(marta, piotr, krystyna, kobieta, 24).
osoba(marzena, piotr, krystyna, kobieta, 28).
osoba(krystyna, tadeusz, karolina, kobieta, 50).
osoba(piotr, marek, teresa, mezczyzna, 52).

rodzenstwo(Osoba1, Osoba2):-
    osoba(Osoba1, Tata, Mama, _, _),
    osoba(Osoba2, Tata, Mama, _, _).

siostry(Osoba1, Osoba2):-
    osoba(Osoba1, Tata, Mama, kobieta, _),
    osoba(Osoba2, Tata, Mama, kobieta, _).

bracia(Osoba1, Osoba2):-
    osoba(Osoba1, Tata, Mama, mezczyzna, _),
    osoba(Osoba2, Tata, Mama, mezczyzna, _).

siostra(Osoba1, Osoba2):-
    osoba(Osoba1, Tata, Mama, kobieta, _),
    osoba(Osoba2, Tata, Mama, _, _).

brat(Osoba1, Osoba2):-
    osoba(Osoba1, Tata, Mama, mezczyzna, _),
    osoba(Osoba2, Tata, Mama, _, _).
