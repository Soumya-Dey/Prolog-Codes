prime(N):-N<3,N is 2,write(N),nl;N is 1.
prime(N):-prime(N,2).
prime(N,I):-A is mod(N,I),A is 0;I1 is I+1,I1<ceiling(sqrt(N))+1,prime(N,I1).
prime(N,J):-R is J*J,R>N,write(N),nl;J1 is J+1,J1<ceiling(sqrt(N))+1,prime(N,J1).
prime_range(X,Y):-X is Y,write('The prime numbers within given range are printed').
prime_range(X,Y):- X < Y,prime(X),X1 is X+1,prime_range(X1,Y).
