// Considere um conjunto de pontos S dado pela função f(x) = sin(x)cos(x) calculada
// nas abcissas dadas pelo vetor [10 : 90]. Interpole a função em 38.92 utilizano somente 4 pontos.

function y = f(x)
    y = sin(x).*cos(x)
endfunction

X = [37 38 39 40]' // ATENÇÃOOOOOOOOOOOOOOOOOOO!!! VOCÊ VAI USAR OS 4 PONTOS MAIS PRÓXIMOS DE X = 38.92 AQUI'

Y = f(X)
x = 38.92 

coef = interpol_vander(X,Y)

p = horner(poly(coef, 'x', 'coeff'), x); // pegando o valor do polinomio no ponto x

disp(p) 
