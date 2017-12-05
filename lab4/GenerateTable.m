function res = GenerateTable(f, n, m)
    x = linspace(-1,1, 10);
    apx = Approximate(f, n);
    function r = ProcessElement(e)
        r = zeros(3,1);
        r(1) = apx(e);
        r(2) = f(e);
        r(3) = (r(1) - r(2)) ^2 / 2;
    end
    res = zeros(3, m);
    for i=1:m
        res(1:3, i) = ProcessElement(apx(x(i)));
    end
end

