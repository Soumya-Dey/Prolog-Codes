%max_of_two_numbers
max(A,B,M):-A>B,M is A.
max(A,B,M):-B>=A,M is B.
%min_of_two_numbers
min(A,B,M):-A<B,M is A.
min(A,B,M):-B=<A,M is B.
%max_of_3_numbers
maximum(A,B,C,Z):-A>=B,A>C,Z is A.
maximum(A,B,C,Z):-B>A,B>=C,Z is B.
maximum(A,B,C,Z):-C>=A,C>B,Z is C.
maximum(A,B,C,Z):-A is B,B is C,Z is C.
%min_of_3_numbers
minimum(A,B,C,Z):-A=<B,A<C,Z is A.
minimum(A,B,C,Z):-B<A,B=<C,Z is B.
minimum(A,B,C,Z):-C=<A,C<B,Z is C.
minimum(A,B,C,Z):-A is B,B is C,Z is C.
%sum_of_n_natural_numbers
sum(0,0).
sum(N,S):-N>0,N1 is N-1,sum(N1,S1),S is N+S1.
%sum_of_first_n_even_numbers
sum_even(0,0).
sum_even(N,S):-N>0,N1 is N*2,Z is N-1,sum_even(Z,S1),S is N1+S1.
%sum_of_squares_of_first_n_natural_numbers
sum_sq(0,0).
sum_sq(N,S):-N>0,N1 is N-1,sum_sq(N1,S1),P is N*N,S is P+S1.
%factorial
factorial(0,1).
factorial(A,Z):-A>0,F is A-1,factorial(F,F1),Z is F1*A.
%sum_of_first_n_fibonacci_numbers
fib(1,1).
fib(2,1).
fib(A,Z):-A1 is A-1,fib(A1,F1),A2 is A-2,fib(A2,F2),Z is F1+F2.
sum_fib(0,0).
sum_fib(N,S):-N>0,N1 is N-1,sum_fib(N1,S1),fib(N,S2),S is S2+S1.
%factorial_series
sum_fact(0,0).
sum_fact(N,S):-N>0,N1 is N-1,sum_fact(N1,S1),factorial(N,S2),S is S2+S1.
%Display_n_terms_of_fibonacci_series
fibo(N):-N is 0,write('Nothing to print').
fibo(N):-N is 1,write('1').
fibo(N):-N is 2,write('1'),nl,write('1').
fibo(N):-N>2,write('1'),nl,write('1'),nl,fibonacci(N-2,1,1).
fibonacci(N,A,B):-N>0,C is A+B,write(C),nl,A1 is B,B1 is C,N1 is N-1,fibonacci(N1,A1,B1).
%Tower_of_Hanoi
hanoi(S,D,A,1):-write("Move Disk1"),write(" from Rod-"),write(S),write("to Rod-"),write(D),nl.
hanoi(S,D,A,N):-N1 is N-1,hanoi(S,A,D,N1),write("Move Disk"),write(N),write(" from Rod-"),write(S),write("to Rod-"),write(D),nl,N1 is N-1,hanoi(A,D,S,N1).