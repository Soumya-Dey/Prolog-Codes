lcm(X,Y,T):- X is 0,T is 0;Y is 0,T is 0.
lcm(X,Y,T):-lcm1(X,Y,1,T).
lcm1(X,Y,C,T):-X>0,Y>0,R is mod(C,X),R1 is mod(C,Y),R is 0,R1 is 0,T is C ; C1 is C+1, lcm1(X,Y,C1,T).
