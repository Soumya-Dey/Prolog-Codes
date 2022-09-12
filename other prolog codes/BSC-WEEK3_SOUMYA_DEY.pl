/*
Soumya Dey
Roll - 704
Semester - VI
*/

%Question - 1
%Write a Prolog program to implement maxlist(List, Max) so that Max returns the largest number in the list of numbers List (using CUT and without using CUT).
maxlist([],Max):- write('The maximum element in list is '),write(Max),nl.
maxlist([H|T],Max):-
	H > Max,
	M is H,
	maxlist(T,M).

maxlist([H|T],Max):-
	H =< Max,
	maxlist(T,Max).

%Question - 2
%Write a Prolog program to implement sumlist(List,Sum) so that Sum returns the sum of a given list of numbers List.
sumlist([],R):- write('Sum of elements is '),write(R),nl.
sumlist([H|T],R):- S is R + H, sumlist(T,S).

%Question - 3
%Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.
evenlength([]).
evenlength([H1|[H2|T]]):- evenlength(T).

oddlength(L):- \+ evenlength(L).

%Question - 4
%Write a Prolog program to implement reverse(List,ReversedList) that reverses a list.
reverse([],Z,Z).
reverse([H|T],Z,Acc):- reverse(T,Z,[H|Acc]).

%Question - 5
%Write a Prolog program to implement palindrome(List).
equallist([],[]):-write('List is a Palindrome').
equallist([H|T],[U|V]):- H =:= U,equallist(T,V).
equallist([H|_],[U|_]):- H \= U,write('List is not a Palindrome').
palindrome(L):- reverse(L,Z,[]), equallist(L,Z).

%Question - 6
%Write a Prolog program to append for two lists.
listappend([], X, X).                                  
listappend([X | Y], Z, [X | W]) :- listappend( Y, Z, W).

%Question - 7
%Write a Prolog program, remove(Before, After, Item) that generates a new list “After” after the removal of “Item” from the list “Before” at all locations.
removeAll([], [],_).
removeAll([X|T],L, X):- removeAll(T,L, X), !.
removeAll([H|T], [H|L],X):- removeAll(T,L,X ).

%Question - 8
%Write a Prolog program, insert_nth(item, n, into_list, result) that generates a new list “result” after inserting nth element into the list “into_list”.
insert_nth(Element,0,L,[Element|L]). 
insert_nth(Element,Pos,[E|L],[E|ZL]):-
    Pos1 is Pos-1,
    insert_nth(Element,Pos1,L,ZL).

%Question - 9
%Write a Prolog program to remove the N-th item from a list.
removeN(1,[_|T],T).
removeN(P,[X|Y],[X|R]):-
 P1 is P-1,
 removeN(P1,Y,R).

%Question - 10
%Write a Prolog program that compares two lists and returns the number of locations where they differ (element wise).
diffList([], [], 0).
diffList([H|T1], [H|T2], X):- diffList(T1, T2, X), !.
diffList([H1|T1], [H2|T2], X):- diffList(T1, T2, X1), X is X1 + 1.