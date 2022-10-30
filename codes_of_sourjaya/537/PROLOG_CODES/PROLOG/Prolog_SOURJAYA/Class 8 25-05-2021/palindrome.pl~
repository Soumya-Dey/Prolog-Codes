a_reverse([],R,R).
a_reverse([X|T],H,R):-a_reverse(T,[X|H],R).

pal_array([X|T]):-a_reverse([X|T],[],R), same(R,[X|T]).

same([], []):-write('palindrome').

same([H1|R1], [H2|R2]):-
    H1 \= H2,write('not palindrome');
    same(R1, R2).
