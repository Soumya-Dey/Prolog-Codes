

count([],K,F):-write('Frequency of '), write(K), write(' is '), write(F), nl.
count([X|T],K,F):-X =:= K, F1 is F+1, count(T,K,F1).
count([X|T],K,F):-X =\= K, count(T,K,F).

freqall([]).
freqall([X|T]):-F is 1, count(T,X,F), rem(T,X,N), freqall(N).

rem([],_,_).
rem([X|T],K,N):-X=:=K, rem(T,K,N).
rem([X|T],K,[D|N]):-X=\=K, D is X, rem(T,K,N).
