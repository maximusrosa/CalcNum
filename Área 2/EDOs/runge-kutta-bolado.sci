// Runge Kutta 4 pra qualquer numero de equacoes e variaveis

function y = runge_kutta4(f, y0, t0, tf, h)
    t = t0:h:tf;
    y = zeros(length(y0), length(t));
    y(:,1) = y0;
   
    for i = 1:length(t)-1
        k1 = h * f(t(i), y(:,i));
        k2 = h * f(t(i) + h/2, y(:,i) + k1/2);
        k3 = h * f(t(i) + h/2, y(:,i) + k2/2);
        k4 = h * f(t(i) + h, y(:,i) + k3);
        y(:,i+1) = y(:,i) + 1/6 * (k1 + 2*k2 + 2*k3 + k4);
    end
endfunction

function y=access_diff_at(result, start, h, index)
    y = result(round((index - start) / h));
endfunction

function y=f(t, u)
    y = sin(t * (u - 9));
endfunction

start = 0;
h = 0.01;
final = 10;
u_initial = 2.9;

disp(access_diff_at(runge_kutta4(f, u_initial, start, final, h), start, h, 6));