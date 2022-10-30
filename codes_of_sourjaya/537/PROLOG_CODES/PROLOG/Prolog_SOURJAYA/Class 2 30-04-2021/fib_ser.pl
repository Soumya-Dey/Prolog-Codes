fib(N):-N is 0,write('series cannot be printed').
fib(N):-N is 1,write('0').
fib(N):-N is 2,write('0'),nl,write('1').
fib(N):-N > 2,write('0'),nl,write('1'),nl,fib_1(N-2,0,1).
fib_1(N,A,B):-N>0,C is A+B,write(C),nl,A1 is B,B1 is C,M is N-1,fib_1(M,A1,B1).
