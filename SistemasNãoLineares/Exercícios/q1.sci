// Definição das equações
function w=feq1(x,y,z)
    w = x^3 + x^2*y - x*z + 6;
endfunction

function w=feq2(x,y,z)
    w = exp(x) + exp(y) - z;
endfunction

function w=feq3(x,y,z)
    w = y^2 - 2*x*z;
endfunction

x0 = [1;-2;1]
    
// A função F, que representa o sistema
function s = F(v)
    x = v(1); y = v(2); z = v(3);
    
    s(1) = feq1(x,y,z)
    s(2) = feq2(x,y,z)
    s(3) = feq3(x,y,z)
endfunction

// A função que retorna a jacobiana de F
function s = J(v)
    x = v(1); y = v(2); z = v(3);
    
    // 's' = vetor de saída
    s(1,:) = [3*x^2 + 2*x*y - z, x^2, -x]
    s(2,:) = [exp(x), exp(y), -1]
    s(3,:) = [-2*z, 2*y, -2*x]
endfunction

// Newton-Raphson 
[w,fw,niter]=fsolve_nr(x0,F,J)

disp(norm(w, 2))






