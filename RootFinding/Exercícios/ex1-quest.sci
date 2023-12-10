///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear     // Comentado porque não quero limpar as variáveis, pois vou usar o fsolve_bis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


// Exercício 1 - Questionário Equações Não Lineares
// Utilizando o método da bissecção estime a maior raiz de f(x)= sin(x) + exp(x) com 5 dígitos significativos.


function y = f(x)
    y = sin(x)+exp(x)
endfunction


///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando a função f(x)
x = linspace(-3.5, 3.5, 101);

plot(x, sin(x) + exp(x), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////


// Analisando o gráfico, vemos que a maior raiz está entre -1 e 0

[xEstrela] = fsolve_bis(f,-1,0);
printf(' x* = %.5f', xEstrela)

