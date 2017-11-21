function val = MatlabIntegration(f)
% Evaluated the integral over the region:
% {x, y: -1 <= x <= 1, -1 <= y <= 1} \ {(x, y) in R: |x| + |y| <= 1}
% Parameters:
% f - Function to be integrated
% Returns:
% S - Integral value
    val = 0;
    triangleX = [-1, 0, -1];
    triangleY = [1, 1, 0];
    fun = @(x, y) f(x,y) .* inpolygon(x, y, triangleX, triangleY);
    val = val + integral2(fun,-1,1,-1,1);

    triangleX = [0, 1, 1];
    triangleY = [1, 1, 0];
    fun = @(x, y) f(x,y) .* inpolygon(x, y, triangleX, triangleY);
    val = val + integral2(fun,-1,1,-1,1);

    triangleX = [0, 1, 1];
    triangleY = [-1, -1, 0];
    fun = @(x, y) f(x,y) .* inpolygon(x, y, triangleX, triangleY);
    val = val + integral2(fun,-1,1,-1,1);

    triangleX = [-1, 0, -1];
    triangleY = [-1, -1, 0];
    fun = @(x, y) f(x,y) .* inpolygon(x, y, triangleX, triangleY);
    val = val + integral2(fun,-1,1,-1,1);
end

