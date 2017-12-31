function res = Heun(a, b, n, f, y0)
    
    y = zeros(n+1, size(y0, 2));
    x = zeros(n+1, 1);
    h = (b - a)/ n;
    y(1, :) = y0;
    x(1) = a;
    for i=1:n
        x(i + 1) = x(i) + h;
        args = y(i, :);
        for k = 1:size(y0,2)
            args(k) = args(k) + h * f{k}(x(i), y(i, :));
        end
        for j=1:size(y0,2) 
            y(i + 1, j) = y(i, j) + h/2*(f{j}(x(i), y(i, :)) + f{j}(x(i + 1), args));  
        end
    end
    res = [x y];
end

