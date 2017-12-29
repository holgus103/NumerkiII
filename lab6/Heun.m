function res = Heun(a, b, n, f, y0)
    y = zeros(n+1, 1);
    x = zeros(n+1, 1);
    h = (b - a)/ n;
    y(1) = y0;
    x(1) = a;
    for i=1:n
        x(i + 1) = x(i) + h;
        fxy = f(x(i), y(i));
        y(i + 1) = y(i) + h/2*(fxy + f(x(i + 1), y(i) +  h * fxy));  
    end
    res(1:n + 1, 1) = x;
    res(1:n + 1, 2) = y;
end

