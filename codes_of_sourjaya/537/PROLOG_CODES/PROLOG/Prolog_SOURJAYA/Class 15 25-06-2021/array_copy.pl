copy([],[]).
copy([H|T],[H|T1]):-H>10,copy(T,T1).
copy([H|T],T1):-H=<10,copy(T,T1).
