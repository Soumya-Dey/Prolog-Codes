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


% family with three children
children3():- family(_, _, [_, _, _]).

% find the husband
husband(X):- family(X, _, _).

% find the wife
wife(X):- family(_, X, _).

% find the children
child(X):- family(_, _, C), member(X, C).

% check if any person exists in a family or not 
exists(P):- husband(P); wife(P); child(P).

% extract date of birth of a person
dob(person(X, _, D, _), D).

% extract salary of a person
salary(person(X, _, _, works(_, S)), S).
salary(person(X, _ ,_ , unemployed), 0).

%1. find all the children born in 2000
children2000(X):- child(X), dob(X, date(_, _, 2000)).

%2. find all the employed wives
employedWives(FirstName, Surname):- wife(person(FirstName, Surname, _, works(_, _))).

%3. find the names of unemployed people who were born before 1973.
unemployed1973(FirstName, Surname):- exists(person(FirstName, Surname, date(_, _, Y), unemployed)), Y < 1973.

%4. find people born before 1960 whose salary is less than 8000.
before1960sal8000(Person):- exists(Person), dob(Person, date(_,_,Year)), Year < 1960, salary(Person, Salary), Salary < 8000.

%5. find the name of the families with least three children.
childrenAtLeast3(Name):- family(person(_, Name, _, _), _, [_, _, _|_]).

%6. total income of a family
total([], 0).
total([Person|List], Sum):- salary(Person, S), total(List, Rest), Sum is S + Rest.

totalIncome(H, W, Income):- family(H, W, C), total([H, W|C], Income).
totalSpecific(Name, I):- family(person(_, Name, _, _), W, _), totalIncome(person(_, Name, _, _), W, I).
