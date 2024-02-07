/*
Entrada: 
    vetores X=(x0,x1,...xn) e Y=(y0,y1,...,yn), onde yi=f(xi) para i=0,1,2...,n.
         
Saída: 
    coef=(a0,a1,...,an), onde p(x)=a0+a1*x+a2*x^2+...+an*x^n é um polinômio tal
    que p(xi)=yi para i=0,1,2...,n.
*/
function coef = interpol_vander(X,Y)
    n = length(X)
    MtxVander = zeros(n)
    for i = 1:n
        for j = 1:n
            MtxVander(i,j) = X(i)^(j-1)
        end
    end
    coef = MtxVander\Y
endfunction

/*
// Testes

X = [-1;0;2]
Y = [4;1;-1]

coef = interpol_vander(X,Y)

p = poly(coef,"x","coeff")

disp(p)
*/
