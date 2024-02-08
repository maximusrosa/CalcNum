// Aproxime a integral de 1/4 até 1 de x * exp(-9*x^2)
// usando a quadratura gaussiana.

function y = f(x)
    y = sin(sin(sin(x)))
endfunction

a = 0
b = 10

nos = 3     // grau do polinomio de legendre
interv = 32

I_aprox = quad_gauss_interv(a,b,f,nos,interv)
disp(I_aprox)