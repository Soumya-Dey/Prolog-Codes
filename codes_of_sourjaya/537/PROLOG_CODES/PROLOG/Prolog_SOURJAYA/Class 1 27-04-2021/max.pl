max(X,Y,Z,T):-X is Y,Y is Z,T is X.
max(X,Y,Z,T):-X>Y,X>Z,T is X;Y>X,Y>Z,T is Y;Z>X,Z>Y,T is Z.
min(X,Y,Z,P):-X is Y,Y is Z,P is X.
min(X,Y,Z,P):-X<Y,X<Z,P is X;Y<X,Y<Z,P is Y;Z<X,Z<Y,P is Z.
