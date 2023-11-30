n = 5
A = zeros(n, n)

A(1,1) = 2
A(n,n) = 2

// miolo
for i = 2: n - 1
    A(i, i-1) = -1; A(i,i+1) = -1; A(i,i) = 2
end

A(1,2) = -1
A(n,n-1) = -1
