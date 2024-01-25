mode(0)

function y = f(x)
    y = ((x - 199)^4) - 2*cos(x)
endfunction

x = linspace (-100, 100, 2000);
plot(x, f(x), '-b', 'LineWidth', 1.25)
xgrid(1);

x1 = fsolve_sec(0,100,f)

x2 = fsolve_sec(300,400,f)

abs(x2 - x1)
