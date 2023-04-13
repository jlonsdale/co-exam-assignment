function [H, g, A, b, C, dl, du, l, u] = randomQPGenerator(n, density)   
    m = n/2;
    M = sprand(n, n, density);
    H = M * M' + 0.001 * eye(n); 
    g = randn(n, 1); % Generate a random vector g  
    % Generate random matrices A and C
    % Create a full rank A matrix
    A = 10*rand(n); 
    A = 0.5*(A+A')+n*eye(n);
    A = A(:,1:m); 
    b = randn(m,1); 
  
    % Generate random upper and lower bounds
    l = -ones(n,1)*2.5;
    u = ones(n,1)*2.5;

    C = sprandn(n, m, 0.15);
    % Generate random upper and lower bounds
    dl = -rand(m,1);
    du = rand(m,1);
end
