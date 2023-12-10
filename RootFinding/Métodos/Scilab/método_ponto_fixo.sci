clear
clc
mode(0)

function x = fsolve_pf(g, x0, tol, max_iter)

    if nargin < 3 then
        tol = 1e-6;  // Default tolerance
    end
    if nargin < 4 then
        max_iter = 100;  // Default maximum number of iterations
    end
    
    x = x0;
    iter = 0;
    
    while abs(g(x) - x) > tol && iter < max_iter
        x = g(x);
        iter = iter + 1;
    end
    
    if iter == max_iter
        disp("Maximum number of iterations reached.");
    else
        printf("Zero found at x = %.6f\n", x)
    end

endfunction