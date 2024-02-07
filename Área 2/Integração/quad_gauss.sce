function P = poli_legendre(n)
    P = poly([-1 0 1], 'x', 'coeff')^n;
    for i = 1:n
        P = derivat(P);
    end
    P = P / (2^n*factorial(n));
endfunction

function t = nodos_legendre(P)
    t = roots(P);
endfunction

function w = pesos_legendre(t, P)
    w = [];
    for i = 1:length(t)
        w(i) = 2 / ((1 - t(i)^2)*horner(derivat(P), t(i))^2);
    end
endfunction

function S = quad_gauss(a, b, f, nos)
    P = poli_legendre(nos);
    t = nodos_legendre(P);
    w = pesos_legendre(t, P);
    alpha = (b - a)/2;
    bet = (b + a)/2;
    S = 0;
    for i = 1:nos
        S = S + w(i)*f(alpha*t(i) + bet);
    end
    S = S*alpha;
endfunction

function S = quad_gauss_interv(a, b, f, nos, interv)
    x = linspace(a, b, interv+1);
    S = 0;
    for i = 1:interv
        S = S + quad_gauss(x(i), x(i+1), f, nos);
    end
endfunction
