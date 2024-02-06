clear

x = 0:0.1:1
y = sin(x') + 1
n = length(x)

grau_p = 1

// Matriz A
for i=1:grau_p+1
    for j=1:grau_p+1
        A(i,j) = sum(x.^(i+j-2))
    end
end

y = log(y) // Função tranformação (da tabela)

// Vetor B
for i = 1:grau_p+1
    b(i)= sum(y.*(x.^(i-1))')
end

X = inv(A)*b
disp(X, "SOLUÇÃO SISTEMA:")