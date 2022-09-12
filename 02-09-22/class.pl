max2(A, B, A):- A > B, !.
max2(A, B, B):- B >= A.

min2(A, B, A):- A < B, !.
min2(A, B, B):- A >= B.

% remove duplicates
list_member(X,[X|T]).
list_member(X,[H|T]) :- list_member(X,T).

remove_dup([], []).
remove_dup([H|T], L):- list_member(H, T), remove_dup(T, L).
remove_dup([H|T], [H|T1]):- remove_dup(T, T1).

% Predicate - Fail
father(leonard, katherine).
father(jack, cristine).
father(leonard, jane).
list_dads:- father(X, Y), write(X), write(" is "), write(Y), write("s father\n"), fail.

% append to list
appendList([], L, L).
appendList([H|T], L, [H|T1]):- appendList(T, L, T1).