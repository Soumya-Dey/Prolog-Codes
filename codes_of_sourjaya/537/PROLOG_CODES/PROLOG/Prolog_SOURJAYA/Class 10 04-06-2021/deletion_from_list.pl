delete(Y,[],[]).
delete(X,[X|L],L1):-delete(X,L,L1).
delete(X,[Y|L],[Y|L1]):- X\=Y,delete(X,L,L1).