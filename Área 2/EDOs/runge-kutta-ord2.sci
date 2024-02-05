function y = runge_kutta_ord2(f, a, b, y0, n)
    h = (b - a) / n;
    y = zeros(n+1, 1);
    y(1) = y0;
    x = a;
    for i = 1:n
        k1 = h * f(x, y(i));
        k2 = h * f(x + h, y(i) + k1);
        y(i+1) = y(i) + 0.5 * (k1 + k2);
        x = x + h;
    end
endfunction

/*
Assuma que a curva P(t) para uma determinada população obedeça 
a equação diferencial para uma curva logística P' = a . P - b . P² 
Seja t o tempo em anos e h = 10 o passo. Os valores a = 0.02 e b = 0,0004 
produzem um modelo para a população. Considerando que no ano de 1990 a 
população era de 76,1 milhões, obtenha usando o runge-kutta 2 
uma estimativa para essa população no ano de 2010
*/

function z = f(t, P)
    a = 0.02;  // tá dando errado e tem que rever essa função. o resultado dos outros tava dando 107 milhões por aí
    b = 0.0004;
    z = a*P - b*P^2;    // função cresimento da população.
endfunction

P = runge_kutta_ord2(f, 1990, 2010, 76.1, 2);
disp('População estimada em 2010: ', P(3));
