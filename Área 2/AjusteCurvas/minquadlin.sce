// Function: minquadlin
// Description: Performs linear least squares fitting using the method of minimum squares.
// Inputs:
//   - x: Vector of x-coordinates of the data points.
//   - y: Vector of y-coordinates of the data points.
//   - n: Degree of the polynomial to fit.
// Output:
//   - a: Coefficients of the polynomial fit.

function a = minquadlin(x, y, n)
    x = x';  // Transpose x
    y = y';  // Transpose y

    // constói a matriz de vandermonde
    for i=1:n+1
        for j=1:n+1
            V (i,j) = sum(x.^(i+j-2));
        end
    end

    // constói o vetor de termos independentes
    for i = 1:n+1
        b(i) = sum(y.*x.^(i-1));
    end

    // resolve o sistema linear
    a = inv(V)*b;

endfunction


