maxArray([X|T]):- max(T,X).
max([X|T],MAX):- X>=MAX, MAX1 is X, max(T,MAX1) ; max(T,MAX).
max([],M):- write('Maximum element is:'),write(M),nl.

minArray([X|T]):- min(T,X).
min([X|T],MIN):- X=<MIN, MIN1 is X, min(T,MIN1) ; min(T,MIN).
min([],MIN):- write('Minimum element is:'),write(MIN),nl.

max_min([X|T]):-maxArray([X|T]),minArray([X|T]).
