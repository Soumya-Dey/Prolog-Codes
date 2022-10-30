max(X,Y,Z,MAX):-X is Y, Y is Z, MAX is X.
max(X,Y,Z,MAX):-X>Y,X>Z, MAX is X;Y>X,Y>Z, MAX is Y;Z>X,Z>Y, MAX is Z.

min(X,Y,Z,MIN):-X is Y, Y is Z ,MIN is X.
min(X,Y,Z,MIN):-X<Y,X<Z, MIN is X;Y<X,Y<Z, MIN is Y;Z<X,Z<Y, MIN is Z.

max_min(X,Y,Z,MAX,MIN):- max(X,Y,Z,MAX), min(X,Y,Z,MIN).
