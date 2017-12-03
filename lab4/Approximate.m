function res = Approximate(f, y, n)

    g = GeneratePolynomials(n);
    G = GenerateGramMatrix(3);
    for i=1:4
            F(i) = Integrate(-1, 1, @(x) g{i}(x) * f(x));
    end
    alpha = G \ F';
    res = 0;
    for i=1:4
        res =  res + alpha(i) .* g{i}(y);
    end
end

