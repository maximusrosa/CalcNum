function S = riemann_esq(a, b, f)
    S = f(a) * (b - a);
endfunction

function S = riemann_esq_conj(a, b, f, n)
    x = linspace(a, b, n+1);
    S = 0;
    for i = 1:n
        S = S + riemann_esq(x(i), x(i+1), f);
    end
endfunction
