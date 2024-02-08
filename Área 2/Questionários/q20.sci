// Encontre o polinômio de grau 2 que melhor se ajusta aos pontos
// (0,8), (1,5), (2,4), (3,2), (5,1), (7,2), (8,4) e (10,7)

X = [0 1 2 3 5 7 8 10]'
Y = [8 5 4 2 1 2 4 7]'

p = 3 // grau do polinômio de ajuste

a = regressao_pol(X,Y,p)

// Plotando o gráfico
XX = 0: 0.1 :10;
YY = 0;

for i=1:p+1
    YY = YY + a(i)*XX.^(i-1);
end
    
plot(XX, YY, 'b')
plot(X, Y, 'r*')
xgrid

disp('Coeficientes:')
printf('a0 = %f\n', a(1))
printf('a1 = %f\n', a(2))
printf('a2 = %f\n', a(3))

p = poly(a,"x","coeff")
disp(p)

// Resíduo:
x = 5;
R = abs(Y(5) - horner(poly(a, 'x', "coeff"), x))

printf('\nResíduo em x = %d: %f\n', x, R)