function a = Approximate(f, n)
% Creates a approximator for a function
% Parameters:
% f - Handle to approximated function
% n - Number of polynomials used for approximation 
% Returns:
% a - Approximator handle
    function r = Approximator(g, alpha, n, y)
    % Calculates the approximate value in y
    % Parameters:
    % g - Approximation polynomial handles
    % alpha - Polynomial weights
    % n - Number of polynomials used
    % y - Point where the value is calculated
    % Returns:
    % r - Calculated value
        r = 0;
        for j=1:n
            r =  r + alpha(j) .* g{j}(y);
        end
    end
    g = GeneratePolynomials(n);
    G = GenerateGramMatrix(n-1);
    for i=1:n
            F(i) = Integrate(-1, 1, @(x) g{i}(x) * f(x));
    end
    alpha = G \ F';
    a = @(y) Approximator(g, alpha, n, y); 
end

