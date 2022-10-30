family(
    person(tom,fox,date(10, may, 2020), works(bbc, 5464574)),           
    person(jen,fox,date(11, may, 2020), unemployed),                    
    [                                                                   
        person(cat,fox,date(13, may, 2030), unemployed),
        person(joe,fox,date(13, may, 2030), unemployed)

    ]
).

family(
    person(prasun,kundu,date(23, nov, 1960), unemployed),           
    person(rita,kundu,date(02, mar, 1959), works(tcs, 7000)),                    
    [                                                                   
        person(soumyadip,kundu,date(13, jan, 2000), works(exl, 2064574)),
        person(arka,kundu,date(13, jan, 2000), works(exl, 3464574)),
        person(mia,kundu,date(17, jan, 2003), unemployed),
        person(kathy,kundu,date(17, jan, 2003), unemployed)
    ]
).


family(
    person(sandip,roy,date(10, may, 2020), works(cts, 45000)),           
    person(behula,roy,date(11, mar, 2017), works(tata, 80000)),                    
    []
).

family(
    person(jishu,sen,date(10, jan, 2010), works(sxc, 67000)),           
    person(jamini,sen,date(11, dec, 2012), unemployed),                    
    [                                                                   
        person(sona,sen,date(29, may, 2050), unemployed)
    ]
).

% find the husband
husband(X):- family(X, _, _).

% find the wife
wife(X):- family(_, X, _).

% find the children
child(X):- family(_, _, C), member(X, C).

%Exercise 1
%1. names of families without children.
withoutChildren(Name):- family(person(_, Name, _, _), _, []).

%2. all employed children.
employedChildren(FName, SName):- child(person(FName, SName, _, works(_, _))).

%3. name of families with employed wives and unemployed husbands.
emWivesUnemHusbands(FirstName, Surname):- wife(person(FirstName, Surname, _, works(_, _))), husband(person(FirstName, Surname, _,unemployed)).

%4. all childrens whose parents differ in age by at least by 15 years.
parentsDiffer15(FirstName, Surname):- child(person(FirstName, Surname, _, _)), husband(person(_, Surname, date(_, _, HY))), wife(person(_, Surname, date(_, _, HW))), abs(HY - HW) >= 15.

%Exercise 2
%1. twins(C1, C2) to find twins in family database
twins(person(_, SName, D1, _), person(_, SName, D1, _)).