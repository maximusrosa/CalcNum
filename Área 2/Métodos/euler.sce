// A função f se encontra na forma f(t,u)
function u = euler(u, t, t_fin, f, h)
    n = (t_fin - t)/h;
    for i = 1:n
        u = u + h * f(t, u);
        t = t + h;
    end
endfunction
