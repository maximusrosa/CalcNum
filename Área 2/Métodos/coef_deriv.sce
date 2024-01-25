function x = coef_deriv(s,h)
    n = length(h);
    A = zeros(n,n);
    for i = 1:n
        for j = 1:n
            A(i,j) = h(j)^(i-1);
        end
    end
    b = zeros(n,1);
    for i = 1:n
        b(i,1) = (i-1)*s^(i-2);
    end
    x = inv(A)*b;
endfunction
