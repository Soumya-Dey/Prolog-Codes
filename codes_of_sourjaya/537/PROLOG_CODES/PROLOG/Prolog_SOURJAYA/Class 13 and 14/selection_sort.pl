min([X],X).
min([X,Y|T],KQ):-X>Y,!,min([Y|T],KQ).
min([X,_|T],KQ):-min([X|T],KQ).

delete(_,[],[]).
delete(X,[X|T],KQ):-!,delete(X,T,KQ).
delete(X,[H|T],[H|KQ]):-delete(X,T,KQ).

selection_sort([],[]).
selection_sort(L,[Min|KQ]):-min(L,Min),
delete(Min,L,L1),
selection_sort(L1,KQ).