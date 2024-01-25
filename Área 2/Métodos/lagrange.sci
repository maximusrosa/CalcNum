function y = L(px,idx,x)
    n = length(px)
    y1 = 1
    y2 = 1
    for i = 1:(idx-1)
        y1 = y1*(x-px(i))
        y2 = y2*(px(idx)-px(i))
    end
    for i = (idx+1):n
        y1 = y1*(x-px(i))
        y2 = y2*(px(idx)-px(i))
    end
    y = y1/y2
endfunction

function y = lagrange(px,py,x)
    n = length(px)
    y = 0
    for i = 1:n
        y = y+(py(i)*L(px,i,x))
    end
endfunction

/*
function y = L(xi,x,k)
    n = length(xi)
    y1 = 1
    y2 = 1
    for i = 1:(k-1)
        y1 = y1*(x-xi(i))
        y2 = y2*(xi(k)-xi(i))
    end
    for i = (k+1):n
        y1 = y1*(x-xi(i))
        y2 = y2*(xi(k)-xi(i))
    end
    y = y1/y2   
endfunction

function y = lagrange(xi,yi,x)
    n = length(xi)
    y = 0
    for i = 1:n
        y = y+(yi(i)*L(xi,x,i))
    end                                         
endfunction
*/

px = [10 15 20 25 30 35]
py = [105 172 253 352 473 619]

y = lagrange(px,py,12)
disp(y)

y = lagrange(px,py,22)
disp(y)

y = lagrange(px,py,31)
disp(y)

y = lagrange(px,py,10)
disp(y)

px = [250 330 412 485 617]
py = [5720 5260 4450 2780 1506]

y = lagrange(px,py,380)
disp(y)
