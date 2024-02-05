function y = L(X,k,x)
    n = length(X)
    
    num = 1
    den = 1
    
    for i = 1:n
        if i <> k then
            num = num * (x-X(i))
        end
    end
    
    for i = 1:n
        if i <> k then
            den = den * (X(k)-X(i))
        end
    end
    
    y = num/den
endfunction

function y = lagrange(X,Y,x)
    n = length(X)
    
    y = 0
    for i = 1:n
        y = y + Y(i)*L(X,i,x)
    end
endfunction

/*
// Testes

X = [-1;0;3]
Y = [15;8;-1]

x = 1

y = lagrange(X,Y,x)

disp(y)
*/
