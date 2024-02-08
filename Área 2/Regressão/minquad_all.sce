clear;
x= 0:(%pi/2/29):%pi/2 // O X, claramente
x = x'
y = [sin(x)+ (1/8)*cos(2*x)] // Y do problema

n=size(x,1);

M=[x.^0 x.^2] //x e x^2 polinomio (formato bx + cx^2), se quiser a+bx+cx^2 ficaria [x.^0 x x.^2]
disp(M)
disp(y)
cu = M' * M

pau = M' * y //SE VOCÊ CRIOU Y COM PONTOS SEPARADOS (SEM SER FUNÇÃO DE X), AQUI TEM QUE SER y'
            //alternativamente, só adiciona o ' (ou tira ele) se der inconsistent rows
            //isso aí, boa sorte nas provas :0


disp(inv(cu)*pau)
