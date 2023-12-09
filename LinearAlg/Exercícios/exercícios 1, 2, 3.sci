///////////////////////////////////////////////////////////////////////////////////////

// 1º exercício
A = zeros(7,7)

A(1,2) = 1; A(1,4) = 10
A(2,2) = 1; A(2,6) = 15
A(3,1) = 1; A(3,2) = -1; A(3,7) = -15
A(4,1) = 1; A(4,3) = 30
A(5,1) = 1; A(5,5) = 10
A(6,4) =1; A(6,6) = 1; A(6,7) = 1
A(7,3) = 1; A(7,5) = 1, A(7,7) = -1


b = zeros(7,1)
b(2) = 3
b(5) = 3

x = A\b

///////////////////////////////////////////////////////////////////////////////////////

// 2º exercício

// N: Matriz Estequiométrica

// (N)i,j representa o coeficiente da substância j na i-ésima reação 
// (o sinal é positivo se a substância estiver do lado direito e 
// negativo caso contrário, se uma mesma substância estiver dos dois lados, 
// faz-se a soma dos coeficientes levando em conta o sinal).

N = [-2 0 -2 0 2 0 0;..
     0 -1 -1 3 0 0 0;..
     -1 0 0 2 -3 2 0;..
     0 0 0 -1 0 -1 3]


// R é a matriz coluna com as taxas de produção/consumo das substâncias.
R = [-1.5;-0.91;-1.2;1.6;-0.24;0.88;1.3]

// tau é a matriz coluna com a taxa de reação de cada uma das reações.
tau = (N*N')\(N*R) // N' denotes the transpose of N
    

///////////////////////////////////////////////////////////////////////////////////////

// 3 º exercício

n = 50
A = zeros(n,n)

// primeira equação
A(1,:) = n:-1:1  // começa com n vai descrementando de -1 em -1 até 1

// miolo
for i=2:n-1
    A(i,i-1) = 2; A(i,i) = -4; A(i,i+1) = 3
end

// última equação
A(n,:) = 1:n

disp(1/ rcond(A)) // pra saber que confiança se pode ter matriz inversa

// estimativa na norma 2 para o erro relativo na solução se o erro relativo dos coeficientes bi for igual a 10^-9.
disp(norm(inv(A),2)*norm(A,2)*1e-9) // erro relativo = 10^-5 => confiança até o quarto dígito


// bah, não lembro o que é essa parte de baixo


n = 58;
A = zeros(n, n);
b = zeros(n, 1);

A(1, 1) = 1;
A(1, 2) = -1;
b(1) = 0;

for i = 2:n-1
    A(i, i-1) = 2;
    A(i, i) = -6;
    A(i, i+1) = 3;
    b(i) = sin((i-1)/(n-1) * %pi);
end

A(n, n-2) = -1;
A(n, n-1) = 3;
A(n, n) = 1;
b(n) = 0;

x = A \ b;

disp(norm(x, 2));



h=0.0125
n=1/h+1
A=zeros(n,n)
b=zeros(n,1)
xi=linspace(0,1,n)
for i=2:n-1
     A(i,i-1)=2*(2-xi(i))+h
     A(i,i)=-4*(2-xi(i))
     A(i,i+1)=2*(2-xi(i))-h
     b(i)=-2*h^2*sin(xi(i)).^2
end
A(1,1)=1;A(1,5)=-2;A(1,6)=3
b(1)=0
A(n,n)=3;A(n,n-1)=-4;A(n,n-2)=1
b(n)=0
u=A\b
j=0.25*(n-1)+1
disp(u(j))

///////////////////////////////////////////////////////////////////////////////////////








