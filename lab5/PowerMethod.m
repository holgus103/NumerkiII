function [eigenvalues,eigenvectors] = PowerMethod(A, e)
    n = size(A, 1);
    eigenvalues = zeros(n, 1);
    eigenvectors = zeros(n, n);
    x = ones(n, 1);
    for i=1:n
        while 1
            x = A * x;
            x = x ./ sqrt(sum(x .* x));
            lambda = ((A * x)' * x) / sqrt(sum(x .* x));
            if(norm((A * x) - (lambda * x)) < e)
                eigenvalues(i) = lambda;
                eigenvectors(i, 1: n) = x;
                % deflation
                A = A - (lambda * (x * x'))/ sqrt(sum(x .* x));
                break;
            end
        end
    end
    
end

