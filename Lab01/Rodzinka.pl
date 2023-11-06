parent( pam, bob).       % Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female( pam).            % Pam is female
female( liz).
female( ann).
female( pat).

male( jim).
male( tom).              % Tom is male
male( bob).

child(Dziecko,Rodzic):-
    parent(Rodzic,Dziecko).

mother(Matka,Dziecko):-
    parent(Matka,Dziecko),
    female(Matka).

grandparent(Dziadek,Wnuk):-
    parent(Dziadek,Z),
    parent(Z,Wnuk).

sister(Siostra,Ktos):-
    parent(Rodzic,Siostra),
    parent(Rodzic,Ktos),
    female(Siostra).

precessor(Przodek,Potomek):-
    parent(Przodek,Potomek).

precessor(Przodek,Potomek):-
    parent(Z,Potomek),
    precessor(Przodek,Z).


