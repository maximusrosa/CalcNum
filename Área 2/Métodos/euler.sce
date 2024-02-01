// Função para realizar o método de Euler para resolver uma equação diferencial ordinária de primeira ordem.
// Parâmetros:
//   - y: valor inicial da variável dependente
//   - x: valor inicial da variável independente
//   - x_final: valor final da variável independente
//   - f: função que define a equação diferencial na forma f(x,y), ou seja: dy/dx = f(x,y)
//   - h: tamanho do passo
// Retorno:
//   - y: valor da variável dependente no ponto final x_final
function y = euler(y, x, x_final, f, h)
    n = (x_final - x)/h;
    for i = 1:n
        y = y + h * f(x, y);
        x = x + h;
        
        //printf("x = %.3f, y = %.3f, iteracao = %d\n", x, y, i);
    end
endfunction


////////////////////////////////////// EXEMPLO //////////////////////////////////////

// Obtenha f(x) = y(x) = y(0.2) da função y' = 2 - x + 3y 
// com y(0) = 1, usando o método de Euler com passo h = 0.1

// Ou seja, eu tenho a DERIVADA de y(x) (não a função y)
// e eu quero saber o valor de y(x) em um ponto específico.
 
// y' = f(x,y)
function y_linha = f(x, y) 
    y_linha = 2 - x + 3*y;
endfunction

// y(0) = 1
x0 = 0;
y0 = 1; 

x_final = 0.2; // ponto que eu quero saber o valor de y(x)

h = 0.1; // tamanho do intervalo de cada iteração, ou seja, o "passo" (dado no enunciado)


// O resultado é representado como a solução aproximada de uma equação diferencial em um ponto específico.
disp(euler(y0, x0, x_final, f, h))
