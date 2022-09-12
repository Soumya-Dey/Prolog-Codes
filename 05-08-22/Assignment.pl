% 1. WAP to find the maximum of 2 numbers.
max2(A, B, A):- A > B.
max2(A, B, B):- B >= A.

% 2. WAP to find the minimum of 2 numbers.
min2(A, B, B):- A > B.
min2(A, B, A):- B >= A.

% 3. WAP to find the maximum of 3 numbers.
max3(A, B, C, A):- A >= B, B >= C.
max3(A, B, C, B):- B >= A, B >= C.
max3(A, B, C, C):- C >= B, C >= A.

% 4. WAP to find the minimum of 3 numbers.
min3(A, B, C, A):- A <= B, B <= C.
min3(A, B, C, B):- B <= A, B <= C.
min3(A, B, C, C):- C <= B, C <= A.

% 5. WAP to find the sum of first N numbers.
sum(N, 0):- N =:= 0.
%sum(N, S) = N + sum(N-1, S)
sum(N, S):- N > 0, N1 is N - 1, sum(N1, S1), S is N + S1.

% 6. WAP to find the sum of first N even numbers.
sumeven(N, 0):- N =:= 0.
sumeven(N, S):- N > 0, ND is N * 2, N1 is N - 1, sumeven(N1, S1), S is ND + S1.

% 7. WAP to find the sum of squares of first N numbers.
sumsq(N, 0):- N =:= 0.
sumsq(N, S):- N > 0, N1 is N - 1, sumsq(N1, S1), S is N*N + S1.

% 8. WAP to find the factorial of a number.
fact(N, 1):- N =:= 0.
fact(N, S):- N > 0, N1 is N - 1, fact(N1, S1), S is N * S1.

% 9. WAP to print the fiboncci series and find the sum of fibonacci series.
fibo(N, 1):- N =:= 1.
fibo(N, 1):- N =:= 2. 
fibo(N, X):- N1 is N - 1, fibo(N1, X1), N2 is N - 2, fibo(N2, X2), X is X1 + X2.

sumfibo(N, 0):- N =:= 0.
sumfibo(N, S):- N > 0, N1 is N - 1, sumfibo(N1, S1), fibo(N, S2), S is S1 + S2, write(S2), write(", ").

% 10. 1! + 2! + ... + N!
sumfact(N, 0):- N =:= 0.
sumfact(N, S):- N > 0, N1 is N - 1, sumfact(N1, S1), fact(N, S2), S is S1 + S2.

% 11. tower of hanoi.
hanoi(1, X, Y, _):- write(X), write(" to "), write(Y), nl.
hanoi(N, X, Y, Z):- N > 1, M is N - 1, hanoi(M, X, Z, Y), hanoi(1, X, Y, _), hanoi(M, Z, Y, X).