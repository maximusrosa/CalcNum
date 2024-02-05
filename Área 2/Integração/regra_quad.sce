// O intervalo é de [0; h]
function w = regra_quad(h, nodos)
    A = [];
    b = [];
    for i = 1:length(nodos)
        for j = 1:length(nodos)
            A(i, j) = nodos(j)^(i-1);
        end
        b(i) = h^i/i;
    end
    w = inv(A) * b;
endfunction
