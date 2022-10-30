has_car(ram,car(ford,2,3500000)).
has_car(sam,car(ford,2,500000)).

e_detls(chandan,dept(chandan,cs),manager(chandan,arnab),boss(ss),com_dir(sxc),basic(14999),expr(7)).

dept(X,Y):-e_detls(X,dept(X,Y),manager(_,_),boss(_),com_dir(_),basic(_),expr(_)).
