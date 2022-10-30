female(amy).
female(gita).
male(ram).
male(sam).
male(jadu).
parentof(amy,gita).
parentof(amy,ram).
parentof(sam,gita).
parentof(sam,ram).
parentof(sam,jadu).

sibling(X,Y):-parentof(Z,X), parentof(Z,Y), X \= Y.
brother(X,Y):- sibling(X,Y),male(X),male(Y).