// Função que calcula o valor da função objetivo
function y = cal_f(_x)  // 4x - 1.8x^2 + 1.2x^3 - 0.3x^4
    y = 4 * _x - 1.8 * _x ^ 2 + 1.2 * _x ^ 3 - 0.3 * _x ^ 4;
endfunction

// Função que calcula a distância entre os limites superior e inferior
function y = cal_d(_xu, _xl)
    y = R * (_xu - _xl);
endfunction

// Função que verifica se a solução atual atende ao critério de parada
function y = check_e(_xu, _xl, _xopt, _e)
    _ea = (1 - R) * abs((_xu - _xl) / _xopt);  // Calcula o erro relativo percentual aproximado
    disp("Ea = " + string(_ea*100) + " %");  // Exibe o erro relativo percentual aproximado
    if _ea < _e then  // Se o erro for menor que a tolerância especificada
        y = 1;  // Retorna 1, indicando que o critério de parada foi atendido
    else
        y = 0;  // Retorna 0, indicando que o critério de parada não foi atendido
    end
endfunction

// Função que realiza a busca pelo mínimo da função objetivo
function y = search(_xu, _xl, _e, _n)
    _x = [0, 0];  // Inicializa o vetor que armazena os pontos de teste
    _f = [0, 0];  // Inicializa o vetor que armazena os valores da função objetivo nos pontos de teste
    _result = 0;  // Inicializa a variável que armazena o resultado
    for i = 0:_n-1  // Para cada iteração até o número máximo de iterações
        _d = cal_d(_xu, _xl);  // Calcula a distância entre os limites superior e inferior
        _x(1) = _xl + _d;  // Calcula o primeiro ponto de teste
        _x(2) = _xu - _d;  // Calcula o segundo ponto de teste
        _f(1) = cal_f(_x(1));  // Calcula o valor da função objetivo no primeiro ponto de teste
        _f(2) = cal_f(_x(2));  // Calcula o valor da função objetivo no segundo ponto de teste
        if _f(1) > _f(2) then  // Se o valor da função objetivo no primeiro ponto de teste for maior que no segundo
            _xl = _x(2);  // Atualiza o limite inferior
            _result = _x(1);  // Atualiza o resultado
            if check_e(_xu, _xl, _x(1), _e) then  // Se o critério de parada for atendido
                break;  // Interrompe o loop
            end
        else  // Se o valor da função objetivo no segundo ponto de teste for maior ou igual ao do primeiro
            _xu = _x(1);  // Atualiza o limite superior
            _result = _x(2);  // Atualiza o resultado
            if check_e(_xu, _xl, _x(2), _e) then  // Se o critério de parada for atendido
                break;  // Interrompe o loop
            end
        end
        if modulo(i, 1) == 0 then  // Se a iteração atual for um múltiplo de 1
            // Exibe as informações da iteração atual
            disp("Iteration " + string(i) + ": xL = " + string(_xl) + "\t xU = " + string(_xu) + "\t x1 = " + string(_x(1)) + "\t fx1 = " + string(_f(1)) + "\t x2 = " + string(_x(2)) + "\t fx2 = " + string(_f(2)) + "\t d = " + string(_d));
        end
    end
    y = _result;  // Retorna o resultado
endfunction

R = (sqrt(5) - 1) * 0.5;  // Calcula a constante R (razão áurea)

xU = 4;  // Define o limite superior inicial

xL = 2;  // Define o limite inferior inicial

eS = 1 / 100;  // Define a tolerância para o erro relativo percentual aproximado

n = 100;  // Define o número máximo de iterações

// Chama a função de busca para encontrar o mínimo da função objetivo
// dentro dos limites especificados e com a tolerância e o número máximo de iterações definidos
result = search(xU, xL, eS, n);

// Exibe o resultado da busca, incluindo o valor de x que minimiza a função objetivo
// e o valor da função objetivo nesse ponto
disp("x = " + string(result) + ", fx = " + string(cal_f(result)));