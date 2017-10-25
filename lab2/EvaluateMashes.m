function [vals, dx, dy] = EvaluateMashes(A, B, C, D, n, f)
    
    ab = B - A;
    bc = C - B;
    cd = D - C;
    da = A - D;
    if(abs(ab) ~= abs(bc) ~= abs(cd) ~= abs(da))
        return;
    end
    px = A;
    dx = ab / 2 / n;
    dy = bc / 2 / n;
    vals = zeros(2*n+1,2*n+1);
    for i=1:(2*n + 1)
        px(1, 1) = A(1);
        for j=1:(2*n + 1)
            x = px(1,1);
            y = px(1,2);
            vals(i, j) = eval(f);
            px = px + dx;
        end
        px = px + dy;
    end
end

