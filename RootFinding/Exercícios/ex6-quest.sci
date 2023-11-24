///////////////////////// INICIALIZAÇÃO  /////////////////////////////

clear       // limpa as variáveis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////



// Exercício 6 - Questionário Equações Não Lineares
// A equação de ponto fixo x=-1/(x^2-x-2) possui 3 pontos fixos, porém o método é convergente somente para:
// a) x = -1.246012
// b) x = 2.000000 (nem é ponto fixo)
// c) x = 0.000000 (nem é ponto fixo)
// d) x = 0.445041
// e) x = 1.815224


//////////////////////////// SOLUÇÃO ////////////////////////////////

function y = g(x)
    y = -1./(x.^2 - x - 2);
endfunction


function y = g_linha(x)
    y = (2.*x - 1)./(x.^2 - x - 2).^2;     
    // precisa adicionar o ponto em multiplicação e exponenciação 
    // quando ambos os operandos forem vetores.
    // Já na divisão, se um deles for vetor, tem que colocar

endfunction


//  main():

    ptos_fixos = [-1.246012, 0.445041, 1.815224] 
    gl_ptos_fixos = g_linha(ptos_fixos)

    // 0 < g'(x) < 1 para Métodos de Ponto Fixo funcionarem
    mask = abs(g_linha(ptos_fixos)) < 1;

    convergente = ptos_fixos(mask);

    disp('Convergente: ' + string(convergente))

    // obs: se f'(x) = 0 a convergência é linear
