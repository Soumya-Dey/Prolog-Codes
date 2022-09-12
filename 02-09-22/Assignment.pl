% 1. append to list
appendList([], L, L).
appendList([H|T], L, [H|T1]):- appendList(T, L, T1).

% 2. delete first
delFirst([H|T], T).

% 3. delete last
delLast([], []).
delLast([H|[]], []).
delLast([H|T], [H|T1]):- delLast(T, T1).

% 4. insert at the begining
insertBeg(X, L, R):- appendList([X], L, R).

% 5. union of 2 lists
list_member(X,[X|T]).
list_member(X,[H|T]) :- list_member(X,T).

list_union([X|Y],Z,W) :- list_member(X,Z),list_union(Y,Z,W).
list_union([X|Y],Z,[X|W]) :- \+ list_member(X,Z), list_union(Y,Z,W).
list_union([],Z,Z).

% 6. intersection of 2 lists
list_intersect([X|Y],Z,[X|W]) :-
   list_member(X,Z), list_intersect(Y,Z,W).
list_intersect([X|Y],Z,W) :-
   \+ list_member(X,Z), list_intersect(Y,Z,W).
list_intersect([],Z,[]).