fibo(1,0).
fibo(2,1).

fibo(X,Y):-X1 is X-1, fibo(X1,F1),X2 is X-2, fibo(X2,F2),Y is F1+F2.
