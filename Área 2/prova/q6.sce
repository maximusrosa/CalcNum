// Utilize o método do trapézio com 20 intervalos para calcular a integral da função
// F(x) = (1 - |x/2|)^3 no intervalo [raiz0, raiz1].

// Primitiva
function y = F(x)
    y = exp(-x/2)
endfunction

a = 0
b = 2
interv = 4

I_aprox = trapezio_conj(a, b, F, interv)

disp(I_aprox)

