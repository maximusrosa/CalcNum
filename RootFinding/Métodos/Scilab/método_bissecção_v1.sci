clear
clc
mode(0)

function [r,fr,num_itr]= fsolve_bis(%fun,a,b,tol,max_itr)
///////////////////////////
// Método da bissecção   //
///////////////////////////

// Variáveis de entrada

// a       -> extremidade inferior do intervalo.
// b       -> extremidade superior do intervalo.
// %fun     -> função.
// tol      -> tolerância na diferença relativa entre duas aproximações sucessivas.
// max_itr  -> número máximo de iteradas.

// Variáveis de saída

// r        -> solução aroximada.
// fr       -> valor de %fun em r.
// num_itr -> número de iteradas.

// Variáveis auxiliares

// fa       -> valor da função em a.
// fb       -> valor da função em b.
// cont -> conta o número da vezes que o laço principal é executado.
// segue    -> variável booleana que controla a parada.
// cr_conv  -> variável booleana. É igual a %T se ocorrer convergência.
// m       -> ponto intermediário.
// fm       -> valor da função f em x=m.

// Inicialização das variáveis

fa       = %fun(a)
fb       = %fun(b)
cr_conv  = %F
cont = 0


// Caso não tenha sido definida na chamada da função, 
// tol recebe o valor 1e-10.

if ~isdef('tol','local') then
    tol=1e-10
end

// Caso não tenha sido definida na chamada da função,
// max_itr recebe o valor 100.

if ~isdef('max_itr','local') then
    max_itr=100
end


// Checagem inicial

segue = (fa*fb<0)
if ~segue then
// mensagem de aviso: não foi possível utilizar o método.
    error('Não foi possível utilizar o método, cheque os dados de entrada.',42)
end

// Laço principal

while segue
  m=0.5*(a+b)
  fm=%fun(m)

  // Escolha das novas extremidades
  if fm*fa<0 then 
    b=m
    fb=fm
  else         
    a=m
    fa=fm
  end
  
  cont=cont+1
  
  // Teste da convergência
  cr_conv=(fm==0|abs(b-a)<=tol*abs(m))
  
  // Teste para o prosseguimento do laço
  segue=~(cr_conv|cont==max_itr)
end

// Saída de dados

// mensagem de aviso: tolerância não satisfeita.
if (cont==max_itr)&(~cr_conv) then 
    warning(msprintf('A tolerância não foi satisfeita em %d iteracoes.',max_itr))
end

r = m
fr = fm
num_itr = cont

endfunction

// main

function y = f1(x)
    y = -1/(x^2-x-2)
endfunction

//xdata = linspace (1 , 10 , 50 );

//plot(xdata, f1(xdata));

[xEstrela, f_xEstrela, total_itr] = fsolve_bis(f1, 0, 2);




