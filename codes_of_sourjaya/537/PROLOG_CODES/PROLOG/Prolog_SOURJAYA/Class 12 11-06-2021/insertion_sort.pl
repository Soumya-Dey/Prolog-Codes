insert_sort(List,S):- i_sort(List,[],S).
i_sort([],A,A).
i_sort([H|T],A,S):-insert(H,A,NA),i_sort(T,NA,S).


insert(X,[],[X]).
insert(X,[Y|T],[Y|NT]):-X>Y,insert(X,T,NT).
insert(X,[Y|T],[X,Y|T]):-X=<Y.
