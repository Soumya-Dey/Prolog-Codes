/*
Soumya Dey
Roll - 704
Semester - VI
*/

%Question - 1
%Write a PROLOG program to print "PROLOG in Artificial Intelligence" N times.
main(X, N):- X =:= N, write('PROLOG in Artificial Intelligence'),nl.
main(X, N):- X < N, write('PROLOG in Artificial Intelligence'), nl,Y is X +1, main(Y,N).
main(N):- main(1,N).

%Question - 2
% Write a PROLOG program to find sum of numbers ranging from 1 to N without using any formula.
sum(X, Y, N):- X > N, write('Sum is '),write(Y),nl.
sum(X, Y, N):- X =< N, Z is Y+X, A is X+1 ,sum(A,Z,N).
sum(N):- sum(1,0,N).

%Question - 3
%Write a PROLOG program to find sum of A.P series ranging from X to Y with common difference D without using any formula.
ap_sum(X,Y,_,S):- X > Y, write('Sum of AP is '),write(S),nl.
ap_sum(X,Y,D,S):- X =< Y, Z is X + D,A is S + X , ap_sum(Z,Y,D,A).
ap_sum(X,Y,D):- ap_sum(X, Y, D, 0).


%Question - 4
%Write a PROLOG program to find sum of G.P series ranging from X to Y with common divisor D without using any formula.
gp(X,Y,_,S):- X > Y, write('Sum of GP is '),write(S),nl.
gp(X,Y,D,S):- X =< Y, Z is X * D,A is S + X , gp(Z,Y,D,A).
gp(X,Y,D):- gp(X, Y, D, 0).

%Question - 5
% Write a PROLOG program to determine the factorial of a given number.
factorial(1,F):- write('Factorial is '),write(F),nl. 
factorial(N,A) :-  
    N > 0, 
    A1 is N*A, 
    N1 is N -1, 
    factorial(N1,A1). 

factorial(N):- factorial(N,1).

%Question - 6
%Write a PROLOG program to determine the n-th Fibonacci number.
fibonacci(A,_,N):- N=:=1, write(A).
fibonacci(A,B,N):- C is A+B, N1 is N-1, fibonacci(B,C,N1).
fibonacci(N):- fibonacci(0,1,N).
  

%Question - 7
%Write a PROLOG program to find GCD of two numbers.
gcd(M,N,X):- N =:=0, write('GCD is '),write(M).
gcd(M, N, X) :- N>=M, Y is N-M, gcd(M, Y, X).
gcd(M, N, X) :- N<M, Y is M-N, gcd(Y, N, X).
gcd(M,N):- gcd(M,N,_).


%Question - 8
%Write a PROLOG program to solve the problem Towers of Hanoi.
move(1,X,Y,_) :-
   write('Move top disk from '), write(X), write(' to '), write(Y), nl.
move(N,X,Y,Z) :-
   N>1,
   M is N-1,
   move(M,X,Z,Y),
   move(1,X,Y,_),
   move(M,Z,Y,X).