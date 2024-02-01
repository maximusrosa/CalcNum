function S = trapezio(a, b, f)
    S = (f(a) + f(b))/2*(b-a);  // Calcula a área de um trapézio com base `b-a` e alturas `f(a)` e `f(b)`
endfunction

function S = trapezio_conj(a, b, f, n)
    x = linspace(a, b, n+1);  // Cria um vetor `x` com `n+1` pontos igualmente espaçados de `a` a `b`
    S = 0;  // Inicializa a soma total da área como 0
    for i = 1:n  // Para cada par de pontos consecutivos no vetor `x`...
        S = S + trapezio(x(i), x(i+1), f);  // ...adiciona a área do trapézio sob a curva entre esses dois pontos à soma total
    end
endfunction
