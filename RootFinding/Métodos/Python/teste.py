from método_bissecção import my_bisection
from método_newton_raphson import my_newton
from numpy import arange
from matplotlib.pyplot import plot, show, axhline, axvline, grid, xlabel, ylabel


f1 = lambda x: -1 / (x**2 - x - 2)

def main():
    xEstrela = my_secant(f1, 0, 2)
    print("Raiz Aproximada:", xEstrela)

    print_graph(f1)
    

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
    

if __name__ == "__main__":
    main()
