insert_sort(List,S):- i_sort(List,[],S).
i_sort([],A,A).
i_sort([H|T],A,S):-insert(H,A,NA),i_sort(T,NA,S).
insert(X,[],[X]).
insert(X,[Y|T],[Y|NT]):-X>Y,insert(X,T,NT).
insert(X,[Y|T],[X,Y|T]):-X=<Y.


mid([H|T],M):-mid_ele([H|T],[H|T],0,M).
mid_ele([H|L],[A|B],C,M):- C>0, Q is mod(C,2), Q=:=0, C1 is C+1, mid_ele(L,B,C1,M); C1 is C+1, mid_ele(L,[A|B],C1,M).
mid_ele([],[A|B],C,A).

search([H|T])
