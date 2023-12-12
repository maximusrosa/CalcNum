///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear     // Comentado porque não quero limpar as variáveis, pois vou usar o fsolve_sec
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


// Exercício 9 - Questionário Equações Não Lineares
// Encontre uma intersecção entre as curvas  -cos(x-1) e   ln(x-1) em  [1.3, 2]


function y = f1(x)
    y = -cos(x-1)
endfunction


function y = f2(x)
    y = log(x-1)
endfunction


// Em outras palavras, queremos encontrar a raiz em [1.3, 2] da função f(x):

function y = f(x)
    y = f2(x) - f1(x)
endfunction


///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando a função f1(x)
x = linspace(-3.5, 3.5, 101);

plot(x, f1(x), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Plotando a função f2(x)
x = linspace(-3.5, 3.5, 101);

plot(x, f2(x), 'r-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////


xEstrela = fsolve_sec(1.3, 2, f);
printf("O ponto de intersecção é: (%.6f, %.6f)\n", xEstrela, f2(xEstrela))

