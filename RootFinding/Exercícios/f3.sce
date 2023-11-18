// Determine uma aproximação para o ponto x* > 0 em que uma reta que passa plea origem tangencia 
// o gráfico da função seno no primeiro quadrante.

function y=f3(x)
    y = x .* cos(x) - sin(x)
endfunction

xi = linspace(-5, 5, 200) // 200 geralmente é suficiente
plot(xi,f3(xi))
xgrid

// A partir do gráfico de f1, notamos que o zero da função está ebtre 7.5 e 8

// z1 contém a aproximação
z3 = fsolve_b(7.5, 8, f3)

// formatamos a saída no console para exibir em notação científica com 24 caracteres (valor máximo)
format('e', 24)

// Joga o valor no console
disp(z3)

alpha = cos (z3)

xi = linspace (0, 3*%pi, 200)
scf(1)
plot(xi, alpha*xi, 'r-')
plot(xi, sin(xi))
