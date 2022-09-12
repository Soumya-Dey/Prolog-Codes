/*
Soumya Dey
Roll - 704
Semester - VI
*/

%Question - 1
male(jack).
male(oliver).
male(ali).
male(james).
male(simon).
male(harry).
female(helen).
female(sophie).
female(jess).
female(lily).
parent_of(jack,jess).
parent_of(jack,lily).
parent_of(helen, jess).
parent_of(helen, lily).
parent_of(oliver,james).
parent_of(sophie, james).
parent_of(jess, simon).
parent_of(ali, simon).
parent_of(lily, harry).
parent_of(james, harry).
 
father_of(X,Y):- male(X),
    parent_of(X,Y).
 
mother_of(X,Y):- female(X),
    parent_of(X,Y).
 
grandfather_of(X,Y):- male(X),
    parent_of(X,Z),
    parent_of(Z,Y).
 
grandmother_of(X,Y):- female(X),
    parent_of(X,Z),
    parent_of(Z,Y).
 
sister_of(X,Y):-    female(X),
    parent_of(F, Y), parent_of(F, X),X \= Y.
 
 
brother_of(X,Y):- male(X),
    parent_of(F, Y), parent_of(F,X),X \= Y.

aunt_of(X,Y):- female(X),
    parent_of(Z,Y), sister_of(X,Z).

uncle_of(X,Y):- male(X),
    parent_of(Z,Y), brother_of(X, Z).
 
ancestor_of(X,Y):- parent_of(X,Y).
ancestor_of(X,Y):- parent_of(Z,Y),
    ancestor_of(X,Z).
    
%Question - 2
% Write a PROLOG program to calculate the sum of two given numbers.
find_sum(A, B):- R is A + B, write('sum = '), write(R).

%Question - 3
%Write a PROLOG program to calculate the product of three given numbers.
find_product(A, B, C):- R is A * B * C, write('product = '), write(R).

%Question - 4
%Write a PROLOG program to check whether a given number is odd or even.
find_odd_even(A, X):- X =:= 0, write(A), write(' is even').
find_odd_even(A, X):- X =\= 0, write(A), write(' is odd').
odd_even(A):- R is (A mod 2), find_odd_even(A, R).

%Question - 5
%Write a PROLOG program to find the maximum of two given numbers.
max_val(X, Y, X):- X >= Y.
max_val(X, Y, Y):- Y >= X.

%Question - 6
% Write a PROLOG program to find the minimum of three given numbers.
smallest(X, Y, Z, X):- X =< Y, X =< Z.
smallest(X, Y, Z, Y):- Y =< X, Y =< Z.
smallest(X, Y, Z, Z):- Z =< X, Z =< Y.

%Question - 7
%Write a PROLOG program to find maximum difference among three given numbers.
largest(X, Y, Z, X):- X >= Y, X >= Z.
largest(X, Y, Z, Y):- Y >= X, Y >= Z.
largest(X, Y, Z, Z):- Z >= X, Z >= Y.
maxdiff(A, B, C):- X is abs(A-B),
    Y is abs(A-C),
	Z is abs(B-C),
	largest(X, Y, Z, R), write('max difference is '), write(R).
	
%Question - 8
% Write a PROLOG program to find closest two integers among three given integers.
find_ans(A, B, C, X, Y, Z, R):- R =:= X, write(' closest pair is '), write(A), write(' and '), write(B). 
find_ans(A, B, C, X, Y, Z, R):- R =:= Y, write(' closest pair is '), write(A), write(' and '), write(C). 
find_ans(A, B, C, X, Y, Z, R):- R =:= Z, write(' closest pair is '), write(B), write(' and '), write(C). 
closest(A, B, C):- X is abs(A-B),
    Y is abs(A-C),
	Z is abs(B-C),
	smallest(X, Y, Z, R),
	find_ans(A, B, C, X, Y, Z, R).
