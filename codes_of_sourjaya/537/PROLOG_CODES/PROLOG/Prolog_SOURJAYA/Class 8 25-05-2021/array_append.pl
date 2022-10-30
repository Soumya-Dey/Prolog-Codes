append_array([], X, X) :- !.
append_array([H|L1], L2, [H|L3]) :- append(L1, L2, L3).
