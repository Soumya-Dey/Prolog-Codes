merge_sort([],[]).     % empty list is already sorted

merge_sort([X],[X]).   % single element list is already sorted

merge_sort(List,Sorted):-
    List=[_,_|_],divide(List,L1,L2),     % list with at least two elements is divided into two parts
	
	merge_sort(L1,Sorted1),merge_sort(L2,Sorted2),  % then each part is sorted
	
	merge(Sorted1,Sorted2,Sorted).                  % and sorted parts are merged
	
merge([],L,L).
merge(L,[],L):-L\=[].
merge([X|T1],[Y|T2],[X|T]):-X=<Y,merge(T1,[Y|T2],T).
merge([X|T1],[Y|T2],[Y|T]):-X>Y,merge([X|T1],T2,T).

%We can use distribution into even and odd elements of list

divide(L,L1,L2):-even_odd(L,L1,L2).
%or traditional distribution into first and second half (other distibutions are also possible)

divide(L,L1,L2):-halve(L,L1,L2).