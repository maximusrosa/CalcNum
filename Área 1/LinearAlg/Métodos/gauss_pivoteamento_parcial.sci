function [x,E]=gpp(C)
/////////////////////////////////////////////
// Método de Gauss com pivoteameto parcial.//
/////////////////////////////////////////////

// O programa possui duas partes: 
//    i) escalonamento da matriz <=> deixar ela triangular superior
//   ii) substituição reversa.

// Variável de entrada.
//
// C -> matrix completa de um sistema de equações lineares da forma A*x=b:
// C=[A b].

// Variável de saída.
//
// x -> solução do sistema.
// E -> matriz C escalonada.

// Variáveis auxiliares.
//
// n -> número de linhas da matriz completa.
// m -> número de colunas da matriz completa.
// i -> indexador de linha.
// j -> indexador de coluna.
//
// pivo        -> guarda o elemento pivô.
// linha_pivo  -> guarda o índice de linha de um elemento pivô.
// troca_linha -> variável booleana que indica a necessidade de pivoteamento.
// linha_aux   -> guarda uma das linhas a ser trocada.
// lin_int     -> intervalo das linhas da submatriz a ser escalonada.
// col_int     -> intervalo das colunas da submatriz a ser escalonada.


//número de linhas de C
n=size(C,1)

// número de colunas de C
m=size(C,2)

// Partimos da hipótese de que a matriz de coeficientes não é singular.
C_sing=%F

//
// ESCALONAMENTO DA MATRIZ
//
// Ao final desta etapa, C terá a forma de uma matriz trinagular superior.

// Laço da coluna 1 à coluna "n-1"
for j=1:n-1
    
    // Inicialmente o elemento da diagonal (j,j) é considerado pivô.
    pivo=C(j,j)
    // A cada coluna, a necessidade de pivoteamento deve ser verificada.
    troca_linha=%F

    // Verificação da necessidade de pivoteamento.
    // O laço da linha "j+1" à linha "n" busca um elemento suficientemente maior
    // em valor absoluto (o fator 2 evita trocas por diferenças pequenas).
    for i=j+1:n
        if abs(C(i,j))>2*abs(pivo) then
            troca_linha=%T
            // O índice da linha é guardado para posterior troca.
            linha_pivo=i
            // O pivô é atualizado.
            pivo=C(i,j)
        end
    end

    // Pivoteamento parcial (se necessário).
    if troca_linha then
        linha_aux=C(j,:)
        C(j,:)=C(linha_pivo,:)
        C(linha_pivo,:)=linha_aux
    end

    // Escalonamento da submatrix com índices de linha entre "j+1" a "n"
    // e de coluna entre "j+1" a "m"
    lin_int=j+1:n
    col_int=j+1:m
    C(lin_int,col_int)=C(lin_int,j)*C(j,col_int)/pivo - C(lin_int,col_int)
    // Eliminação dos elementos abaixo do pivô na j-ésima coluna. 
    C(lin_int,j)=zeros(n-j,1)
    // Testa se a mtriz é singular
    C_sing = (C_sing)|(C(j+1,j+1)==0) 
end

//
// SUBSTITUIÇÃO REVERSA.
//
// 

// Se a matriz de coeficientes não é singular a solução é unica e pode ser
// calculada através da substituição reversa. Caso contrário, x assume um
// valor vazio.
if ~C_sing then
    x(n,:)=C(n,n+1:m)/C(n,n)
    for i=n-1:-1:1 
        x(i,:)=(C(i,n+1:m)-C(i,i+1:n)*x(i+1:n,:))/C(i,i)
    end
else
    x=[]
    warning("A matriz de coeficientes é singular!")
end

E=C
endfunction
