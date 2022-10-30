replace([],_,_,[]).
replace([H|T],R,RW,[RW|T1]):-H=:=R,replace(T,R,RW,T1).
replace([H|T],R,RW,[H|T1]):-replace(T,R,RW,T1).
