// Seja u' = t + 11 - u com u(1) = 2. Aproxime u(3) com h = 0.1
// utilizando o método de Euler.

// Ou seja, eu tenho a DERIVADA de u(t) (não a função u)
// e eu quero saber o valor de u(t) em um ponto específico.

// du/dt = f(t,u)
function dut = f(t, u) 
    dut = u*t;
endfunction

// u(1) = 0.1
u0 = 0.1; // retorno de u
t0 = 1; // parâmetro de u

//quer u(2)
t_final = 2

h = 0.1;

// O resultado é o valor aproximado de u(2)
u = euler(u0,t0,t_final,f, h)
disp(u)
