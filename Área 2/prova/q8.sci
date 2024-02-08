// Encontre uma curva da forma y = A * exp(b*x) que melhor se ajusta aos pontos
// (0,1), (1,3), (2,4), (3,6), (4,5) e (7,7).

X = [5 7.5 10 12.5 15]'
Y = [26 11.65 6.5 4.16 2.88]'

p = 1

a = regressao_pol(X,log(Y),p)

// Plotando o gráfico da curva de ajuste

A = exp(a(1))
b = a(2)

XX = 0: 0.1 :100;
YY = A*exp(b*XX);


plot(XX, YY, 'b') // Curva de ajuste
plot(X, Y, 'r*') // Pontos dados
xgrid;


disp('Coeficientes em A * e^(b*x):')
printf('A = %f\n', A)
printf('b = %f\n', b)

x = 9;
disp(A  * exp(b * x))
