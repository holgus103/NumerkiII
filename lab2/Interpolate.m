function [res, maxabs, maxaprox] = Interpolate(A, B, C, D, n, f, points)
% Generates an array of precomputed values in interpolation nodes,
% then evaluates the interpolated and accurate value in all points 
% in the points array. 
% Parameters:
% A - Left upper corner of the interpolated square
% B - Right upper corner of the interpolated square
% C - Right lower corner of the interpolated square
% D - Left lower corner of the interpolated square
% n - Number of rows and columns of subsquares
% f - Interpolated function
% points - Array of precomputed points for interpolation
% Returns:
% res - Comparison of interpolated values in points and errors for each one 
% maxabs - Max absolute error found
% maxaprox - Max aproximation error found 
    [mashValues, dx, dy] = EvaluateMashes(A, B, C, D, n, f);
    res = zeros(n*n, 6);
    l = size(points, 1);
    % foreach square
    for i = 1:l
        % calculate coords
        x = points(i,1);
        y = points(i,2);
        res(i, 1) = x;
        res(i, 2) = y;
        % calculate interpolated value
        res(i, 3) = CalculateSquare(x, y, mashValues, A, dx(1,1), dy(1,2));
        % calculate actual value
        res(i, 4) = eval(f);
        % calculate absolute error
        res(i, 5) = res(i, 3) - res(i, 4);
        % calculate aproximation error
        res(i, 6) = (res(i, 3) - res(i, 4))/res(i, 4);
    end
    maxabs = max(abs(res(:, 5)));
    maxaprox = max(abs(res(:, 6)));
end

