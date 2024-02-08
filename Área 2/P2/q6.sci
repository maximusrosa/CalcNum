// Seja u' = sin(2t - u) com u(1) = 2. Aproxime u(5) com 6 dígitos significativos
// utilizando qualquer método.

// Ou seja, eu tenho a DERIVADA de u(t) (não a função u)
// e eu quero saber o valor de u(t) em um ponto específico.

// du/dt = f(t,u)
function dut = f(t, u) 
    dut = sin(2*t - u);
endfunction

// u(1) = 2
u0 = 2; // retorno de u
t0 = 1; // parâmetro de u

t_final = 5

// O resultado é o valor aproximado de u(5)
u = euler(u0,t0,t_final,f,10e-6)
disp(u)