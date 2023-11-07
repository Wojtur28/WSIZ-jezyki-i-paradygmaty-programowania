rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).

kobieta(zofia).
kobieta(kasia).
kobieta(ania).

m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).

potomek(Potomek,Przodek):-
	rodzic(Przodek,Potomek).

matka(Matka,Dziecko):-
	rodzic(Matka,Dziecko),
	kobieta(Matka).

dziadkowie(Dziadek,Wnuk):-
	rodzic(Dziadek,Y),
	rodzic(Y,Wnuk).

siostra(Siostra,Rodzenstwo):-
	rodzic(Z,Siostra),
	rodzic(Z,Rodzenstwo),
	kobieta(Siostra).

szczesliwy(Ktos):-
	rodzic(Ktos,_).

dwoje_dzieci(Ktos):-
	rodzic(Ktos,Dziecko),
	siostra(Dziecko, _).

wnuk(Wnuk,Dziadek):-
	rodzic(Dziadek, X),
	rodzic(X, Wnuk).

ciotka(Ciotka, Dziecko):-
	rodzic(X, Dziecko),
	siostra(Ciotka, X).

nastepca(Potomek, Przodek):-
	rodzic(Przodek, Potomek).
nastepca(Potomek, Przodek):-
	rodzic(X, Potomek),
	nastepca(X, Przodek).



