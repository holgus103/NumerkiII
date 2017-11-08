function [vals, dx, dy] = EvaluateMashes(A, B, C, D, n, f)
% Generates grid of values in interpolation notes.
% Interpolation nodes are corners and middles of subsquare edges
% Parameters:
% A - Left upper corner of the interpolated square
% B - Right upper corner of the interpolated square
% C - Right lower corner of the interpolated square
% D - Left lower corner of the interpolated square
% n - Number of rows and columns of subsquares
% f - Interpolated function
% Returns:
% vals - Array of values in interpolation nodes 
% dx - Horizontal step  
% dy - Vertical step
    ab = B - A;
    bc = C - B;
    cd = D - C;
    da = A - D;
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

