function [a] = interpolacao(x, y)
    for i = 1:length(y)
        for j = 1:length(x)
            X(i, j) = x(i)^(j-1);
        end
    end
    a = inv(X)*y';
endfunction
