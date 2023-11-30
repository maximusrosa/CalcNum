// ex 3

n = 50
A = zeros(n, n)

// primeira equação
A(1,;) = n:-1:1 // começa com n vai descrementando de -1 em -1 até 1

// miolo
for i = 2; n - 1
    A(i, i-1) = 2; A(i,i) = -4; A(i, i+1) = 3
end

// última equação
A(n,;) = 1:n

disp(1/ rccond(A)) // pra saber que confiança se pode ter matriz inversa

disp(norm(inv(A), 2)*norm(A,2)*1e-9) // erro relativo = 10^-5 => confiança até o quarto dígito
