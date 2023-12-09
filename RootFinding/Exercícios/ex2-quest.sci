///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear     // Comentado porque não quero limpar as variáveis, pois vou usar fsolve_bis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


// Exercício 2 - Questionário Equações Não Lineares
// Utilizando o método da bissecção estime estime (com 5 dígitos significativos) a intersecção 
// mais a esquerda do plano xy entre as curvas f(x)=sin(x) e g(x)=x^4-2x+1.


function y = f(x)
    y = sin(x)
endfunction


function y = g(x)
    y = x^4 - 2*x + 1
endfunction


// Em outras palavras, queremos encontrar a raiz mais a esquerda da função h(x):

function y = h(x)
    y = f(x) - g(x)
endfunction


///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando a função f(x)
x = linspace(-3.5, 3.5, 101);

plot(x, sin(x), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Plotando a função g(x)
x = linspace(-3.5, 3.5, 101);

plot(x, x.^4 - 2*x + 1, 'r-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)


// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////


// Analisando o gráfico, podemos ver que a intersecção mais a esquerda do plano xy entre as curvas f(x)= sin(x) e g(x)=x^4-2x+1
// está entre os pontos x = 0.33 e x = 0.35

[xEstrela] = fsolve_bis(h, 0.33, 0.35);

printf(' x = %.5f', xEstrela)
printf(' ;')
printf(' y = %.5f', sin(xEstrela))