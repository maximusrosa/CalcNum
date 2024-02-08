// Seja u' = t + 11 - u com u(1) = 2. Aproxime u(3) com h = 0.1
// utilizando o método de Euler.

// Ou seja, eu tenho a DERIVADA de u(t) (não a função u)
// e eu quero saber o valor de u(t) em um ponto específico.

// du/dt = f(t,u)
function dut = f(t, u) 
    dut = t + 11 - u;
endfunction

// u(1) = 2
u0 = 2; // retorno de u
t0 = 1; // parâmetro de u

//quer u(3)
t_final = 3

// O resultado é o valor aproximado de u(5)
u = euler(u0,t0,t_final,f,0.1)
disp(u)