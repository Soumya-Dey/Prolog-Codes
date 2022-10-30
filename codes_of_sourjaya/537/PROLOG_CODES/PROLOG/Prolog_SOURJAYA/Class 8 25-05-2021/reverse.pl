a_reverse([],R,R).
a_reverse([X|T],H,R):-a_reverse(T,[X|H],R).



%a_reverse([],H,H).
%a_reverse([X|T],H):-a_reverse(T,[X|H],H).
