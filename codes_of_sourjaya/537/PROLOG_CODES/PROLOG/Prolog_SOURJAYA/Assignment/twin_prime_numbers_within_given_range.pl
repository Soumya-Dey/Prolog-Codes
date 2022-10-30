prime(N):-N<3,N is 2,N1 is N+2,twin_prime(N1);N is 1.
prime(N):-prime(N,2).
prime(N,I):-A is mod(N,I),A is 0;I1 is I+1,I1<ceiling(sqrt(N))+1,prime(N,I1).
prime(N,J):-R is J*J,R>N,N1 is N+2,twin_prime(N1);J1 is J+1,J1<ceiling(sqrt(N))+1,prime(N,J1).

twin_prime(N):-twin_prime(N,2).
twin_prime(N,I):-A is mod(N,I),A is 0;I1 is I+1,I1<ceiling(sqrt(N))+1,twin_prime(N,I1).
twin_prime(N,J):-R is J*J,R>N,M is N-2,write(M),write(','),write(N),nl;J1 is J+1,J1<ceiling(sqrt(N))+1,twin_prime(N,J1).

twin_range(X,Y):-X is Y,write('The twin prime numbers within given range are printed').
twin_range(X,Y):- X < Y,prime(X),X1 is X+1,twin_range(X1,Y).
