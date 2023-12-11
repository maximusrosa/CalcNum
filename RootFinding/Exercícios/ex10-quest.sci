///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear   
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


function y = df(x)
    y = 3*x^2 - 8*x + 5
endfunction


function y = df2(x)
    y = 6*x - 8
endfunction


function y = g(x)
    y = x - f(x)./df(x)
endfunction


function y = dg(x)
    y = 1 - (df(x)*df(x) - f(x)*df2(x)) ./ (df(x))^2
endfunction


// Explicação: O método de Newton é um caso específico do método de ponto fixo, onde g(x) = x - f(x)/f'(x).
// Para todo método de ponto fixo, é válido que:

// |g'(r)| < 1 -> converge
// g'(r) = 0 -> converge quadráticamente: o número de dígitos corretos ao menos dobra a cada iteração

printf(" Testando a convergência:\n")
printf(" dg(1) = %f\n", dg(1))              // deu divisão por zero
printf('\n')


[xEstrela, num_itr] = fsolve_nr(1.4, f, df)  // converge após 24 iterações

printf('\n')

[xEstrela, num_itr] = fsolve_nr(2.1, f, df)  // converge após 5 iterações
