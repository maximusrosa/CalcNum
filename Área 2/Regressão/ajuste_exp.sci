// Encontre uma curva da forma y = A * exp(b*x) que melhor se ajusta aos pontos
// (0,1), (1,3), (2,4), (3,6), (4,5) e (7,7).

function y = f(x)
    y = sin(x)+1;
endfunction

X = 0:0.1:1'
Y = f(X)

p = 1

a = regressao_pol(X,log(Y),p)

// Plotando o gráfico da curva de ajuste

A = exp(a(1))
b = a(2)

XX = 0: 0.1 :10;
YY = A*exp(b*XX);
SINX = f(XX)


plot(XX, YY, 'b') // Curva de ajuste
plot(XX, SINX, 'g') // Curva original
plot(X, Y, 'r*') // Pontos dados
xgrid;


disp('Coeficientes em A * e^(b*x):')
printf('A = %f\n', A)
printf('b = %f\n', b)
