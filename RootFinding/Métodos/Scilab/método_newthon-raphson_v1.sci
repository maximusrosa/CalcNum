clear
clc
mode(0)

// quanto menor for phi_linha(x), menos iterações serão necessárias

function [r,fr,num_itr] = fsolve_nr(x0,%fun,%dfun,tol,max_itr) 
///////////////////////////
// Método Newton-Raphson.//
///////////////////////////

// Variáveis de entrada.

// x0       -> aproximação inicial.
// %fun     -> função.
// %dfun    -> derivada da função.
// tol      -> tolerância na diferença relativa entre duas aproximações 
// consecutivas.
// max_itr      -> limite superior para o número de iteradas.

// Variáveis de saída.

// r        -> solução aproximada.
// fr       -> valor de %fun em r.
// num_itr    -> número de iteradas.

// Variáveis auxiliares.

// f0       -> valor da função f e em x0.
// df0      -> valor da derivada de f em x0.
// x1       -> aproximação na iterada seguinte.
// abs_dif  -> diferença absoluta entre duas aproximações consecutivas.
// segue    -> variável booliana. Controla o fluxo de execução das iteradas.
// cr_conv  -> variável booliana. É igual a %T se ocorrer convergência. 

// Inicialização das variáveis auxiliares.

f0       = %fun(x0)
df0      = %dfun(x0)
num_itr = 0
cr_conv  = %F

// Caso não tenha sido definida na chamada da função, a 
// tolerância recebe o valor 1e-10.

if ~isdef('tol','local') then
    tol = 1e-10
end

// Caso não tenha sido definida na chamada da função, a 
// max_itr recebe o valor 100.

if ~isdef('max_itr','local') then
    max_itr = 100
end

// Checagem inicial.

segue    = %dfun(x0)<>0
if ~segue then
    warning('A derivada vale zero.')
    warning('Não é possível continuar.')
end

// Laço principal.

while segue
    num_itr = num_itr + 1
    x1 = x0 - f0/df0

    abs_dif = abs(x1-x0)
    x0      = x1
    f0      = %fun(x0)
    df0     = %dfun(x0)
    cr_conv = (abs_dif<=tol*abs(x1)|f0==0)
    segue   = ~(cr_conv|num_itr==max_itr|df0==0)
end

// Saída de dados

// Mensagens de aviso
if (df0 == 0)&(~cr_conv) then
    warning('A aproximação não pôde ser obtida.')
    warning('Verifique as aproximações iniciais ou o condicionamento.')
end
 
if (num_itr == max_itr)&(~cr_conv) then 
    warning(msprintf('\n A tolerância não foi alcançada em %d iterações.',max_itr))
end

r     = x0
fr    = f0

endfunction


// main

function y = f(x) // função da qual queremos encontrar um zero
    y = 600*(1+x)^12+100*(1+x)^7-1000;   
//  y =  x*exp(-x^2);
endfunction

function y = f_linha(x)
    y = 12*600*(1+x)^11+7*100*(1+x)^6;   
//  y = exp(-x^2)*(1-2*x^2);
endfunction

x_inicial = 0.01;
fsolve_nr(x_inicial,f,f_linha)
