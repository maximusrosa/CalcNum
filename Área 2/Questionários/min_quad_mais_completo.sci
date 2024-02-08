clear;
x= -2:5/50:3 // O X, claramente
x = x'
y = [exp(x)+sin(20*x)+20] // Y do problema

n=size(x,1);

M=[x.^0 x.^2] //x e x^2 polinomio (formato bx + cx^2), se quiser a+bx+cx^2 ficaria [x.^0 x x.^2]
disp(M)
disp(y)
cu = M' * M

pau = M' * y //SE VOCÊ CRIOU Y COM PONTOS SEPARADOS (SEM SER FUNÇÃO DE X), AQUI TEM QUE SER y'
            //alternativamente, só adiciona o ' (ou tira ele) se der inconsistent rows
            //isso aí, boa sorte nas provas :0

cum = inv(cu)*pau
disp(cum)

x_pol = 2.5

// CUIDADO!!! SÓ FUNCIONA SE O POLINOMIO FOR COMPLETO
// EX: X^0 + X + X^2 FUNCIONA!!!
//     X^0 + X^2 NÃO FUNCIONA!!!
buceta=0
for i=1:2 // grau polinomio + 1
    buceta = buceta + cum(i)*(x_pol^(i-1))
end
disp(buceta)