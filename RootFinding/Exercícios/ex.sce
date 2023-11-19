function y = phi(x)
    y = x - exp(-x)
endfunction

x = 0.5 //aproximação inicial
disp('Aproximação Inicial: ' + string(x))

// a derivada tem que assumir o menor valor possível

for i = 1:5
    x = phi(x)
    disp(x)
end