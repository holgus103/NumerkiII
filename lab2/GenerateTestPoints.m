function points = GenerateTestPoints(A, B, C, D, n)
% Generates test points in the upper lower part of each subsquare
% Parameters:
% A - Left upper corner of the interpolated square
% B - Right upper corner of the interpolated square
% C - Right lower corner of the interpolated square
% D - Left lower corner of the interpolated square
% n - Number of rows and columns of subsquares
% Returns:
% points - Generated test points
    ab = B - A;
    bc = C - B;
    dx = ab / 2 / n;
    dy = bc / 2 / n;
    points = zeros(n*n, 2);
    % starting point 
    start = A + dy/2 + dx/2;
    % generate points
    for i = 1:n
       start(1,1) = A(1,1) + dx(1,1);
       for j = 1:n
           points((i - 1) * n + j, 1) = start(1,1); 
           points((i - 1) * n + j, 2) = start(1,2); 
            start = start + 2*dx;
       end
       start = start + 2*dy;
    end
end

