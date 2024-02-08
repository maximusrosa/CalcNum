function y = runge_kutta_ord2(f, a, b, y0, n)
    h = (b - a) / n;
    y = zeros(n+1, 1);
    y(1) = y0;
    x = a;
    for i = 1:n
        k1 = f(x, y(i));
        k2 = f(x + h, y(i) + h*k1);
        y(i+1) = y(i) + h/2 * (k1 + k2);
        //printf("x = %.10f, y = %.10f\n", x, y(i+1));
        x = x + h;
    end
endfunction

function z = f(x, y)
    z = sqrt(x*y - 1)
endfunction

// Valor inicial
// y(1) = 2
y0 = 2;
x0 = 1;

// Intervalo
a = x0; // Inicial (x0)
b = 1.4; // Final

// Número de passos
n = 4;

aproxs = runge_kutta_ord2(f, a, b, y0, n);
// aproxs é o vetor com as aproximações da função
// aprox(0) é o y inicial, aproxs(numero_de_passos + 1) é o y final
// Tem 10 passos, então o valor final é aproxs(11)

disp(aproxs(5))


