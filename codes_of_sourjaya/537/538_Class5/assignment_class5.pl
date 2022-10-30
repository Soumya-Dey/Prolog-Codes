%append_one_list_behind_another_list
listappend([], X, X).                                  
listappend([X | Y], Z, [X | W]) :- listappend( Y, Z, W).
%delete_first_element_of_the_list
delete_first([_|T],T).
%delete_last_element_of_the_list
del_last([],[],_):-!.
del_last([H|T],R):-del_last(T,R,H).
del_last([H1|T],[H2|T1],H2):-del_last(T,T1,H1).
%delete_last_element_of_the_list_2nd_method
del([],[]).
del([H|[]],[]).
del([H|T],[H|L]):-del(T,T1).
%insert_given_element_in_the_beginning_of_list
insert_list(X,L,R):-listappend([X],L,R).
%union_of_two_lists
member(X,[X|_]).
member(X,[_|T]):-member(X,T).

union([H|T],L2,R):-member(H,L2),union(T,L2,R).
union([H|T],L2,[H|T1]):- \+ member(H,L2),union(T,L2,T1).
union([],T,T).
%intersection_of_two_lists.
intersection([H|T],L2,[H|T1]):-member(H,L2),intersection(T,L2,T1).
intersection([H|T],L2,R):- \+ member(H,L2),intersection(T,L2,R).
intersection([],T,[]).
