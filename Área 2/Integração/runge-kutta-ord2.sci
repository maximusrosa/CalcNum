function y = runge_kutta_ord2(f, a, b, y0, n)
    h = (b - a) / n;
    y = zeros(n+1, 1);
    y(1) = y0;
    x = a;
    for i = 1:n
        k1 = f(x, y(i));
        k2 = f(x + h, y(i) + h*k1);
        y(i+1) = y(i) + h/2 * (k1 + k2);
        printf("x = %.10f, y = %.10f\n", x, y(i+1));
        x = x + h;
    end
endfunction

function z = f(x, y)
    z = -x*y
endfunction

// Intervalo
a = 0; // Inicial
b = 1; // Final

// Valor inicial
y0 = 1;

// Número de passos
n = 10;

P = runge_kutta_ord2(f, a, b, y0, n);
// P é a matriz com as respostas
// P(0) é o y inicial, P(numero_de_passos + 1) é o y final
// Tem 10 passos, então o valor final é P(11)


