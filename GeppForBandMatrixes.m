function res = GeppForBandMatrixes(a, b, p, q)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    d = size(a);
    % check if matrix is a square matrix
    if d(1) ~= d(2)
        fprintf('calculation not possible');
    else
        n = d(1);
        % for every column
        for k = 1:d(1)
            p1 = min(p + q, n - k);
            q1 = min(q, n - k);
            [s, r] = max(a(k:(q1 + 1)), k);
            if s == 0
                break;
            end
            if r ~= k
                for j = k:(k + p1)
                    % swap a elements
                    t = a(r, j);
                    a(r, j) = a(k, j);
                    a(k, j) = t;
                    % swap b elements
                    t = b(r);
                    b(r) = b(p1);
                    b(p1) = t;                    
                end
            end
            for i = (k + 1):(k + q1)
                m = a(i, k)/ a(k, k);
                for j = (k + 1):(k + p1)
                    a(i, j) = a(i, j) - m * a(k,j);
                end
                b(i) = b(i) - m * b(k);
            end
            if a(n,n) == 0
                break;
            end
        end
        x = [];
        for k = n:1
            p1 = min(p + k, n - l);
            sum = 0;
            for j = (k + 1):(k + p1)
                sum = sum + a(k,j) * x(j);
            end
            x(k) = (b(k) - sum)/a(k,k);
        end
    end

    res = 10;
end

