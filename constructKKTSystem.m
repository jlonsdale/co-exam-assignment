function [K,d] = constructKKTSystem(H,g,A,b)

    %   Inputs:
    %   H: n-by-n symmetric matrix of quadratic coefficients
    %   g: n-by-1 column vector of linear coefficients
    %   A: m-by-n matrix of linear equality constraints
    %   b: m-by-1 column vector of equality constraint values
    
    [m, ~] = size(A);
    
    K = [H, -A'; -A, zeros(m, m)];
    d = [-g; -b];

end