menu :-
    write('Wybierz rodzaj zaciąganego kredytu (1, 2):'), nl,
    write('1. Kredyt gotówkowy'), nl,
    write('2. Kredyt hipoteczny'), nl,
    read(RodzajKredytu),
    przetwarzaj_odpowiedzi(RodzajKredytu).

przetwarzaj_ozdpowiedzi(1) :-
    zapytaj_o_ryzyko_kredytowe_gotowkowe.
przetwarzaj_odpowiedzi(2) :-
    zapytaj_o_ryzyko_kredytowe_hipoteczne.

ocena_ryzyka_kredytowego_gotowkowego(Dochody, Wydatki, WiarygodnoscKredytowa, Wiek, StanCywilny, Wyksztalcenie, StatusMieszkaniowy, RodzajPracy, OkresZatrudnienia, LiczbaRachunkow, LiczbaKart, ProgramyOszczednosciowe, Ocena) :-
    Dochody - Wydatki > 1500,
    WiarygodnoscKredytowa = dobra,
    Wiek > 25, Wiek < 60,
    (StanCywilny = zamezny; StanCywilny = zamezna),
    Wyksztalcenie = wyzsze,
    StatusMieszkaniowy = wlasny_dom,
    RodzajPracy = umowa_o_prace,
    OkresZatrudnienia > 3,
    LiczbaRachunkow > 1,
    LiczbaKart > 1,
    ProgramyOszczednosciowe = tak, ProgramyOszczednosciowe = nie,
    Ocena = niskie_ryzyko.

ocena_ryzyka_kredytowego_gotowkowego(Dochody, Wydatki, WiarygodnoscKredytowa, Wiek, StanCywilny, Wyksztalcenie, StatusMieszkaniowy, RodzajPracy, OkresZatrudnienia, LiczbaRachunkow, LiczbaKart, ProgramyOszczednosciowe, Ocena) :-
    Dochody - Wydatki > 1000,
    WiarygodnoscKredytowa \= zla,
    Wiek > 18, Wiek < 70,
    Wyksztalcenie \= podstawowe,
    StatusMieszkaniowy \= bezdomny,
    (StanCywilny = kawaler; StanCywilny = panna; StanCywilny = zamezna; StanCywilny = zamezny),
    (RodzajPracy = umowa_o_prace; RodzajPracy = umowa_zlecenie; RodzajPracy = umowa_o_dzielo),
    OkresZatrudnienia > 1,
    LiczbaRachunkow > 0,
    LiczbaKart > 0,
    (ProgramyOszczednosciowe = tak; ProgramyOszczednosciowe = nie),
    Ocena = srednie_ryzyko.

ocena_ryzyka_kredytowego_gotowkowego(_, _, _, _, _, _, _, _, _, _, _, _, _, Ocena) :-
    Ocena = wysokie_ryzyko.

ocena_ryzyka_kredytowego_hipoteczny(Dochody, Wydatki, WiarygodnoscKredytowa, Wiek, _, _, _, _, OkresZatrudnienia, LiczbaRachunkow, LiczbaKart, _, Ocena) :-
    Dochody - Wydatki > 800,
    WiarygodnoscKredytowa \= zla,
    Wiek > 18, Wiek < 70,
    OkresZatrudnienia > 1,
    LiczbaRachunkow > 0,
    LiczbaKart > 0,
    Ocena = niskie_ryzyko.
    
ocena_ryzyka_kredytowego_hipoteczny(Dochody, Wydatki, _, Wiek, _, _, _, _, _, _, _, _, _, Ocena) :-
    Dochody - Wydatki > 500,
    Wiek > 18, Wiek < 70,
    Ocena = srednie_ryzyko.

ocena_ryzyka_kredytowego_hipoteczny(_, _, _, _, _, _, _, _, _, _, _, _, _, Ocena) :-
    Ocena = wysokie_ryzyko.

zapytaj_o_ryzyko_kredytowe_gotowkowe :-
    write('Podaj miesięczne dochody: '), read(Dochody),
    write('Podaj miesięczne wydatki: '), read(Wydatki),
    write('Jak jest Twoja wiarygodność kredytowa (dobra/zła/brak): '), read(WiarygodnoscKredytowa),
    write('Podaj swój wiek: '), read(Wiek),
    write('Jaki jest Twój stan cywilny (kawaler/panna/zamężna/zamezny): '), read(StanCywilny),
    write('Jakie jest Twoje wykształcenie (podstawowe/srednie/wyzsze)? '), read(Wyksztalcenie),
    write('Jaki jest Twój status mieszkaniowy (wlasny_dom/wynajem/inny)? '), read(StatusMieszkaniowy),
    write('Jaki jest Twój rodzaj pracy (umowa_o_prace/umowa_zlecenie/umowa_o_dzielo)? '), read(RodzajPracy),
    write('Jaki jest Twój okres zatrudnienia w obecnej firmie (w latach)? '), read(OkresZatrudnienia),
    write('Ile rachunków bankowych posiadasz? '), read(RachunkiBankowe),
    write('Ile kart płatniczych posiadasz? '), read(KartyPlatnicze),
    write('Czy uczestniczysz w programach oszczędnościowych (tak/nie)? '), read(ProgramyOszczednosciowe),
    ocena_ryzyka_kredytowego_gotowkowego(Dochody, Wydatki, WiarygodnoscKredytowa, Wiek, StanCywilny, Wyksztalcenie, StatusMieszkaniowy, RodzajPracy, OkresZatrudnienia, RachunkiBankowe, KartyPlatnicze, ProgramyOszczednosciowe, Ocena),
    write('Twoje ryzyko kredytowe to: '), write(Ocena), nl.

zapytaj_o_ryzyko_kredytowe_hipoteczne :-
    write('Podaj miesięczne dochody: '), read(Dochody),
    write('Podaj miesięczne wydatki: '), read(Wydatki),
    write('Jak jest Twoja wiarygodność kredytowa (dobra/zła/brak): '), read(WiarygodnoscKredytowa),
    write('Podaj swój wiek: '), read(Wiek),
    write('Jaki jest Twój okres zatrudnienia w obecnej firmie (w latach)? '), read(OkresZatrudnienia),
    write('Ile rachunków bankowych posiadasz? '), read(LiczbaRachunkow),
    write('Ile kart płatniczych posiadasz? '), read(LiczbaKart),
    ocena_ryzyka_kredytowego_hipoteczny(Dochody, Wydatki, WiarygodnoscKredytowa, Wiek, _, _, _, _, OkresZatrudnienia, LiczbaRachunkow, LiczbaKart, _, Ocena),
    write('Twoje ryzyko kredytowe to: '), write(Ocena), nl.

:- menu.
