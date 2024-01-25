function [x,niter]=gseidel(C,x0,tol,Nit,nor)
////////////////////////////
// Método de Gauss-Seidel.//
////////////////////////////

// Variável de entrada.
//
// C   -> matrix completa de um sistema de equações lineares da forma A*x=b:
// C=[A b]. A matriz A não pode possuir elementos nulos na diagonal principal
// x0  -> aproximação inicial.
// tol -> tolerância na diferença relativa entre duas aproximações 
// consecutivas (calculada na norma ).
// Nit -> limite superior para o número de iteradas.
// nor -> norma utilizada na estimativa de tolerância.

// Variável de saída.
//
// x     -> solução do sistema.
// niter -> número de iteradas utilizadas.

// Variáveis auxiliares.
//
// n -> número de linhas da matriz completa.
// m -> número de colunas da matriz completa.
// i -> indexador de linha.
//
// contador -> guarda o número de iteradas realizadas.
// segue    -> variável booliana. Controla o fluxo de execução das iteradas.
//
// UL      -> A matriz A é decomposta na soma A := D-(U+L), onde D é diagonal
// U é triangular superior e L, triangular inferior. A matriz UL é definida
// como a soma (U+L).
// invD_b  ->  D^(-1)*b.
// invD_UL ->  D^(-1)*(U+L).

// Inicialização das variáveis auxiliares

n=size(C,1);
m=size(C,2);
segue=%T
contador=0

// Checagem inicial
if (n>m)|(prod(diag(C))==0) then
    error('Problema sobredeterminado ou singular.',42)
end

// Caso não tenha sido definida na chamada da função, a aproximação inicial
// é definida como o elemento nulo.
if ~isdef('x0','local') then
    x0 = zeros(n,m-n)
end

// Caso não tenha sido definida na chamada da função, a  tolerância recebe 
// o valor 1e-10.
if ~isdef('tol','local') then
    tol = 1e-10
end

// Caso não tenha sido definida na chamada da função, o limite superior para
// as iteradas recebe o valor 4*(m-n)*n^2.
if ~isdef('Nit','local') then
    Nit = 4*(m-n)*n^2
end

// Caso não tenha sido definida na chamada da função, a norma a ser utilizada
// é definida como "inf".
if ~isdef('nor','local') then
    nor = "inf"
end

// Matriz (U+L).
UL=-C(:,1:n)
for i=1:n
    UL(i,i)=0
end

// Matriz D^(-1)*b.
invD_b = zeros(n,m-n)
for i =1:n
    invD_b(i,:) = C(i,n+1:m)/C(i,i)
end

// Matriz D^(-1)*(U+L).
invD_UL=zeros(n,n)
for i=1:n
    invD_UL(i,:) = UL(i,:)/C(i,i)
end

// Laço principal.

x=x0
while segue
    contador = contador + 1
    for i=1:n
        x(i,:)=invD_b(i,:)+invD_UL(i,:)*x
     end
     segue = ~( (norm(x-x0,nor)<=tol*norm(x,nor))|(contador>=Nit) )
     x0=x
end

// Saída de dados.

if contador>=Nit then 
    warning('Não houve convergência.')
end

niter=contador

endfunction