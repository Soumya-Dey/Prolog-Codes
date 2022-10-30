gcd(X,Y,X):- X is Y.
gcd(X,0,X).
gcd(0,Y,Y).
gcd(X,Y,T):-X>0,Y>0,X1 is X,Y1 is Y, R is mod(X1,Y1),gcd(Y1,R,T).
