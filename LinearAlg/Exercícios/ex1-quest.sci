///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear  
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////

// Exercício 1 - Questionário Sistema de Equações Lineares

n = 150;
A = zeros(n, n);

A(1,1) = 2;
A(n,n) = 2;

A(1,2) = -1;
A(n,n-1) = -1;

// miolo
for i = 2: n - 1
    A(i, i-1) = -1;
    A(i,i+1) = -1;
    A(i,i) = 2; 
end

// Exemplo de matriz nesse formato:
//      2 -1  0  0  0
//     -1  2 -1  0  0
//      0 -1  2 -1  0
//      0  0 -1  2 -1
//      0  0  0 -1  2

b = zeros(n, 1);

// (b)i = 0.01 cos(0.05i) para i = 1, 2, ..., n
for i = 1: n
    b(i) = 0.01 * cos(0.05 * i);
end

//disp("Matriz A:")
//disp(A)
//disp("Vetor b:")
//disp(b)

disp("Maior componente do vetor solução do sistema:")
disp(max(A\b))