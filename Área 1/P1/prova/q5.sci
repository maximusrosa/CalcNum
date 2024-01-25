mode(0)

function y = f(x)
    y = (x^5) * log(x^3) - 2
endfunction

x0 = 1.1;
x1 = 1.6;

tol = 1e-10;
max_itr = 5;

fsolve_sec(x0,x1,f,tol,max_itr)
