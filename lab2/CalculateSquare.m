function res = CalculateSquare(x0, x1, y0, y1, x, y, f)
    
    % nested functions
    function res = l0(x)
        res = (x - x1)*(x - x2)/(x0 - x1)/(x0 - x2);
    end

    function res = l1(x)
        res = (x - x0)*(x - x2)/(x1 - x0)/(x1 - x2);
        end

    function res = l2(x)
        res = (x - x0)*(x - x1)/(x2 - x0)/(x2 - x1);
    end

    function res = g0(y)
        res = (y - y1)*(y - y2)/(y0 - y1)/(y0 - y2);
    end

    function res = g1(y)
        res = (y - y0)*(y - y2)/(y1 - y0)/(y1 - y2);
        end

    function res = g2(y)
        res = (y - y0)*(y - y1)/(y2 - y0)/(y2 - y1);
    end

    % variables
    x2 = (x0 + x1) / 2;
    y2 = (y0 + y1) / 2; 
    
    % array of function handles
    l = {@l0, @l1, @l2};
    g = {@g0; @g1; @g2};
    
    sum = 0;
    for i = 1:3
        for j = 1:3
            lo = l{i};
            go = g{j};
            sum = sum + eval(f)*lo(x)*go(y);
        end
    end
    res = sum;
end

