function x = coef_passo_multiplo_parcial(s,h)
    n = length(h);
    A = zeros(n,n);
    for i = 1:n
        for j = 1:n
            A(i,j) = (h(j)-s+1)^(i-1);
        end
    end
    b = zeros(n,1);
    for i = 1:n
        b(i,1) = 1/i;
    end
    x = inv(A)*b;
endfunction

function x = coef_passo_multiplo(s1,s2,h)
    x = zeros(length(h),1);
    for i = 0:s1-s2-1
        x = x + coef_passo_multiplo_parcial(s1-i,h);
    end
endfunction
