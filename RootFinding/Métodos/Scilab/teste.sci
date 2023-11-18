// main


function y = f1(x)
    y = -1/(x^2-x-2)
endfunction

fsolve_bis(f1, 0, 2)
