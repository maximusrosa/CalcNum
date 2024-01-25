mode(0)

function z = f(x, y)
    z = exp(x)  * cos(y);
endfunction

function z = dfx(x, y)
    z = exp(x)  * cos(y);
endfunction

function z = dfy(x, y)
    z = -exp(x)  * sin(y);
endfunction

x = 2.15; y = 0.71;
erro_x = 0.06; erro_y = 0.06;

valor_incerteza = (abs(dfx(x,y)) * erro_x) + abs((dfy(x,y)) * erro_y)
