// Encontre a parábola no formato y = kx + qx^2 que melhor se ajusta aos pontos com coordenadas
// x = 0: 0.1 : 2 e y = exp(x/14) - 1.5.

x = [0:0.1:2]'
y = [exp(x./14) - 1.5;]

//a = minquadlin(x, y, 2) // retorna os coeficientes no formato qx^2 + kx + c 

disp(a)