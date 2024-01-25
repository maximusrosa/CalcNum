function y = f1(x)
    y = 1 + x + ((x)^2)./2 + ((x)^3)./6;
endfunction

function y = f2(x)
    y = 1 + (x)/2 - ((x)^2)./8 + ((x)^3)./16;
endfunction

x = 1.281 * 1e-11

res = x^2 + (x^3)./3
res = f1(-x) - f2(-2*x)

printf("%.30f", res)
