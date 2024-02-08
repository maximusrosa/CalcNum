// Seja u' = (1 / (t + 1)) * cos(u + t +3.55) com u(1) = 0.55.
// Aproxime com 5 dígitos significativos o valor máximo de u(t)
// utilizando qualquer método

// Ou seja, eu tenho a DERIVADA de u(t) (não a função u)
// e eu quero saber o valor de u(t) em um ponto específico.

// du/dt = f(t,u)
function dut = f(t, u) 
    dut = (1 / (t + 1)) * cos(u + t + 3.55);
endfunction

// u(1) = 0.55
y0 = 0.55; // y inicial

x0 = 1; // x inicial
x_final = 100 // x final
              
u = max(runge_kutta_ord4(f, x0, x_final, y0, 1000))

disp(u)
