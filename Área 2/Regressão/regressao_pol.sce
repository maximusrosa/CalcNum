/*
Ajuste de curvas (regressão) por um polinômio de grau p

Entradas: 
    Dois conjunto X=[x1,x2,...,xn], Y=[y1,y2,...,yn] onde yi=f(xi) 
    para i = 1,2,...,n e um inteiro p determinando o grau do polinômio
    que será usado para o ajuste
    
Saída:
    Um vetor coef contendo os coeficientes do polinômio que se ajusta aos 
    pontos dados   
*/
function coef = regressao_pol(X,Y,p)
    n = length(X)
    
    M = zeros(p+1,p+1)
    for i = 0:p
        for j = i:p+i
            for k = 1:n
                M(i+1,j-i+1) = M(i+1,j-i+1) + X(k)^j
            end
        end
    end
    
    B = zeros(p+1,1)
    for i = 0:p
        for j = 1:n
            B(i+1,1) = B(i+1,1) + Y(j)*X(j)^i
        end
    end
    
    coef = M\B

endfunction


/*
Testes

X = [1 2 3 4]
Y = [1 4 9 24]

coef = regrecao_pol(X,Y,2)

p = poly(coef,"x","coeff")
disp(p)
*/
