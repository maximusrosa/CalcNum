mode(0)

function w = feq1(x, y, z)
    w = x^4 + y^4 + z^4 - 230
endfunction

function w = feq2(x, y, z)
    w = exp(-x) + exp(y) - z^2
endfunction

function w = feq3(x, y, z)
    w = x^2 + x*y*z + z^4 - 0.15
endfunction

x0 = [0; -4; 1];

function s = F(v)
    x = v(1); y = v(2); z = v(3);
    
    s(1) = feq1(x,y,z);
    s(2) = feq2(x,y,z);
    s(3) = feq3(x,y,z);
endfunction

function s = J(v)
    x = v(1); y = v(2); z = v(3);
    
    s(1,:) = [4*x^3,        4*y^3,     4*z^3]
    s(2,:) = [-exp(x),      exp(x),     -2*z]
    s(3,:) = [2*x + y*z,    x*z,        x*y + 4*z^3]
endfunction

x = fsolve_nr(x0, F, J);

x(1) + x(2) + x(3) // -2.79029
