function X = TDMA(A, B)
% TDMA (Tridiagonal Matrix Algorithm) implementation to solve the system AX = B
% A - Input tridiagonal coefficient matrix (square matrix)
% B - Input column vector of constants
% X - Output solution column vector

% Check if A is a square matrix
[m, n] = size(A);
if m ~= n
    error('Input matrix A must be square');
end    

% Preallocate memory for the solution vector X
X = zeros(n, 1); 
c = B;  % Copy of B to use for forward elimination

% Extracting the diagonal (d), sub-diagonal (b), and super-diagonal (a)
d = diag(A);           % Main diagonal elements
b = [0; diag(A, -1)];  % Sub-diagonal (below the main diagonal)
a = [diag(A, 1); 0];   % Super-diagonal (above the main diagonal)

% Forward Elimination
for i = 2:n
    factor = b(i) / d(i - 1);  % Compute the factor for elimination
    d(i) = d(i) - factor * a(i - 1);  % Update diagonal elements
    c(i) = c(i) - factor * c(i - 1);  % Update constant vector
end

% Backward Substitution
X(n) = c(n) / d(n);  % Compute the last element of X
for i = n-1:-1:1
    X(i) = (c(i) - a(i) * X(i + 1)) / d(i);  % Compute remaining elements of X
end
end
