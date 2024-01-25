mode(0)

function w = feq1(x, y)
    w = x^4 + 2*x*y - 2*y
endfunction

function w = feq2(x, y)
    w = (sin(2*x)^6) + (cos(y)^12) + x^2 + y^2 - 1.5
endfunction

contour(x, y, feq1, [0 0])
contour(x, y, feq2, [0 0])

function s = F(v)
    x = v(1); y = v(2);
    
    s(1) = feq1(x,y);
    s(2) = feq2(x,y);
endfunction

function s = J(v)
    x = v(1);
    
    s(1,:) = [4*x^3,        4*y^3,     4*z^3]
    s(2,:) = [-exp(x),      exp(x),     -2*z]
endfunction

//x0 = [0; -4; 1];
//x1 = fsolve_nr(x0, F, J);

//x0 = [0; -4; 1];
//x2 = fsolve_nr(x0, F, J);


