pisz_liste([]) :- !.
pisz_liste([Glowa|Ogon]) :-
    write(Glowa), nl,
    pisz_liste(Ogon).
