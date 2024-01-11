lacz([], L, L).
lacz([G|O1], L2, [G|O3]) :- lacz(O1, L2, O3).
