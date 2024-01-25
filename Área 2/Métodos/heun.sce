// A função f se encontra na forma f(t,u)
function u = heun(u, t, t_fin, f, h)
    n = (t_fin - t)/h;
    for i = 1:n
        util = u + h * f(t, u);
        f1 = f(t, u);
        t = t + h;
        f2 = f(t, util);
        u = u + h * (f1 + f2) / 2;
    end
endfunction
