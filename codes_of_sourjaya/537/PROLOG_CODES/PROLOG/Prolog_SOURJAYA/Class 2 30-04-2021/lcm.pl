lcm(X,Y,T):- lcm1(X,Y,0,T).

lcm1(X,Y,R,T):- R1 is R+1, divchk(X,Y,R1,Q),Q is 0, lcm1(X,Y,R1,T).

lcm1(X,Y,R,T):- R1 is R+1, divchk(X,Y,R1,Q),Q \= 0, T is Q.

divchk(X,Y,R1,Q):- Z is mod(R1,X), Z=0, Z1 is mod(R1,Y), Z1=0, Q is R1.

divchk(X,Y,R1,Q):- Z is mod(R1,X), Z\=0 ; Z1 is mod(R1,Y), Z1\=0, Q is 0.
