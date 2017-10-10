function res = GeppForBandMatrixes(a, b, p, q)
% Calculates solutions for a set of linear equatiosn using
% the Gaussian Elimination Algorithm with Parcial Pivoting 
% for Band Matrixes
% Parameters:
% a - Matrix of linear equations
% b - Vector with b values for the equations
% p - Upper bandwidth
% q - Lower bandwidth
% Returns:
% res - Vector of solutions 
    d = size(a);
    % check if matrix is a square matrix
    if d(1) ~= d(2)
        fprintf('calculation not possible');
        res = [0];
    else
        n = d(1);
        % for every column
        for k = 1:(n - 1)
            p1 = min(p + q, n - k);
            q1 = min(q, n - k);
            [s, r] = max(a(k:(q1 + k), k));
            r = k + r - 1;
            if s == 0
                break;
            end
            if r ~= k
                for j = k:(k + p1)
                    % swap a elements
                    t = a(r, j);
                    a(r, j) = a(k, j);
                    a(k, j) = t;                 
                end
                % swap b elements
                t = b(r);
                b(r) = b(k);
                b(k) = t;   
            end
            for i = (k + 1):(k + q1)
                m = a(i, k)/ a(k, k);
                for j = (k +1):(k + p1)
                    a(i, j) = a(i, j) - m * a(k,j);
                end
                b(i) = b(i) - m * b(k);
            end
        end
        if a(n,n) == 0
            res = [0];
        end
        x = zeros(1, n);
        for k = n:-1:1
            p1 = min(p + q, n - k);
            sum = 0;
            for j = (k + 1):(k + p1)
                sum = sum + a(k,j) * x(j);
            end
            x(k) = (b(k) - sum)/a(k,k);
        end
        res = x;
    end
end

