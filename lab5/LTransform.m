function A = LTransform(A, x, n)
    L1 = eye(n);
    [val, k] = max(x);
    x(k) = x(1);
    x(1) = val;
    p = eye(n);
    p(1, 1) = 0;
    p(k, k) = 0;
    p(1, k) = 1;    
    p(k, 1) = 1;
    L1(2:n, 1) = -x(2:n) ./ x(1);
    L1inv = eye(n);
    L1inv(2:n, 1) = x(2:n) ./ x(1);
    A =  L1 * p * A * p * L1inv; 
end

