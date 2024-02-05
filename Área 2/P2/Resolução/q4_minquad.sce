clear;
x= 0:(%pi/2/29):%pi/2 // O X
x = x'
y = [sin(x) + 1/8 * cos(2*x) ]

n=size(x,1);

M=[x.^0 x] //x e x^2 polinomio, se quiser a+bx+cx^2 ficaria [x.^0 x x.^2]


cu = M' * M

plau = M' * y //SE VOCÊ CRIOU Y COM PONTOS SEPARADOS (SEM SER FUNÇÃO DE X), AQUI TEM QUE SER y'
            //alternativamente, só adiciona o ' (ou tira ele) se der inconsistent rows
            //isso aí, boa sorte nas provas :0

disp('Coeficientes:')
disp(inv(cu)*plau)
