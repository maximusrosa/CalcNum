///////////////////////// INICIALIZAÇÃO  /////////////////////////////

clear       // limpa as variáveis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////



// Exercício 4 - Questionário Equações Não Lineares
// Encontre uma intersecção entre as curvas x^3 + y^3 - 1 e x = y^2.



///////////////////////// SOLUÇÃO 1 ///////////////////////////////

// sabemos que o par (x,y) no qual as curvas se cruzam são tais que
// (y^2)^3 + y^3 - 1 = 0

p = poly([-1,0,0,1,0,0,1], 'y', 'c');

r = roots(p);

// Crie uma matriz lógica que é verdadeira para os elementos de r que são reais
mask = (imag(r) == 0);

// Use a matriz lógica para selecionar os elementos de r que são reais
realRoots = r(mask)

///////////////////////// SOLUÇÃO 2 /////////////////////////////

// as curvas se encontram no primeiro quadrante quando c1(x)= (1 - x^3)^(1/3)
// e c2 = sqrt(x) forem iguais. Ou seja, no zero da função f(x) = c1(x) - c2(x)

function y = f(x)
    y = (1 - x.^3).^(1/3) - sqrt(x)
endfunction



// há uma solução próxima de x = 0.72

function y = df(x)
    y = - x.^2./(1 - x.^3).^(2/3) - 1 / (2 * sqrt(x))
endfunction


///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando a função f(x) para x entre -1000 e 1000
xi = linspace(-1000, 1000, 100);

plot(xi, f(xi), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-1000, 1000], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-1000, 1000], 'k-', 'LineWidth', 1.35)

// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////