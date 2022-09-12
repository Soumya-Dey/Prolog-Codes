% max in a list
maxInList([], M):- write('Max = '), write(M), nl.
maxInList([H|T], M):- H >= M, maxInList(T, H).
maxInList([H|T], M):- H < M, maxInList(T, M).
maxInList(L):- maxInList(L, 0).

% linear search
linearSearch([], K):- write(K), write(' is not found in the list').
linearSearch([H|T], K):- H =:= K, write(K), write(' exists in the list').
linearSearch([H|T], K):- H \= K, linearSearch(T, K).

% length of list
len([], 0).
len([H|T], L):- len(T, L1), L is L1 + 1.

evenOrOddLen([]):- write('List length is 0'), !.
evenOrOddLen(List):- len(List, L), L1 is L mod 2, L1 \= 0, write('Odd length list').
evenOrOddLen(List):- len(List, L), L1 is L mod 2, L1 =:= 0, write('Even length list').

% sum of list elements
sum([], 0).
sum([H|T], S):- sum(T, S1), S is S1 + H.

% add to begining
unshift(A, L, [A|L]).

% reverse a list
% 3rd arg is the temp list, traversing the list in 1st arg and putting the items from head one by one to the temp list, at the end putting the temp list at the 2nd arg, which is the returned reversed list
reverse([],Z,Z).
reverse([H|T],Z,Acc):- reverse(T,Z,[H|Acc]).

% list subset
list_subset([],[]).
list_subset([Head|Tail],[Head|Subset]) :- list_subset(Tail,Subset).
list_subset([Head|Tail],Subset) :- list_subset(Tail,Subset).

% list union
list_member(X,[X|TAIL]).
list_member(X,[Head|TAIL]) :- list_member(X,TAIL).

% if X is a member of Z, then merge the lists without X
list_union([X|Y],Z,W) :- list_member(X,Z),list_union(Y,Z,W).
% if X is not a member of Z, then merge the lists with X as the head
list_union([X|Y],Z,[X|W]) :- \+ list_member(X,Z), list_union(Y,Z,W).
list_union([],Z,Z).

% list intersection
% if X is not a member of Z, then merge the lists with X as the head
list_intersect([X|Y],Z,[X|W]) :-
   list_member(X,Z), list_intersect(Y,Z,W).
% if X is a member of Z, then merge the lists without X
list_intersect([X|Y],Z,W) :-
   \+ list_member(X,Z), list_intersect(Y,Z,W).
list_intersect([],Z,[]).