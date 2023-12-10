clear
clc
mode(0)

function [r,fr,num_itr] = fsolve_sec(x0,x1,%fun,tol,max_itr)
///////////////////////////
// Método da secante     //
///////////////////////////

// Variáveis de entrada

// x0       -> primeira aproximação.
// x1       -> segunda aproximação.
// %fun     -> função
// tol      -> tolerância na diferença relativa entre duas aproximações 
// sucessivas.
// max_itr     -> limite superior para o número de iteradas.

// Variáveis de saída

// r        -> solução aproximada.
// fr       -> valor de %fun em r.
// num_itr    -> número de iteradas.

// Variáveis auxiliares

// f0       -> valor da função f em x0.
// f1       -> valor da função f em x1.
// x2       -> aproximação na iterada seguinte.
// segue    -> variável booleana. Controla o fluxo de execução das iteradas.
// cr_conv  -> variável booleana. É igual a %T se ocorrer convergência.

// Inicialização das variáveis

f0       = %fun(x0)
f1       = %fun(x1)
num_itr = 0
cr_conv  = %F

// Caso não tenha sido definida na chamada da função, a tolerância recebe o 
// valor 1e-10.

if ~isdef('tol','local') then
    tol = 1e-10
end

// Caso não tenha sido definida na chamada da função, max_itr recebe o valor 100.

if ~isdef('max_itr','local') then
    max_itr = 100
end

// Checagem inicial

segue=(x0<>x1)&(f0<>f1)
if ~segue then
    warning('A aproximação não pôde ser obtida.')
    warning('Verifique as aproximações iniciais ou o condicionamento.')
end

// Laço principal

while segue
    num_itr = num_itr + 1
    x2 = x1 - (x1-x0)/(f1-f0) * f1
    
    x0      = x1
    f0      = f1
    x1      = x2
    f1      = %fun(x2)
    cr_conv = abs(x1-x0)<=tol*abs(x1)|f1==0
    segue   = ~(cr_conv|f0==f1|num_itr==max_itr)
    //disp(x1)
end

// Saída de dados

// mensagem de aviso

if (f0 == f1)&(~cr_conv) then
    warning('Divisão por zero. Verifique o condicionamento.')
end

if (num_itr == max_itr)&(~cr_conv) then 
  warning(msprintf('\nA tolerância não foi alcançada em %d iterações.\n',max_itr))
end

r     = x1
fr    = f1

//disp('xEstrela = ', r)
//disp("Aproximação alcançada: ", fr)

endfunction

