///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear       // limpa as variáveis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////



// Exercício 4 - Questionário Equações Não Lineares
// Encontre uma intersecção entre as curvas x^3 + y^3 = 1 e x = y^2.



///////////////////////// SOLUÇÃO 1 ///////////////////////////////

// sabemos que o par (x,y) no qual as curvas se cruzam tem coordenada y
// tal que (y^2)^3 + y^3 - 1 = 0

p = poly([-1,0,0,1,0,0,1], 'y', 'c');

r = roots(p);

// Crie um array do tipo bool com o valor 'true' para os elementos de r que são reais
mask = (imag(r) == 0);

// Use a matriz lógica para selecionar os elementos de r que são reais
realRoots = r(mask)

///////////////////////// SOLUÇÃO 2 ///////////////////////////////


function y = f1(x)
    y = nthroot((1 - x.^3), 3)
endfunction


function y = f2(x)
    y = sqrt(x)
endfunction


// Em outras palavras, queremos encontrar uma raiz da função f(x):

function y = f(x)
    y = f2(x) - f1(x)
endfunction


///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando f1(x)
x = linspace(-3.5, 3.5, 101);

plot(x, f1(x), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)

// Plotando f2(x)
x = linspace(-3.5, 3.5, 101);

plot(x, f2(x), 'r-', 'LineWidth', 1.25)

// add x-axis
plot([-25, 25], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-25, 25], 'k-', 'LineWidth', 1.35)


// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////


// Analisando o gráfico, podemos ver que existe uma intersecção 
// entre os pontos x = 0.70 e x = 0.75

xEstrela = fsolve_bis(f, 0.70, 0.75);

printf("O ponto de intersecção é: (%f, %f)\n", xEstrela, f2(xEstrela))