function [ul, ur, ll, lr] = DivideIntoSquares(A, B, C, D, n)
    
    ab = B - A;
    bc = C - B;
    cd = D - C;
    da = A - D;
    if(abs(ab) ~= abs(bc) ~= abs(cd) ~= abs(da))
        return;
    end
    px = A;
    dx = ab / n;
    dy = bc / n;
    for i=1:n
        px(1, 1) = A(1);
        for j=1:n
            ul((i-1)*n + j, 1 : 2) = px;
            ur((i-1)*n + j, 1 : 2) = px + dx;
            ll((i-1)*n + j, 1 : 2) = px + dy;
            lr((i-1)*n + j, 1 : 2) = px + dx + dy;
            px = px + dx; 
        end
        px = px + dy;
    end
end

