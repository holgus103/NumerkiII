function triangles = SplitIntoTriangles(A, B, C, n)
% Splits a triangle into n^2 congruent triangles
% Parameters:
% A - Triangle vertex
% B - Triangle vertex
% C - Triangle vertex
% n - Parameter used for calculating the amount of triangles
% Returns:
% S - Integral value
    triangles = zeros(n*n, 3);
    triangles(:, :, 2) = zeros(n*n, 3);
    ca = C - A;
    ba = B - A;
    dca = ca / n;
    dba = ba / n;
    current = A;
    currentLine = A;
    i = 1;
    currentMax = 2*n - 1;
    currentCount = 0;
    while i <= (n*n)
        triangles(i, 1, 1:2) = current;        
        triangles(i, 2, 1:2) = current + dba;
        triangles(i, 3, 1:2) = current + dca;
        current = current + dba;
        currentCount = currentCount + 1;
        i = i + 1;
        if(i > n * n)
            break;
        end
        if(currentCount >= currentMax)
            currentMax =  currentMax - 2;
            currentCount = 0;
            current = currentLine + dca;
            currentLine = current;
        else
            triangles(i, 1, 1:2) = current;        
            triangles(i, 2, 1:2) = current - dba + dca; 
            triangles(i, 3, 1:2) = current + dca;
            currentCount = currentCount + 1;
            i = i + 1;
        end
        
    end
    
    
end

