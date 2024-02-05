// Encontre uma curva da forma y = A * exp(x) que melhor se ajusta aos pontos
// (1,2); (2,3) e (3,5).

x = [0 1 2 3 4 7]
y = [1 3 4 6 5 7]

n = 2

a = minquadlin(x,y,n)

// Plotando o gráfico da curva de ajuste

A = exp(a(1))

XX = 0: 0.1 :10;
YY = A*exp(a(2)*XX);


plot(XX, YY, 'b')
plot(x, y, 'r*')
xgrid;

disp('Coeficientes:')
disp(a)
