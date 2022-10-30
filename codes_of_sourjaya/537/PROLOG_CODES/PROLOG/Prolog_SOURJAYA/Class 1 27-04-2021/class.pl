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

sibling(X,Y):- parentof(Z,X),parentof(Z,Y),Z=V,X!= Y.
