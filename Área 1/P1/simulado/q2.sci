///////////////////////// INICIALIZAÇÃO  /////////////////////////////

//clear  
clc         // limpa o console
mode(0)     // notação de ponto flutuante em decimal

//////////////////////////////////////////////////////////////////////


//Considere o sistema de equações lineares da forma Ax = b onde a matriz A
// possui a seguinte estrutura: A(1,:)=[3,0,0,3], A(2,:)=[1,5,1,1], A(3,:)=[2,0,-4,1] e A(4,:)=[-1,-1,5,-8]
// Utilize o método de Gauss-Seidel e determine a aproximação para x3
// obtida após 4 iterações do método partindo da aproximação inicial x=[0;0;0;0] quando b=[1;3;-3;1].


A = [3,0,0,3; ..
     1,5,1,1;  ..
     2,0,-4,1; ..
    -1,-1,5,-8];

x = [0;0;0;0];

b = [1;3;-3;1]; 

sol = gseidel([A,b], x, 1e-10, 4);

sol(3)
