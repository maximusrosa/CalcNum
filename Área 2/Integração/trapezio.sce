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

function S = num_integral_trapezio(f,a,b,n) //f = função; a = inicio; b = fim; n = numero de intervalos
    h = (b-a)/n // tamanho de cada intervalo
    x = linspace(a,b,n+1) //calcula os pontos (1,2,3,...) dado o intervalo
    S = 0
    for i = 1:n
        x1 = x(i)
        x2 = x(i+1)
        
        A1 = 1/2
        A2 = 1/2
        
        dS = (f(x1)+f(x2))/2*h //área do trapézio <<<< versão curta, a fórmula bonita é (A1*f(x1)+A2*f(x2))/h, sendo que A1 = A2 = 1/2 >>>>
        
        S = S+dS //área total
    end
endfunction