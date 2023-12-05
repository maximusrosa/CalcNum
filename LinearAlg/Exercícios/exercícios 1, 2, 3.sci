// 1º exercício
A = zeros(7,7)

A(1,2) = 1; A(1,4) = 10
A(2,2) = 1; A(2,6) = 15
A(3,1) = 1; A(3,2) = -1; A(3,7) = -15
A(4,1) = 1; A(4,3) = 30
A(5,1) = 1; A(5,5) = 10
A(6,4) =1; A(6,6) = 1; A(6,7) = 1
A(7,3) = 1; A(7,5) = 1, A(7,7) = -1


b = zeros(7,1)
b(2) = 3
b(5) = 3

x = A\b

// 2º exercício

N = [-2 0 -2 0 2 0 0;..
     0 -1 -1 3 0 0 0;..
     -1 0 0 2 -3 2 0;..
     0 0 0 -1 0 -1 3]
R = [-1.5;-0.91;-1.2;1.6;-0.24;0.88;1.3]

tau = (N*N')\(N*R)
     
// 3 º exercício

n = 500
A = zeros(n,n)

A(1,:) = n:-1:1
for i=2:n-1
    A(i,i-1) = 2; A(i,i) = -4; A(i,i+1) = 3
end
A(n,:) = 1:n

disp(norm(inv(A),2)*norm(A,2)*1e-9)



n=58
A=zeros(n,n)
b=zeros(n,1)
A(1,1)=1;A(1,2)=-1
b(1)=0
for i=2:n-1
    A(i,i-1)=2;A(i,i)=-6;A(i,i+1)=3
    b(i)=sin((i-1)/(n-1)*%pi)
end
A(n,n-2)=-1;A(n,n-1)=3;A(n,n)=1
b(n)=0
x=A\b

disp(norm(x,2))



h=0.0125
n=1/h+1
A=zeros(n,n)
b=zeros(n,1)
xi=linspace(0,1,n)
for i=2:n-1
     A(i,i-1)=2*(2-xi(i))+h
     A(i,i)=-4*(2-xi(i))
     A(i,i+1)=2*(2-xi(i))-h
     b(i)=-2*h^2*sin(xi(i)).^2
end
A(1,1)=1;A(1,5)=-2;A(1,6)=3
b(1)=0
A(n,n)=3;A(n,n-1)=-4;A(n,n-2)=1
b(n)=0
u=A\b
j=0.25*(n-1)+1
disp(u(j))










