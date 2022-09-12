% length of a list
len([], 0).
len([H|T], L):- len(T, L1), L is L1 + 1.

% sum of list elements
sum([], 0).
sum([H|T], S):- number(H), sum(T, S1), S is S1 + H.
sum([H|T], S):- not(number(H)), sum(T, S).