function Integral = Integrate(f,n)
% Calculates the intergral over the region:
% {x, y: -1 <= x <= 1, -1 <= y <= 1} \ {(x, y) in R: |x| + |y| <= 1}
% Parameters:
% f - Function to be integrated
% n - Parameter of the function calculating the number of triangles
% Returns:
% Intagral - Integral value
    t = [
            -1  1
             0  1
            -1  0 % upper left
             1  1
             1  0
             0  1 % upper right
            -1 -1
            -1  0
             0 -1 % lower left
             1 -1
             0 -1
             1, 0 % lower right
         ];
     val = 0;
     for i = 1:4
        % split main triangle
        triangles = SplitIntoTriangles(...
            t((i - 1) * 3 + 1, 1:2), ...
            t((i - 1) * 3 + 2, 1:2), ...
            t((i - 1) * 3 + 3, 1:2), ...
            n);
        % for each subtriangle
        for j = 1:size(triangles, 1)
            % evaluate integral
            val = val + ...
            EvaluateTriangle(...
                triangles(j, 1, :), ...
                triangles(j, 2, :), ...
                triangles(j, 3, :), ...
                f);
        end             
     end
     Integral = val;  
end

