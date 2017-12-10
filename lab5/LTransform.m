function A = LTransform(A, x, n)
    L1 = eye(n);
    [val, k] = max(x);
    x(k) = x(1);
    x(1) = val;
    L1(2:n, 1) = -x(2:n) ./ x(1);
    L1inv = eye(n);
    L1inv(2:n, 1) = x(2:n) ./ x(1);
    A =  L1  * A * L1inv; 
end

