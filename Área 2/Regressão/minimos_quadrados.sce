function c = f1(x,y,tipo, grau)
// Variáveis de entrada:
//  x       -> vetor com valores de x
//  y       -> vetor com valores de y
//  tipo    -> tipo do ajuste:
//                      1 -> polinomio de grau p (informar grau)
//                      2 -> exponencial (CUIDADO! a1 = exp(c1))
//                      3 -> potencia (CUIDADO! a1 = exp(c1)))
//  grau    -> grau do polinômio no qual a função será ajustada

// Variáveis de saída:
    //  c   -> vetor com coeficientes do polinomio resultante (a0,a1,a2,...)
    
    
    if ~isdef('tipo','local') then
        tipo = 1
    end
    
    if ~isdef('grau','local') then
        grau = 1
    end
    
    if tipo==2 || tipo == 3 then
        grau = 1
    end
    
    n = size(y,2)
    M(1,1) = n
    if tipo==1 || tipo==2 then
        for k = 1:2*grau
        soma_x = 0
            for i = 1:size(y,2)
                soma_x = soma_x+(x(i).^k)
            end
            for i = 1:grau+1
                for j = 1:grau+1
                    if (j-1)+(i-1) == k then
                        M(j,i) = soma_x
                    end
                end
            end
        end
        
        if tipo==1 then
            for k = 0:grau
                soma_xy = 0
                for i = 1:size(y,2)
                    soma_xy = soma_xy+(y(i).*(x(i).^k))
                end
                b(k+1,1) = soma_xy
            end
        else
            for k = 0:grau
                soma_xy = 0
                for i = 1:size(y,2)
                    soma_xy = soma_xy+(log(y(i)).*(x(i).^k))
                end
                b(k+1,1) = soma_xy
            end
        end
    end
    
    if tipo == 3 then
        for k = 1:2*grau
        soma_x = 0
            for i = 1:size(y,2)
                soma_x = soma_x+(log(x(i)).^k)
            end
            for i = 1:grau+1
                for j = 1:grau+1
                    if (j-1)+(i-1) == k then
                        M(j,i) = soma_x
                    end
                end
            end
        end
        
        for k = 0:grau
            soma_xy = 0
            for i = 1:size(y,2)
                soma_xy = soma_xy+(log(y(i)).*(log(x(i)).^k))
            end
            b(k+1,1) = soma_xy
        end
    end
    
    c=M\b
endfunction

function r = residuo(x,y,a)
    soma = 0
    for i=1:size(a,1)
        soma = soma + a(i)*x^(i-1)
    end
    r = abs(y-soma)
endfunction

a = f1([0, 1, 2, 3, 5, 7, 8, 10],[8, 5, 4, 2, 1, 2, 4, 7], grau = 3)
disp(residuo(5,1,a))
