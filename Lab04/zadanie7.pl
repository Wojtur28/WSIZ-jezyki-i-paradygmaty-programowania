usun(E, [E|Ogon], Ogon).
usun(E, [G|O1], [G|O2]) :- usun(E, O1, O2).
