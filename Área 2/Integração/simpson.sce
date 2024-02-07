function S = simpson(a, b, f)
    S = (f(a) + 4*f((a+b)/2) + f(b))/6*(b-a);
endfunction

function S = simpson_conj(a, b, f, n)
    x = linspace(a, b, n+1);
    S = 0;
    for i = 1:n
        S = S + simpson(x(i), x(i+1), f);
    end
endfunction
