from numpy import arange
from matplotlib.pyplot import plot, show, axhline, axvline, grid, xlabel, ylabel

f1 = lambda x: x**3 - 9*x + 5


def main():
    root = my_secant(f1, 0.5, 1)
    print(f"The root is approximately: {root:.12f}")

    print_graph(f1)


def my_secant(f, x0, x1, tol=1e-2):
    # output is an estimation of the root of f
    # using the Newton Raphson method
    # recursive implementation
    if abs(f(x0)) < tol:
        return x0
    else:
        return my_secant(f, x1, x1 - ((f(x1) * (x1 - x0)) / (f(x1) - f(x0))), tol)

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
