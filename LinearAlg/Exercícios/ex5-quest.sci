///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear  
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////

// Exercício 5 - Questionário Sistema de Equações Lineares

A = [16 -1  3   11; .. 
     8   2  -9   7; ..
     4 -10  13 -18; ..
     6  -4  -2   9];

b = [15; -22; 5; -7];


x1 = A\b;

x2 = gpp([A, b]);

isEqual = and(x1 == x2); // dá false, mas são iguais até a 7ª casa decimal

x2(1) * x2(2) - x2(4)