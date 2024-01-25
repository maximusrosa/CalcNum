// Calculando a distância da função no ponto (zero_f2, 0) até

function y=f2(x)
    y = x^2 - x + log(x) - 1
endfunction

xi = linspace(-5, 5, 200) // 200 geralmente é suficiente
plot(xi,f2(xi))
xgrid

// A partir do gráfico de f1, notamos que o zero da função está ebtre 0.6 e 0.8

// z1 contém a aproximação
z2 = fsolve_b(1.4, 1.6, f2)

// formatamos a saída no console para exibir em notação científica com 24 caracteres (valor máximo)
format('e', 24)

// Joga o valor no console
disp(z2)
