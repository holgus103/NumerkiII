function res = CalculateSquare(x, y, meshValues, A, dx, dy)
    xSquare = floor((x - A(1,1)) / 2 / dx);
    ySquare = floor((y - A(1,2)) / 2 /dy);
    x0 = A(1,1) + xSquare * 2 * dx;
    y1 = A(1,2) + ySquare * 2 * dy;
    x2 = x0 + dx;
    y2 = y1 + dy;
    x1 = x2 + dx;
    y0 = y2 + dy;
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
    
    % array of function handles
    l = {@l0; @l2; @l0};
    g = {@g0; @g2; @g1};
    values = zeros(3,3);
    for i = 1:3
        for j = 1:3
            values(i, j) = meshValues(2*ySquare + i, 2*xSquare + j);
        end
    end
    
    sum = 0;
    for i = 1:3
        for j = 1:3
            lo = l{i};
            go = g{j};
            sum = sum + values(i, j)*lo(x)*go(y);
        end
    end
    res = sum;
end

