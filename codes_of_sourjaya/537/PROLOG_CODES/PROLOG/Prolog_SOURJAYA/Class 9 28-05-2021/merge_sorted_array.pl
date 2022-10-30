%merge_array([],L,L).
%merge_array(L,[],L).
%merge_array([H1|T1], [H2|T2], L) :-
   % H1 < H2 -> L = [H1|R], merge_array((T1,[H2|T2],R) ;
   % H1 > H2 -> L = [H2|R], merge_array(([H1|T1],T2,R) ;
    %L = [H1,H2|R], merge_array((T1,T2,R).

merge_array([],L,L).
merge_array(L,[],L).
merge_array([H1|T1], [H2|T2], L) :-
    H1 < H2 , L = [H1|R], merge_array(T1,[H2|T2],R) ;
    H1 > H2 , L = [H2|R], merge_array([H1|T1],T2,R) ;
    L = [H1,H2|R], merge_array(T1,T2,R).
