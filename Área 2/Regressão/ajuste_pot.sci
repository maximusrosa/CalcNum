// Encontre uma curva da forma y = A * b^x que melhor se ajusta aos pontos
// (1,1), (1,3), (2,4), (3,6), (4,5) e (7,7).

X = [1 1 2 3 4 7]'
Y = [1 3 4 6 5 7]'

p = 1

a = regressao_pol(log(X),log(Y),p)

// Plotando o gráfico da curva de ajuste

A = exp(a(1))
b = a(2)

XX = 0: 0.1 :10;
YY = A.*XX.^b;


plot(XX, YY, 'b')
plot(X, Y, 'r*')
xgrid;

disp('Coeficientes em A * x^b:')
printf('A = %f\n', A)
printf('b = %f\n', b)
