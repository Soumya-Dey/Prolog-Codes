% 1. length of a list
len([], 0).
len([H|T], L):- len(T, L1), L is L1 + 1.

% 2. sum of list elements
sum([], 0).
sum([H|T], S):- number(H), sum(T, S1), S is S1 + H.
sum([H|T], S):- not(number(H)), sum(T, S).

% 3. sum of even elements
sumeven([], 0).
sumeven([H|T], S):- R is H mod 2, R =:= 0, sumeven(T, S1), S is S1 + H.
sumeven([H|T], S):- R is H mod 2, R \= 0, sumeven(T, S).

% 4. find whether a element is present in a list or not
isPresent([], 0).
isPresent([H|T], H):- !.
isPresent([H|T], X):- isPresent(T, X).

% 5. find the position of an element in list
find([H|T], H, C):- C is 1.
find([H|T], K, C):- find(T, K, C1),  C is C1 + 1.

% 6. find the position of an element in list
occurance([], K, C):- C is 0.
occurance([H|T], H, C):- occurance(T, H, C1), C is C1 + 1.
occurance([H|T], K, C):- occurance(T, K, C).

% 7. find the max element in a list
maxInList([], M):- write('Max = '), write(M), nl.
maxInList([H|T], M):- H >= M, maxInList(T, H).
maxInList([H|T], M):- H < M, maxInList(T, M).
maxInList(L):- maxInList(L, 0).

% 8. find the min element in a list
minInList([], M):- write('Min = '), write(M), nl.
minInList([H|T], M):- H =< M, minInList(T, H).
minInList([H|T], M):- H > M, minInList(T, M).
minInList([H|T]):- minInList(T, H).

% 9. avg of integers in list
lenint([], 0).
lenint([H|T], L):- integer(H), lenint(T, L1), L is L1 + 1.
lenint([H|T], L):- not(integer(H)), lenint(T, L).

sumint([], 0).
sumint([H|T], S):- integer(H), sumint(T, S1), S is S1 + H.
sumint([H|T], S):- not(integer(H)), sumint(T, S).

avgint(L, A):- sumint(L, S), lenint(L, C), A is S / C.

% 10. avg of numbers in list
lennum([], 0).
lennum([H|T], L):- number(H), lennum(T, L1), L is L1 + 1.
lennum([H|T], L):- not(number(H)), lennum(T, L).

avgnum(L, A):- sum(L, S), lennum(L, C), A is S / C.