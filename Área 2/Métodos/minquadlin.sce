function a = minquadlin(x, y, n)
    V = ones(length(x), 1);
    for i = 1:n
        V(:,$+1) =  x^i;
    end
    a = inv(V'*V)*V'*y;
endfunction
