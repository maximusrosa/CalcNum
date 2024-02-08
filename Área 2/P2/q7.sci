// Utilize o método do trapézio com 20 intervalos para calcular a integral da função
// F(x) = (1 - |x/2|)^3 no intervalo [raiz0, raiz1].

// Primitiva
function y = F(x)
    y = (1 - abs(x/2))^3;
endfunction

raiz0 = -2
raiz1 = 2
interv = 20

I_aprox = trapezio_conj(raiz0, raiz1, F, interv)

disp(I_aprox)