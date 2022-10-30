secondMax([X|T]):- max(T,X,0).
max([X|T],M,N):- X>M, N1 is M,M1 is X, max(T,M1,N1); X>N, X\= M,N1 is X, max(T,M,N1) ; max(T,M,N).
max([],_,N):- write('Second Max is:'),write(N).
