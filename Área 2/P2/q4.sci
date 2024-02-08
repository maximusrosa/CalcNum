// Seja o ajuste de mínimos quadrados da função f(x) = a0 + a1*x ao conjunto
// de dados {(xi,yi)} com i = 1 até 30, onde xi corresponde ao conjunto de pontos
// uniformemente distribuídos no intervalo [0, %pi/2] e yi = sin(xi) + 1/8 cos(sqrt(4*xi)))
// Determine o valor de a0.

function y = f(x)
    y = sin(x) + 1/8 * cos(2*x);
endfunction

X = linspace(0, %pi/2, 30)'

Y = f(X)  // f aplicada a cada elemento de X

p = 1;

a = regressao_pol(X,Y,p)

// Plotando o gráfico
XX = linspace(0, %pi/2, 30) // NÃO PRECISA SER IGUAL À X
YY = 0;

for i=1:p+1
    YY = YY + a(i)*XX.^(i-1);
end

plot(XX, YY, 'b')
plot(X, Y, 'r*')
xgrid;

disp('Coeficientes:')
disp(a)