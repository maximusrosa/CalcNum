clear
clc
mode(0)

function y = f(x)
    y = 2*x - 1./(x^2 - x - 2)^2; // derivada de -1/(x^2-x-2)
    // só precisa adicionar o ponto em multiplicação e exponenciação quando ambos os operandos forem vetores.
    // divisão se um deles for vetor, já tem que colocar
endfunction

// main

// 0 < phi'(x) < 1 para Métodos de Ponto Fixo funcionarem
// se f'(x) = 0 a convergência é linear

x = [-1.246012, 0.445041, 1.815224]
fx = f(x)
