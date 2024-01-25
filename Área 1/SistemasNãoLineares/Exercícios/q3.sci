// A partir da expressão para propagação de erros, determine o valor 
// aproximado da incerteza em f dado que x = 2.12 +- 0.08 e
// y = 1.8715 +- 0.0078. Considere que x e y são descorrelacionadas.

function z = f(x, y)
    z = x * sin(y^2);
endfunction

function z = dfx(x, y)
    z = sin(y^2);
endfunction

function z = dfy(x, y)
    z = x * cos(y^2) * 2*y ;
endfunction

x = 2.12; y = 1.8715;
erro_x = 0.08; erro_y = 0.0078;

valor_incerteza = sqrt(erro_x^2 * dfx(x, y)^2 + erro_y^2 * dfy(x, y)^2)

disp(valor_incerteza)
