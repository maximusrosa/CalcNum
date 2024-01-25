///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear     // Comentado porque não quero limpar as variáveis, pois vou usar o fsolve_bis
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


function y = f(x)
    y = 2*(x - 50)^2 - sin(x + 25);
endfunction


function y = df(x)
    y = 4 * (x - 50) - cos(x + 25);
endfunction


///////////////////////// PARTE GRÁFICA /////////////////////////////

// Plotando a função f(x)
x = linspace(-1000, 1000, 100000);

plot(x, df(x), 'b-', 'LineWidth', 1.25)

// add x-axis
plot([-100, 100], [0, 0], 'k-', 'LineWidth', 1.35)

// add y-axis
plot([0, 0], [-100, 100], 'k-', 'LineWidth', 1.35)

// Add dotted grid lines
xgrid(1);

//////////////////////////////////////////////////////////////////////


xEstrela = fsolve_bis(df,50, 50.5)



