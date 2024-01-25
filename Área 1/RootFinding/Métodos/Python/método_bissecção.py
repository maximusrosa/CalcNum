from numpy import sign, arange
from matplotlib.pyplot import plot, show, axhline, axvline, grid, xlabel, ylabel

f1 = lambda x: sin(-x)

def main():
    xEstrela = my_bisection(f1, 0, 2)
    print("The root is approximately:", xEstrela)

    print_graph(f1)


def my_bisection(f, a, b, tol=1e-10):
    # approximates a root, R, of f bounded 
    # by a and b to within tolerance 
    # | f(m) | < tol with m the midpoint 
    # between a and b Recursive implementation

    # check if a and b bound a root
    if sign(f(a)) == sign(f(b)):
        raise Exception("The scalars a and b do not bound a root")

    # get midpoint
    m = (a + b) / 2

    # stopping condition, report m as root
    if abs(f(m)) < tol:
        return m

    # case where 'm' is an improvement on 'a' (i.e. f(a) * f(m) > 0):
    elif sign(f(a)) == sign(f(m)):
        # make recursive call with a = m
        return my_bisection(f, m, b, tol)

    # case where 'm' is an improvement on 'b' (i.e. f(b) * f(m) > 0):
    elif sign(f(b)) == sign(f(m)):
        # make recursive call with b = m
        return my_bisection(f, a, m, tol)

def bissecao(f, a, b, TOL, N):  
    """
    f - função objetivo
    a - extremo esquerdo do intervalo de inspeção 
    b - extremo direito do intervalo de inspeção 
    TOL - tolerância (critério de parada)
    N - número máximo de iterações
    """

    i = 1  
    fa = f(a)

    while (i <= N):  
        #iteracao da bissecao  
        p = a + (b-a)/2  
        fp = f(p)  
        #condicao de parada  
        if ((fp == 0) or ((b-a)/2 < TOL)):  
            return p  
        #bissecta o intervalo  
        i = i + 1  
        if (fa * fp > 0):  
            a = p  
            fa = fp  
        else:  
            b = p  
 
    raise NameError("Num. max. de iter. excedido!");



def print_graph(f):
    # setting the x - coordinates 
    x = arange(-10, 10, 0.5) 
    # setting the corresponding y - coordinates 
    y = f(x) 
    
    # plotting the points 
    plot(x, y) 

    axhline(y=0, color='black', linewidth=0.85)
    axvline(x=0, color='black', linewidth=0.85)

    grid(True, linewidth=0.85, linestyle='-.')
    
    # Adicionando rótulos aos eixos
    xlabel('Eixo X')
    ylabel('Eixo Y')

    # function to show the plot 
    show() 



if __name__ == '__main__':
    main()
