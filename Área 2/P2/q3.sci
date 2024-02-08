// Dada a função f(x) = sin(x), determine a eq y = ax + b da reta
// que passa pelos pontos (x0, f(x0)) e (x1, f(x1)), onde x0 = -pi/2
// e x1 = pi/2. Forneça o valor de a

X = [-%pi/2 %pi/2]'
Y = sin(X)

a = interpol_vander(X, Y)

// Plotando o gráfico
XX = linspace(-2*%pi, 2*%pi, 100) 
YY = 0;

for i=1:2
    YY = YY + a(i)*XX.^(i-1);
end

plot(XX, YY, 'b') // Curva (reta) interpoladora
plot(X, Y, 'r*') // Pontos dados
xgrid;

disp(a(2)) // lembrando que o formato é a0 + a1*x, ou a(1) + a(2)*x no scilab

