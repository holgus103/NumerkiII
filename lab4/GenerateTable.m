function res = GenerateTable(f, n, m)
% Creates matrix with approximated values, actual values and RMS values in
% equally distant points of the range (-1, 1)
% Parameters:
% f - Handle to approximated function
% n - Number of polynomials used for approximation 
% m - Number of points to evaluate 
% Returns:
% res - Table with approximated value, precise value and MSE
    x = linspace(-1,1, 10);
    apx = Approximate(f, n);
    function r = ProcessElement(e)
    % Calculates the approximate value, actual value and the RME in e
    % Parameters:
    % e - Point where the value is approximated
    % Returns:
    % r - Vector containing the values mentioned above
        r = zeros(3,1);
        r(1) = apx(e);
        r(2) = f(e);
        r(3) = (r(1) - r(2)) ^2 / 2;
    end
    res = zeros(3, m);
    for i=1:m
        res(1:3, i) = ProcessElement(x(i));
    end
end

