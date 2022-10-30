%max_using_cut
max(X,Y,X):-X>=Y,!.
max(X,Y,Y).
%function_using_cut
f(X,0):-X<3,!.
f(X,2):-3=<X,X<6,!.
f(X,4):-6=<X.
%remove_duplicates_from_list
%member function is in-built
%member(X,[X|_]).
%member(X,[_|T]):-member(X,T).
remove_duplicates([],[]).
remove_duplicates([H|T],R):-member(H,T),remove_duplicates(T,R),!.
remove_duplicates([H|T],[H|R]):-remove_duplicates(T,R).
%use_of_fail_predicate
father(leonard,katherine).
father(jack,christine).
father(leonard,jane).
list_dads:-father(X,Y),write(X),write(" is "),write(Y),write("'s father\n"),fail.
%append_one_list_behind_another_list
listappend([], X, X).                                  
listappend([X | Y], Z, [X | W]) :- listappend( Y, Z, W).