
// Dada a função f(x) = sin(x), determine a eq y = ax + b da reta
// que passa pelos pontos (x0, f(x0)) e (x1, f(x1)), onde x0 = -pi/2
// e x1 = pi/2. Forneça o valor de a

X = [-1 0 2 3 4]'
Y = [-2 -1 1 2 3]'

a = interpol_newton(X, Y, 1)

disp(p)

