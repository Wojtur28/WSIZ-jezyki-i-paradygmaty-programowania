początek([], _).
początek([G1|O1], [G1|O2]) :- początek(O1, O2).
