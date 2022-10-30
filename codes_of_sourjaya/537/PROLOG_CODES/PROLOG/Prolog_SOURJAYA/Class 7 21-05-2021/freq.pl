frequency([X|T],KEY):-frequency([X|T],KEY,0).
frequency([],_,C):-write('Frequency of element is '),write(C).
frequency([X|T],KEY,C):- X =:= KEY,C1 is C+1,frequency(T,KEY,C1);frequency(T,KEY,C).
