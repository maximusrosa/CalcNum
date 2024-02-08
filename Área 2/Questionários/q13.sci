clear;
X= 0:0.1:1 // O X, claramente
X = X'
Y = [cos(X)] // Y do problema

n=size(X,1);

M=[X.^0 X.^2] //x e x^2 polinomio (formato bx + cx^2), se quiser a+bx+cx^2 ficaria [x.^0 x x.^2]

cu = M' * M

pau = M' * Y //SE VOCÊ CRIOU Y COM PONTOS SEPARADOS (SEM SER FUNÇÃO DE X), AQUI TEM QUE SER y'
            //alternativamente, só adiciona o ' (ou tira ele) se der inconsistent rows
            //isso aí, boa sorte nas provas :0


disp('Coeficientes:')
disp(inv(cu)*pau)
