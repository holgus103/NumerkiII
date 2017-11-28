function res = Approximate(f, y)
    g{1} = @(x) 1;
    g{2} = @(x) x;
    g{3} = @(x) (3*x^2 - 1)/2;
    g{4} = @(x) (5*x^3 - 3*x^2)/2;
    
    G = GenerateGramMatrix(3);
    for i=1:4
            F(i) = Integrate(-1, 1, @(x) g{i}(x) * f(x));
    end
    alpha = G \ F';
    res = 0;
    for i=1:4
        res = sum(alpha(i) .* g{i}(y));
    end
end

