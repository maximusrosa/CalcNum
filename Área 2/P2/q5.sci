// Considere um conjunto de pontos S dado pela função f(x) = sin(x)cos(x) calculada
// nas abcissas dadas pelo vetor [10 : 90]. Interpole a função em 38.92 utilizano somente 4 pontos.

x = [37 38 39 40] ' // ATENÇÃOOOOOOOOOOOOOOOOOOO!!! VOCÊ VAI USAR OS 4 PONTOS MAIS PRÓXIMOS DE X = 38.92 AQUI'

y = [sin(x).*cos(x)] // The y vector is defined as the result of the element-wise multiplication (denoted by .*) 

X = 38.92 

coef = interpol_vander(x,y)

p = horner(poly(coef, 'x', 'coeff'), X);

disp(p)
