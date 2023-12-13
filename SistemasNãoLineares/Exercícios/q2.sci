// Definição das equações
function z=feq1(x,y)
    z = 3*x^3 - y^5;
endfunction

function z=feq2(x,y)
    z = 3*x*y^2 - sin(x^3) - 1;
endfunction

x0 = [0.5;1.1]
    
// A função F, que representa o sistema
function s = F(v)
    x = v(1); y = v(2);
    
    s(1) = feq1(x,y);
    s(2) = feq2(x,y);
endfunction

// A função que retorna a jacobiana de F
function s = J(v)
    x = v(1); y = v(2);
    
    s(1,:) = [9*x^2, -5*y^4];
    s(2,:) = [3*y^2 - cos(x^3) * 3*x^2, 6*y*x];
endfunction

// Newton-Raphson 
[w,fw,niter]=fsolve_nr(x0,F,J, 1e-3, 3);

disp(w(1) - w(2))






