
fact(X,1):- X is 0.
%fact(0,1).
fact(X,Y):-X>0, F is X-1, fact(F,F1), Y is F1*X.

