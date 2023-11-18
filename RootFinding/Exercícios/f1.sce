// Encontrando o zero da função x^2 - e^-x utilzando método da bissecção

function y=f1(x)
    y = x^2 - exp(-x)
endfunction

xi = linspace(-5, 5, 200) // 200 geralmente é suficiente
plot(xi,f1(xi))
xgrid

// A partir do gráfico de f1, notamos que o zero da função está ebtre 0.6 e 0.8

// z1 contém a aproximação
z1 = fsolve_b(0.6, 0.8, f1)

// formatamos a saída no console para exibir em notação científica com 24 caracteres (valor máximo)
format('e', 24)

// Joga o valor no console
disp(z1)
