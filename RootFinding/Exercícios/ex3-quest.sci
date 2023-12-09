///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear     // Comentado porque não quero limpar as variáveis, pois vou usar o fsolve_bis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


// Exercício 3 - Questionário Equações Não Lineares
// Encontre todas as raízes de f(x)= cos(x)+x^2-3x.


function y = f(x)
    y = x.^2 - 3*x + cos(x)
endfunction


///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando a função f(x)
x = linspace(-3.5, 3.5, 101);

plot(x, f(x), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////


// Analisando o gráfico, vemos que as raízes estão em (0.35, 0.36): 
[xEstrela1] = fsolve_bis(f,0.35,0.36)

// e em (3.29, 3.31):
[xEstrela2] = fsolve_bis(f,3.29,3.31)

