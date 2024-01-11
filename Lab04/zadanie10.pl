dopasuj([], [], []).
dopasuj([G|O1], [P|O2], [G|O3]) :-
    pasuje(G, P),
    dopasuj(O1, O2, O3).

pasuje(G, n) :- number(G).
pasuje(G, a) :- atom(G).
pasuje(G, l) :- is_list(G).
pasuje(_, .).
pasuje(_, *).
