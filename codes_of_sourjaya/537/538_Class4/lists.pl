%no_of_elements_in_list_1
count([],0).%count([],C):-C is 0.
count([_|T],C):-count(T,C1),C is C1+1.

counti([],0).
counti([H|T],C):-integer(H),counti(T,C1),C is C1+1.
counti([H|T],C):-not(integer(H)),counti(T,C).

countn([],0).
countn([H|T],C):-number(H),countn(T,C1),C is C1+1.
countn([H|T],C):-not(number(H)),countn(T,C).
%sum_of_elements_2
sum_number([],0).
sum_number([H|T],C):-number(H),sum_number(T,C1),C is C1+H.
sum_number([H|T],C):-not(number(H)),sum_number(T,C).

sum_integer([],0).
sum_integer([H|T],C):-integer(H),sum_integer(T,C1),C is C1+H.
sum_integer([H|T],C):-not(integer(H)),sum_integer(T,C).
%sum_of_even_integers_3
sum_even([],0).
sum_even([H|T],C):-number(H),S1 is H mod 2,S1=:=0,sum_even(T,C1),C is C1+H.
sum_even([H|T],C):-number(H),S1 is H mod 2,S1\=0,sum_even(T,C).
%whether_a_number_is_present_or_not_4
l_m(X,[X|_]).
l_m(X,[_|T]):-l_m(X,T).
%find_the_position_of_an_element_if_present_5
linearSearch([X|T],KEY):-linearSearch([X|T],KEY,0).
linearSearch([],_,_):-write('Element not found').
linearSearch([X|T],KEY,C):- X =:= KEY,write('Element found'),nl,write('Index of element:'),write(C); C1 is C+1,linearSearch(T,KEY,C1).
%count_number_of_times_a_given_element_occurs_in_a_list_6
frequency([X|T],KEY):-frequency([X|T],KEY,0).
frequency([],_,C):-write('Frequency of element is '),write(C).
frequency([X|T],KEY,C):- X =:= KEY,C1 is C+1,frequency(T,KEY,C1);frequency(T,KEY,C).
%max_number_of_a_list_7
maxArray([X|T]):- max(T,X).
max([X|T],MAX):- integer(X),X>=MAX, MAX1 is X, max(T,MAX1).
max([X|T],MAX):- max(T,MAX).
max([],M):- write('Maximum element is:'),write(M),nl.
%min_number_of_a_list_8
minArray([X|T]):- min(T,X).
min([X|T],MIN):- integer(X),X=<MIN, MIN1 is X, min(T,MIN1).
min([X|T],MIN):- min(T,MIN).
min([],M):- write('Minimum element is:'),write(M),nl.
%average_of_integers_list_9
avg_integer(T):-average_integer(T,_).
average_integer([],A):-write('List is Empty').
average_integer(T,_):-sum_integer(T,C),counti(T,C1),A is C/C1,write('Average of integers is: '),write(A).
%average_of_number_list_10
avg_number(T):-average_number(T,_).
average_number([],A):-write('List is Empty').
average_number(T,_):-sum_number(T,C),countn(T,C1),A is C/C1,write('Average of numbers is: '),write(A).