%Male
male(john).
male(henry).
male(brian).
male(anthony).
male(bob).
male(peter).
male(dennis).
male(charles).
male(ivan).
male(george).
male(kevin).
male(arthur).
male(fred).
male(jason).

%Female
female(mary).
female(alice).
female(annie).
female(clara).
female(shelly).
female(ira).
female(mia).
female(jenny).
female(tia).
female(laura).

%Father
father(john, alice).
father(john, henry).
father(john, clara).
father(john, bob).
father(brian, peter).
father(brian, dennis).
father(henry, ira).
father(henry, ivan).
father(anthony, mia).
father(anthony, kevin).
father(peter, arthur).
father(peter, jenny).
father(charles, tia).
father(charles, laura).
father(george, fred).
father(george, jason).

%Mother
mother(mary, alice).
mother(mary, henry).
mother(mary, clara).
mother(mary, bob).
mother(alice, peter).
mother(alice, dennis).
mother(annie, ira).
mother(annie, ivan).
mother(clara, mia).
mother(clara, kevin).
mother(shelly, arthur).
mother(shelly, jenny).
mother(ira, tia).
mother(ira, laura).
mother(mia, fred).
mother(mia, jason).

%Parent
parent(X, Y):- father(X, Y).
parent(X, Y):- mother(X, Y).

%Grandfather
grandfather(X, Y):- father(X, Z), father(Z, Y).
grandfather(X, Y):- father(X, Z), mother(Z, Y).

%Grandmother
grandmother(X, Y):- mother(X, Z), mother(Z, Y).
grandmother(X, Y):- mother(X, Z), father(Z, Y).

%Grandparent
grandparent(X, Y):- parent(X, Z), parent(Z, Y).

%IsParent
isParent(X):- parent(X, _).

%IsSibling
isSibling(X, Y):- parent(Z, X), parent(Z, Y), X \= Y.

%IsCousin
isCousin(X, Y):- grandparent(Z, X), grandparent(Z, Y), X \= Y.

%Brother
brother(X,Y):- isSibling(X,Y), male(X).
brother(X,Y):- isCousin(X,Y), male(X).

%Sister
sister(X,Y):- isSibling(X,Y), female(X).
sister(X,Y):- isCousin(X,Y), female(X).

%IsChild
isChild(X, Y):- parent(Y, X).

%IsPredecessor
isPredecessor(X, Y):- parent(X, Y).
isPredecessor(X, Y):- isPredecessor(X, Z), parent(Z, Y).

%IsSuccessor
isSuccessor(X, Y):- isPredecessor(Y, X).