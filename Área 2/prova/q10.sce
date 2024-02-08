// Utilize o método do simpsonj com 20 intervalos para calcular a integral da função
// F(x) no intervalo [2, 8].

// Primitiva
function y = F(x)
    y = exp(-x)
endfunction

a = 2;
b= 8;
interv = 2

I_aprox = simpson_conj(a, b, F, interv)

disp(I_aprox)
