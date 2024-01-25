clear
clc
mode(0)

function y = f(i)
    y = 600*(1+i)^12+100*(1+i)^7-1000;   
endfunction

a = 0;
b = 0.04;
eps = 1e-16;
epsY = 1e-6; // tolerância no valor de f(x)
cont = 0; 

if (f(a)*f(b) > 0)
    error("Não existe raiz nesse intervalo!")
else
    while ((b-a) > eps)
        m = (a+b)/2;
        if (abs(f(m)) < epsY)
            disp('Achou a raiz')
            break;
        elseif (f(a) * f(m)  < 0) 
            b = m;
        else
            // a raiz está na metade da direita
            a = m;
        end
        cont = cont+1;
    end
    xEstrela = (a+b)/2
    cont
end
