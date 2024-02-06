// Chame euler(0.01) no painel do scilab, o valor da resposta é o resultado
// 0.01 é o intervalo

// * alteráveis

function y=f(t, u)
    y = sin(2*t - u) // *
endfunction

function [ultimo]=euler(h) // h = intervalo
    u(1) = 2;       // condição inicial * u(2) = << 1 >>
    t(1) = 1;       // tempo inicial * u(<<2>>)
    T = 5;          // tempo final * aproxime u(<<4>>)
    N = (T-t(1))/h
    
    for n = 1:N
        t(n+1) = t(n)+h;
        u(n+1) = u(n)+h*f(t(n),u(n));
    end
    
    ultimo = u(N+1);
    disp(ultimo)
    //plot(t,u,'ro-')
endfunction



// Detalhes:

// ordem de precisao: depende do erro do termo anterior, e é proporcional ao valor de h  -  O(h³): ordem 2
// erro de truncamento local (ETL): em uma iteração, é proporcional a h²/2*|u''|  -  O(h²): ordem 1
// erro de truncamento global: depois de fazer n iterações, proporcional a Th/2|u''|  -  O(h)


// CONVERGÊNCIA: un tende à solução do problema -> o método de Euler é convergente

// CONSISTÊNCIA: se lim(ETL/h) = 0 quando h tende a 0, então o método é consistente

// ESTABILIDADE: |1 + hλ| < 1
// Domínio de estabilidade de Euler: conjunto de todos os z tal que |1+z| < 1
// z = hλ

// Teorema: um método número consistente é convergente sss ele é estável

// metodo de euler implicito: un+1 = un + h*f(tn+1,un+1)
// necessário utilizar junto método de Newton e da bissecção
// vantagem: esse método é incondicionalmente estável: sempre estável independente do valor de h

// método trapezoidal também é implícito: un+1 = un + h/2 * (f(tn,un) + f(tn+1, un+1))
// vantagens: é incondicinalmente estável e o erro é de ordem 2
