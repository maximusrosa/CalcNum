///////////////////////// INICIALIZAÇÃO  /////////////////////////////

clear   
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


// Exercício 10 - Questionário Equações Não Lineares
// Seja f(x) = x^3 - 4 x^2 + 5 x - 2. 
// Dadas aproximações iniciais apropriadas, o método de Newton converge 
// para as raízes 1 e 2 com ordem:

// a) não convergirá
// b) 1 em ambos os casos
// c) 2 na raiz x=2 e não converge para x=1.
// d) 1 e 2 respectivamente
// e) 2 em ambos os casos


// f(x) = 0 <=> g(x) = x

function y = f(x)
    y = x^3 - 4*x^2 + 5*x - 2
endfunction


function y = g(x)
    y = (-x^3 + 4*x^2 + 2)./5
endfunction


function y = dg(x)
    y = (-3*x^2 + 8*x)./5
endfunction


// 0 < g'(r) < 1 -> converge
// g'(r) = 0 -> converge quadráticamente

printf(" Testando a convergência:\n")
printf(' dg(1) = %d\n', dg(1))      // dg(1) = 1 -> não converge
printf(' dg(2) = %d\n', dg(2))      // dg(2) = 0 -> converge quadráticamente
printf('\n')



