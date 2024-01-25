function [z,fz,niter]=fsolve_nr(x0,%fun,%dfun,tol,Nit)
///////////////////////////
// Método Newton-Raphson.//
///////////////////////////

// Variáveis de entrada

// x0       -> aproximação inicial.
// %fun     -> função.
// %dfun    -> derivada da função (matriz jacobiana).
// tol      -> tolerância na diferença relativa entre duas aproximações 
// consecutivas.
// Nit      -> limite superior para o número de iteradas.

// Variáveis de saída

// z        -> solução aproximada.
// fz       -> valor de %fun em z.
// niter    -> número de iteradas.

// Variáveis auxiliares

// f0       -> valor da função f e em x0.
// df0      -> valor da derivada (matrix jacobiana) de f em x0.
// x1       -> aproximação na iterada seguinte.
// abs_dif  -> diferença absoluta (norma) entre duas aproximações consecutivas.
// contador -> guarda o número de iteradas realizadas.
// segue    -> variável booliana. Controla o fluxo de execução das iteradas.
// cr_conv  -> variável booliana. É igual a %T se ocorrer convergência. 

// Inicialização das variáveis

f0       = %fun(x0)
df0      = %dfun(x0)
contador = 0
cr_conv  = %F

// Caso não tenha sido definida na chamada da função, a 
// tolerância recebe o valor 1e-10.

if ~isdef('tol','local') then
    tol = 1e-10
end

// Caso não tenha sido definida na chamada da função, a 
// Nit recebe o valor 100.

if ~isdef('Nit','local') then
    Nit = 100
end

// Checagem inicial 

segue    = det(%dfun(x0))<>0
if ~segue then
    warning('A derivada (ou a matriz jacobiana) vale zero (é singular).')
    warning('Não é possível continuar.')
end

// Laço principal

while segue
    contador = contador + 1
    x1 = x0 - df0\f0

    abs_dif = norm(x1-x0,'inf')
    x0      = x1
    f0      = %fun(x0)
    df0     = %dfun(x0)
    cr_conv = (abs_dif<=tol*norm(x1,'inf')|norm(f0,'inf')==0)
    segue   = ~(cr_conv|contador==Nit|det(df0)==0)
end

// Saída de dados

// Mensagens de aviso
if (det(df0)==0)&(~cr_conv) then
    warning('A aproximação não pôde ser obtida.')
    warning('Verifique as aproximações iniciais ou o condicionamento.')
end
 
if (contador==Nit)&(~cr_conv) then 
    warning(msprintf('\n A tolerância não foi alcançada em %d iterações.',Nit))
end

z     = x0
fz    = f0
niter = contador

endfunction
