zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(adam, kowalski, dino, mala_firma, 2000).
zatrudnienie(pawel, slazak, wsiz, srednia_firma, 2500).
zatrudnienie(weronika, kozak, zelmer, duza_firma, 10000).
zatrudnienie(agnieszka, krajewska, dino, mala_firma, 5000).
zatrudnienie(maciej, dwojak, wsiz, srednia_firma, 3000).

zadowolona(Osoba):-
    zatrudnienie(Osoba, _, _, mala_firma, Zarobki), Zarobki > 2500.

