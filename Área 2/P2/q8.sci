// Seja I a integral de 0.1 à 0.6 de 2 + cos(x) dx. Seja I* o valor da aproximação de I dada pela regra do trapézio.
// Forneça o valor de |I - I*|

// Primitiva
function y = F(x)
    y = 2 + cos(x);
endfunction

// Integral
function I = f(x)
    I = 2*x + sin(x);
endfunction

I = f(0.6) - f(0.1)

I_aprox = num_integral_trapezio(F, 0.1, 0.6, 5)

disp(abs(I - I_aprox))

