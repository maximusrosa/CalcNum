function S = trapezio(a, b, f)
    S = (f(a) + f(b))/2*(b-a);
endfunction

function S = trapezio_conj(a, b, f, n)
    x = linspace(a, b, n+1);
    S = 0;
    for i = 1:n
        S = S + trapezio(x(i), x(i+1), f);
    end
endfunction
