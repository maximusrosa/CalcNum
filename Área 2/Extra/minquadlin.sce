// ESSA PORRA NÃO FUNCIONA PRA p != 2

// Function: minquadlin
// Description: Performs linear least squares fitting using the method of minimum squares.
// Inputs:
//   - X: Vector of X-coordinates of the data points.
//   - Y: Vector of Y-coordinates of the data points.
//   - p: Degree of the polynomial to fit.
// Output:
//   - a: Coefficients of the polYnomial fit.

function a = minquadlin(X, Y, p)
    X = X';  // Transpose X
    Y = Y';  // Transpose Y
    
    n = size(X, 1);
    
    // constói a matriz de vandermonde
    for i=1:p+1
        for j=1:p+1
            V(i,j) = sum(X.^(i+j-p));
        end
    end

    // constói o vetor b
    for i = 1:p+1
        b(i) = sum(Y.*X.^(i-1));
    end

    // resolve o sistema linear
    a = inv(V)*b;

endfunction


