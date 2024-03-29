function P = difDiv(X,Y,n)
    Mmem = zeros(n,n)
    
    for i = 1:n
        Mmem(i,i) = Y(i)
    end
    
    for i = 2:n
        for j = i:n
            Mmem(j-i+1,j) = (Mmem(j-i+2,j) - Mmem(j-i+1,j-1)) / (X(j) - X(j-i+1))
        end
    end
    
    P = Mmem(1,:)
endfunction

function y = interpol_newton(X,Y,x)
    n = length(X)
    P = difDiv(X,Y,n)
    
    for i = 1:n
        for j = 1:i-1
            P(i) = P(i) * (x - X(j))
        end
    end
    y = sum(P)
endfunction

/*
// Testes

X = [-1 0 3]
Y = [15 8 -1]

x = 2

y = interpol_newton(X,Y,x)

disp(y)
*/
