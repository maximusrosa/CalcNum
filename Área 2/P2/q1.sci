function y = f(x)
    y = exp(x/14)-1.5;
endfunction

X = 0:0.1:2 // O X
X = X' // x' = transposta de x

Y = f(X)

n = size(X,1);

M = [X X.^2] //x e x^2 polinomio, se quiser a+bx+cx^2 ficaria [x.^0 x x.^2]

cu = M' * M // M' = transposta de M

pau = M' * Y //SE VOCÊ CRIOU Y COM PONTOS SEPARADOS (SEM SER FUNÇÃO DE X), AQUI TEM QUE SER y'
            //alternativamente, só adiciona o ' (ou tira ele) se der inconsistent rows
            //isso aí, boa sorte nas provas :0

disp('Coeficientes:')
disp(inv(cu)*pau)
