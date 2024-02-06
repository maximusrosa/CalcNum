clear

x = [0 1 2 3 4 7]'
y = [1 3 4 6 5 7]'

// Matriz
M = [n      sum(x)
     sum(x) sum (x.^2)]

b = [sum(log(y))
     sum(x.*log(y))]

a = inv(M) * b;

A = exp(a(1));

XX = 0: 0.1 :10;
YY = A*exp(a(2)*XX)