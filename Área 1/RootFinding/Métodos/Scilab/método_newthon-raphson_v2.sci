clear
clc
mode(0)

function xEstrela = metodo_nr(x0,funcao,derivada)
    x_atual = x0;
    erro = 1;
    erroY = 1;
    eps = 1e-6; // condição de parada
    epsY = 1e-8; // tolerância no valor de f(x)
    num_itr = 0; // contador de iterações
    max_itr = 100;  // máximo de iterações
    
    while ((erro > eps) & (erroY > epsY) & (num_itr < max_itr))
        x_prox = x_atual - funcao(x_atual) / derivada(x_atual)
        erro = abs(x_prox-x_atual);
        erroY = abs(funcao(x_prox));
        x_atual = x_prox;
        num_itr = num_itr+1;
    end

    if (num_itr == max_itr)
        disp("O método não convergiu. Troque o chute inicial")
        xEstrela = [];
    else
        disp(x_prox,"A solução é")
        xEstrela = x_prox;
        disp(num_itr,"Número de iterações:")
    end
endfunction


// main

function y = f(x) // função da qual queremos encontrar um zero
    y = 600*(1+x)^12+100*(1+x)^7-1000;   
//    y =  x*exp(-x^2);
endfunction

function y = f_linha(x)
    y = 12*600*(1+x)^11+7*100*(1+x)^6;   
//  y = exp(-x^2)*(1-2*x^2);
endfunction

x_inicial = 0.01;
metodo_nr(x_inicial,f,f_linha)
