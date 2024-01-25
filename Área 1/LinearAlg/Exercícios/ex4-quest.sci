///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear  
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////

// Exercício 4 - Questionário Sistema de Equações Lineares

n = 58; // n >= 4
A = zeros(n, n);

// Primeira Linha
A(1,1) = 1; A(1,2) = -1;

// Miolo
for i = 2: n - 1
    A(i, i-1) = 2;
    A(i,i) = -6;
    A(i,i+1) = 3;
    
end

// Última Linha
A(n, n-2) = -1; A(n, n-1) = 3; A(n, n) = 1;

// Exemplo de matriz A:
//  1  -1   0   0   0   0   0   0   0   0
//  2  -6   3   0   0   0   0   0   0   0
//  0   2  -6   3   0   0   0   0   0   0
//  0   0   2  -6   3   0   0   0   0   0
//  0   0   0   2  -6   3   0   0   0   0
//  0   0   0   0   2  -6   3   0   0   0
//  0   0   0   0   0   2  -6   3   0   0
//  0   0   0   0   0   0   2  -6   3   0
//  0   0   0   0   0   0   0   2  -6   3
//  0   0   0   0   0   0   0  -1   3   1


// (b)i = sin((i-1) / (n-1) * %pi) para i = 1, 2, ..., n
for i = 1: n
    b(i) = sin((i-1)./(n-1) * %pi);
end

// Exemplo de vetor b:
//  -0.7071068
//   0.7071068
//  -0.7071068
//   0.7071068

sol_padrão = A\b

//norm(gpp([A, b]), 2)

