function y = numeric_derivative(f,x,h)
    if ~isdef('h','local') then
        h = 0.001
    end
    y = (f(x+h)-f(x-h))/(2*h)
endfunction
/*
// Testes
function y = f1(x)
    y = x^2
endfunction
disp(numeric_derivative(f1,0))
disp(numeric_derivative(f1,1))
disp(numeric_derivative(f1,2))
*/
