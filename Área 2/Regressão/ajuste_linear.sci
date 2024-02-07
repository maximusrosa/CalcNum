// Encontre o polinômio de grau 2 que melhor se ajusta aos pontos 
// (0,1), (1,3), (2,4), (3,6), (4,5) e (7,7).

X = [0 1 2 3 4 7]'
Y = [1 3 4 6 5 7]'

p = 2 // grau do polinômio de ajuste

a = regressao_pol(X,Y,p)

// Plotando o gráfico
XX = 0: 0.1 :10;
YY = 0;

for i=1:p+1
    YY = YY + a(i)*XX.^(i-1);
end
    
plot(XX, YY, 'b')
plot(x, y, 'r*')
xgrid

disp('Coeficientes:')
disp(a)
