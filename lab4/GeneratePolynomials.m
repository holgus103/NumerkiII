function g = GeneratePolynomials(n)
    g0 = @(x) 1;
    g1 = @(x) x;
    g{1} = g0;
    if(n == 0)
        return;
    else
        g{2} = g1;
        
        for i = 2:n
            g{i+1} = @(x) (2*(i-1)+1)/((i-1) + 1) *x*g{i}(x) - (i-1) /(i) * g{i - 1}(x);
        end
    end
    

    
end

