family(person(tom,fox,date(7,may,1960),works(bbc,15200)),person(ann,fox,date(9,may,1961),unemployed),[person(pat,fox,date(5,may,1983),unemployed),person(jim,fox,date(5,may,1983),unemployed)]).

family(person(sam,taylor,date(7,aug,1975),works(aljazeera,20000)),person(annie,taylor,date(9,oct,1980),works(espn,15000)),[person(george,taylor,date(5,dec,2003),unemployed),person(jim,taylor,date(12,may,2004),unemployed)]).

family(person(blake,shelton,date(7,may,1960),works(ctc,20200)),person(ashley,shelton,date(9,jan,1965),unemployed),[person(jonas,shelton,date(12,may,1985),works(espn,8000)),person(lana,shelton,date(5,feb,1990),unemployed)]).

family(person(jerry,washington,date(11,mar,1973),works(amazon,30000)),person(jessie,washington,date(15,nov,1990),works(google,25000)),[person(pattrick,washington,date(5,may,2000),unemployed),person(sophie,wahsington,date(22,apr,2001),unemployed),person(josephine,washington,date(18,mar,2003),works(marketing,20000))]).

family(person(cristiano,ronaldo,date(30,may,1980),works(football,15200)),person(andrea,ronaldo,date(9,may,1985),works(football,15200)),[]).

family(person(boaster,kim,date(30,may,1982),unemployed),person(simi,kim,date(25,october,1990),works(analyst,15200)),[]).

husband(X):-family(X,_,_).

wife(X):-family(_,X,_).

child(X):-family(_,_,Children),member(X,Children).

exists(Persons):-husband(Persons);wife(Persons);child(Persons).

dateofbirth(person(_,_,Date,_),Date).

salary(person(_,_,_,works(_,S)),S).
salary(person(_,_,_,unemployed),0).

%find_the_names_of_all_the_people_in_the_database
allname(Fname,Lname):-exists(person(Fname,Lname,_,_)).

%find_all_children_born_in_2000
ques1(Fname,Lname):-child(person(Fname,Lname,date(_,_,2000),_)).
%find_all_employed_wives
ques2(Fname,Lname):-wife(person(Fname,Lname,_,works(_,_))).
%find_the_names_of_unemployed_people_who_were_born_before_1973
ques3(Fname,Lname):-exists(person(Fname,Lname,date(_,_,Year),unemployed)),Year<1973.
%find_people_born_before_1960_whose_salary_is_less_than_8000.
ques4(Fname,Lname):-exists(person(Fname,Lname,date(_,_,Year),works(_,Sal))),Year<1960,Sal<8000.
%find_name_of_families_with_atleast_3_children
ques5(Lname):-family(person(_,Lname,_,_),_,[_,_,_|_]).

family_members(Lname,X|person(_,Lname,_,_):-exists(person(_,Lname,_,_)).
%calculate_the_total_income_of_a_family
total([],0).
total([H|T],Sum):-salary(H,S),total(T,R),Sum is S+R.

totalIncome(H, W, Income):- family(H, W, C), total([H, W|C], Income).
totalSpecific(Name, I):- family(person(_, Name, _, _), W, _), totalIncome(person(_, Name,_, _), W, I).
%Name_of_families_without_children
ques6(Lname):-family(person(_,Lname,_,_),_,[]).
%All_employed_children
ques7(Fname,Lname):-child(person(Fname,Lname,_,works(_,_))).
%Name_of_families_with_employed_wives_and_unemployed_husbands.
ques8(Lname):-wife(person(_,Lname,_,works(_,_))),husband(person(_,Lname,_,unemployed)).
%All_the_children_whose_parents_differ_in_age_by_at_least_15_years.
ques9(Fname,Lname):-child(person(Fname,Lname,_,_)),husband(person(_,Lname,date(_,_,D1),_)),wife(person(_,Lname,date(_,_,D2),_)),D is abs(D2-D1),D>=15.
%Define_the_relation
%twins(Child1,Child2)_to_find_twin
twins(person(_,Lname,D,_),person(_,Lname,D,_)).