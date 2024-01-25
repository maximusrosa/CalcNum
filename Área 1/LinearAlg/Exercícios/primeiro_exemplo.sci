// utilizando sistemas lineares para resolver equações diferenciais (kkkkkk)

// rcond(A) é uma estimativa para a recíproca da condição de X na norma-1.
// Se X é bem condicionada, rcond(X) é próximo a 1. Senão, rcond(X) é próximo a 0.
// Problemas mal-condicionados são problemas em que os erros se propagam de forma mais relevante.

N = 101 // número de nós (pontos) na aproximação (na malha)

h = %pi/(N - 1) // espaçamento entre os pontos da malha

// Matriz de coeficientes N-1 X N-1
A = zeros(N - 1, N - 1)

// Atribuir os coeficientes não-nulos
A(1,1) = - (2-h^2); A(1,2) = 1


// linhas que seguem o padrão de diagonal tripla
for i = 2: N - 2
    A(i, i-1) = 1; A(i,i) = - (2-h^2); A(i,i+1) = 1
end

// última linha, que é diferente

A(N-1, N-3) = 1; A(N-1, N-2) = -4; A(N-1,N-1) = 3

// Matriz coluna das constantes
b = zeros(N-1,1)
b(N-1) = -2*h

// As aproximações são soluções de Ay = b

y = A\b         //divisão de matrizes
y = [0;y]

x = linspace(0, %pi, N)

scf(0)
plot(x,y,'.b') // aproximações
plot(x, sin(x), '-r') // função exata
xgrid


// Gráfico dos erros nas aproximações
scf(1)
plot(x, abs(y - sin(x'))) // a linha é pra transpor a matriz pra ajustar as dimensões
xgrid
