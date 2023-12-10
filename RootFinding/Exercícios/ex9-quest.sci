///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear     // Comentado porque não quero limpar as variáveis, pois vou usar o fsolve_sec
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


// Exercício 9 - Questionário Equações Não Lineares
// Encontre uma intersecção entre as curvas  -cos(x-1) e   ln(x-1) em  [1.3, 2]


function y = f(x)
    y = -cos(x-1)
endfunction


function y = g(x)
    y = log(x-1)
endfunction


// Em outras palavras, queremos encontrar a raiz em [1.3, 2] da função h(x):

function y = h(x)
    y = f(x) - g(x)
endfunction

///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando a função f(x)
x = linspace(-3.5, 3.5, 101);

plot(x, f(x), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Plotando a função g(x)
x = linspace(-3.5, 3.5, 101);

plot(x, g(x), 'r-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////


[xEstrela] = fsolve_sec(1.3, 2, h);
printf("O ponto de intersecção é: (%f, %f)\n", xEstrela, f(xEstrela))

