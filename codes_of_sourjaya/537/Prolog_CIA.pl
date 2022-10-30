%CIA_Q2_rotate_left_kth_times
count([],0).
count([_|T],C):-count(T,C1),C is C1+1.

append_list([],R,R).
append_list([H|L1],L2,[H|L3]):-append_list(L1,L2,L3).

rotate([],_,[]).
rotate([H|T],N,R):-count([H|T],C),N<0,N1 is C+N,rotate_n([H|T],N1,R).
rotate([H|T],N,R):-count([H|T],C),N>=0,rotate_n([H|T],N,R).

rotate_1([],[]).
rotate_1([H|T],X):-append_list(T,[H],X).

rotate_n([H|T],N,R):-N>0,N1 is N-1,rotate_1([H|T],R1),rotate_n(R1,N1,R).
rotate_n(L,0,L).

%CIA_Q1_find_median
count_median([],0).
count_median([_|T],C):-count_median(T,C1),C is C1+1.

median([],0).
median([H|T],X):-count_median([H|T],R),R mod 2=:=0,R1 is R/2,median_even([H|T],R1,X).
median([H|T],X):-count_median([H|T],R),R mod 2\=0,R1 is ceiling(R/2),median_odd([H|T],R1,X).

median_even([H|T],N,X):-N>1,N1 is N-1,median_even(T,N1,X).
median_even([H,H1|T],1,X):-H2 is H1+H,X is H2/2.

median_odd([H|T],N,X):-N>1,N1 is N-1,median_odd(T,N1,X).
median_odd([H|T],1,H).
