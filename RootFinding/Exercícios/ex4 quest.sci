clear
clc
mode(0)

// Exercício 4 do Questionário: Encontre uma intersecção entre as curvas 
// x^3 + y^3 - 1 e x = y^2

// sabemos que o par (x,y) no qual as curvas se cruzam são tais que
// y^6 + y^3 - 1 = 0

p = poly([-1,0,0,1,0,0,1], 'x', 'c');

r = roots(p);

// As curvas se encontram no primeiro quadrante quando c1(x)= (1 - x^3)^(1/3)
//e c2 = sqrt(x) forem iguais. Ou seja, no zero da função f(x) = c1(x) - c2(x)

function y = f(x)
    y = (1 - x^3)^(1/3) - sqrt(x)
endfunction

xi = linspace(0, 1, 200);

plot(xi, f(xi))


// Há uma solução próxima de x = 0.72

function y = df(x)
    y = - x^2/(1 - x^3)^(2/3) - 1 / (2 * sqrt(x))
endfunction


