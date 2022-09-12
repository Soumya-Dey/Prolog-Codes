% 1. Set difference
listMember(X,[X|T]):- !.
listMember(X,[H|T]) :- listMember(X,T).

listDiff([X|Y],Z,W) :- listMember(X,Z),listDiff(Y,Z,W).
listDiff([X|Y],Z,[X|W]) :- \+ listMember(X,Z), listDiff(Y,Z,W).
listDiff([],Z,[]).

% 2. frequency of each element
occurance([], K, C):- C is 0.
occurance([H|T], H, C):- occurance(T, H, C1), C is C1 + 1.
occurance([H|T], K, C):- occurance(T, K, C).

dropDup([], []).
dropDup([H|T], [H|T1]) :- listDiff(T,[H],T2), dropDup(T2,T1).

elementFreq(_, [], []).
elementFreq(L, [H|T], [[H, C]|T1]):- occurance(L, H, C), write("Frequency of "), write(H), write(" is "), write(C), nl, elementFreq(L, T, T1).
elementFreq(L, F):- dropDup(L, D), elementFreq(L, D, F).

% 3. mode of list
maxInList([], K, MKey, M):- M is MKey, nl, write("Mode of the list is "), write(MKey).
maxInList([[Key, H]|T], K, MKey, M):- H >= K, maxInList(T, H, Key, M).
maxInList([[Key, H]|T], K, MKey, M):- H < K, maxInList(T, K, MKey, M).
maxInList(L, M):- maxInList(L, 0, 0, M).

mode(L, M):- elementFreq(L, F), maxInList(F, M).