function a = Approximate(f, n)
    function r = Approximator(g, alpha, n, y)
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

