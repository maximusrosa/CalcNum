///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear  
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////

n = 45; 
A = zeros(n, n);

// Primeira Linha
A(1,1) = -1; A(1,2) = 3;


// Última Linha
A(n, n-1) = 1; A(n, n) = -3;


// Miolo
for i = 2: n - 1
    A(i, i-1) = 1;
    A(i,i) = -3;
    A(i,i+1) = 1;
end


// (b)i = cos((i-1/n-1) * (%pi ./ n -1)) para i = 1, 2, ..., n
for i = 1: n
    b(i) = cos((i - 1) * (%pi ./ (n -1)));
end

x = A\b;

//x = gpp([A, b]);

x(3)
