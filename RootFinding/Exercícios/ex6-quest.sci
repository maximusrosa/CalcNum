///////////////////////// INICIALIZAÇÃO  /////////////////////////////

clear       // limpa as variáveis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////



// Exercício 6 - Questionário Equações Não Lineares
// A equação de ponto fixo x=-1/(x^2-x-2) possui 3 pontos fixos, porém o método é convergente somente para:

// a. -1.246012
// b. 2.0
// c. 0.0
// d. 0.445041
// e. 1.815224


//////////////////////////// SOLUÇÃO //////////////////////////////////

// derivada de -1/(x^2-x-2)
function y = f(x)
    y = 2.*x - 1./(x.^2 - x - 2).^2;     
    // precisa adicionar o ponto em multiplicação e exponenciação 
    // quando ambos os operandos forem vetores.
    // Já na divisão, se um deles for vetor, tem que colocar

endfunction


// 0 < phi'(x) < 1 para Métodos de Ponto Fixo funcionarem
// se f'(x) = 0 a convergência é linear

x = [-1.246012, 0.445041, 1.815224]
fx = f(x)

// Crie um vetor x de -10 a 10 com incrementos de 0.1
//x = -10:0.1:10;

// Calcule f(x) para esses valores de x
//y = f(x);

// Plote o gráfico de f(x)
//plot(x, y);