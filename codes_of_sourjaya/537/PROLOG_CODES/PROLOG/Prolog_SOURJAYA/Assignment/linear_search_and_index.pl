linearSearch([X|T],KEY):-linearSearch([X|T],KEY,0).
linearSearch([],_,_):-write('Element not found').
linearSearch([X|T],KEY,C):- X =:= KEY,write('Element found'),nl,write('Index of element:'),write(C); C1 is C+1,linearSearch(T,KEY,C1).
