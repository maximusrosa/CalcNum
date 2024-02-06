// Encontre o polinômio de grau 2 que melhor se ajusta aos pontos 
// (0,1), (1,3), (2,4), (3,6), (4,5) e (7,7).

x = [0 1 2 3 4 7]
y = [1 3 4 6 5 7]

n = 1 // grau do polinômio de ajuste

a = minquadlin(x,y,p)

// Plotando o gráfico
XX = 0: 0.1 :10;
YY = 0;

for i=1:n+1
    YY = YY + a(i)*XX.^(i-1);
end
    
plot(XX, YY, 'b')
plot(x, y, 'r*')
xgrid

disp('Coeficientes:')
disp(a)
