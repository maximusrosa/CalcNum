function y = runge_kutta_ord4(f, a, b, y0, n)
    // f: função derivada
    // a: valor inicial do intervalo x
    // b: valor final do intervalo x
    // y0: valor inicial de y
    // n: número de passos

    // h: tamanho do passo
    h = (b - a) / n;
    
    x = a;
    y = zeros(n+1, 1);

    linspace_x(1) = x;
    y(1) = y0;

    for i = 1:n
        k1 = f(x, y(i));
        k2 = f(x + h/2, y(i) + (h/2)*k1);
        k3 = f(x + h/2, y(i) + (h/2)*k2);
        k4 = f(x + h, y(i) + h*k3);    

        y(i+1) = y(i) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);

        linspace_x(i+1) = x;
        x = x + h;
    end

    // Aproximação da função
    plot(linspace_x, y);

endfunction

/*
// Intervalo
a = 0; // Inicial
b = 1; // Final

// Valor inicial
y0 = 1;

// Número de passos
n = 10;

P = runge_kutta_ord4(f, a, b, y0, n);
// P é a vetor com as aproximações
// P(0) é o y inicial, P(numero_de_passos + 1) é o y final
// Tem 10 passos, então o valor final é P(11)
*/
