// Encontre uma curva da forma y = A * exp(b*x) que melhor se ajusta aos pontos
// (0,1), (1,3), (2,4), (3,6), (4,5) e (7,7).

X = [0 1 2 3 4 7]'
Y = [1 3 4 6 5 7]'

p = 1

a = regressao_pol(X,log(Y),p)

// Plotando o gráfico da curva de ajuste

A = exp(a(1))

XX = 0: 0.1 :10;
YY = A*exp(a(2)*XX);


plot(XX, YY, 'b')
plot(x, y, 'r*')
xgrid;

disp('Coeficientes:')
disp(a)
