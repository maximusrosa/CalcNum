///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear     // Comentado porque não quero limpar as variáveis, pois vou usar o fsolve_nr
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


// Exercício 8 - Questionário Equações Não Lineares
// Utilize o método de Newton para determinar uma raiz de f(x) = x^2 - 6 
// com 7 dígitos significativos e x1 = 1.


function y = f(x)
    y = x.^2 - 6
endfunction


function y = df(x)
    y = 2*x
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


// Analisando o gráfico, vemos que a função é simétrica e existe uma raiz entre 2.4 e 2.5.
xEstrela = fsolve_nr(1, f, df);
printf("A raiz da função f(x) = x^2 - 6 é: %.8f\n", xEstrela)

