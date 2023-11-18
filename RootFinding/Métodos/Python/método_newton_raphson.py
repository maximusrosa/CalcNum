from numpy import arange
from matplotlib.pyplot import plot, show, axhline, axvline, grid, xlabel, ylabel

f1 = lambda x: x**2 - 3
df1 = lambda x: 2*x


def main():
    root = my_newton(f1, df1, 1.5)
    print(f"The root is approximately: {root:.12f}")

    print_graph(f1)


def my_newton(f, df, x0, tol=1e-6):
    # output is an estimation of the root of f
    # using the Newton Raphson method
    # recursive implementation
    if abs(f(x0)) < tol:
        return x0
    else:
        return my_newton(f, df, x0 - f(x0) / df(x0), tol)

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
