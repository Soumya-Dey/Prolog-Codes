frequency([X|T],KEY):-frequency([X|T],KEY,0).
frequency([],_,C):-write(' is '),write(C),nl.
frequency([X|T],KEY,C):- X =:= KEY,C1 is C+1,frequency(T,KEY,C1);frequency(T,KEY,C).



freq_element([]).
freq_element([X|T]):-write('Frequency of element '),write(X),frequency([X|T],X),rem(T,X,N),freq_element(N).

rem([],_,_).
rem([X|T],K,N):-X=:=K, rem(T,K,N).
rem([X|T],K,[D|N]):-X=\=K, D is X, rem(T,K,N).
