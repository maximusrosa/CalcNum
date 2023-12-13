// Definição das equações
function z=feq1(x,y)
    z = -4*x^3 + 3*y^3 -1
endfunction

function z=feq2(x,y)
    z = -6*y^5 + 9*x*y^2
endfunction

x = linspace(-2,2); y=x

// Curvas de nível 0 das equações
contour(x,y,feq1,[0 0])
contour(x,y,feq2,[0 0])
xgrid

// Há uma solução próxima de (-1.16,-1.21)
// Há uma solução próxima de (0.23,0.7)
// Há uma solução próxima de (0.93,1.11)

// Uma delas é o máximo da função f

function z =f(x,y)
    z = - x^4 - y^6 + 3*x*y^3 - x
endfunction

// A partir dos valores de f no ponto,
// observamos que o máximo é próximo de
// (-1.16,-1.21)

x0 = [-1.16;-1.21]

// A função F, que representa o sistema
function z = F(x)
    z(1) = feq1(x(1),x(2))
    z(2) = feq2(x(1),x(2))
endfunction

// A função que retorna a jacobiana de F
function z = J(x)
    z(1,:) = [-12*x(1)^2, 9*x(2)^2]
    z(2,:) = [9*x(2)^2,-30*x(2)^4 + 18*x(1)*x(2)]
endfunction

// Newton-Raphson 
[z,fz,niter]=fsolve_nr(x0,F,J)

mprintf('As coordenadas do máximo são [%.5e;%.5e]\n\n',z(1),z(2))







