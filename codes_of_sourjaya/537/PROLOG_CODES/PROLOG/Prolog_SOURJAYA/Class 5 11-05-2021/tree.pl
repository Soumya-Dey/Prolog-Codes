is_parent(a,b).
is_parent(a,c).
is_parent(a,d).
is_parent(b,e).
is_parent(b,f).
is_parent(c,g).
is_parent(c,h).
is_parent(c,i).
is_parent(d,j).
is_parent(e,k).
is_parent(f,l).
is_parent(f,m1).
is_parent(h,n).
is_parent(i,o).
is_parent(i,p).
is_parent(j,q1).
is_parent(j,r).
is_parent(j,s1).
is_parent(m1,t).
is_parent(n,u).
is_parent(n,v).

leaf_node(X):- \+ is_parent(X,_).

path(X):- is_parent(Y,X),path(Y),write(Y),write('-->').
path(a).

complete_path(X):-path(X),write(X).

height(X,0):-leaf_node(X).
height(X,L):-is_parent(X,Y), height(Y,L1),L is L1+1.










