function y = phi()
    y = x - exp(-x)
endfunction

x = 0.5 //aproximação inicial
disp(x)

// a derivada tem que assumir o menor valor possível

for i = 1:30 
    x = phi(x)
    disp(x)
end
