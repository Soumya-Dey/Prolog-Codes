% Insert element into sorted array
insert(X, [], [X]).
insert(X, [H|T], [X,H|T]):- X =< H,!.
insert(X, [H|T1], [H|T2]):- insert(X, T1, T2).

% 1. Insertion Sort
% insertion sort. 1st agr: unsorted array, 2nd arg: sorted array
insertionSort([], []).
insertionSort([H|T], S):- insertionSort(T, S1), insert(H, S1, S).

% 2. Selection Sort
% min of list
min(M, [], M).
min(M, [H|T], M1):- M =< H, min(M, T, M1).
min(M, [H|T], M1):- min(H, T, M1).

% delete element from list
delete(_, [], []).
delete(H, [H|T], R):- !, delete(H, T, R).
delete(X, [H|T], [H|R]):- delete(X, T, R).

% selection sort. 1st agr: unsorted array, 2nd arg: sorted array
selectionSort([], []).
selectionSort([H|T], [M1|S]):- min(H, T, M1), delete(M1, [H|T], N), selectionSort(N, S).

% merge 2 sorted array
merge([], [], []).
merge([X], [], [X]).
merge([], [X], [X]).
merge([H|T], [H1|T1], [H|T2]):- H =< H1, merge(T, [H1|T1], T2).
merge([H|T], [H1|T1], [H1|T2]):- merge([H|T], T1, T2).
