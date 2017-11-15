function triangles = SplitIntoTriangles(A, B, C, n)
    triangles = zeros(n*n, 3);
    triangles(:, :, 2) = zeros(n*n, 3);
    ca = C - A;
    ba = B - A;
    cb = C - B;
    dca = ca / n;
    dba = ba / n;
    dcb = cb / n;
    current = A;
    currentLine = A;
    ending = B;
    i = 1;
    while i <= (n*n)
        triangles(i, 1, 1:2) = current;        
        triangles(i, 2, 1:2) = current + dba;
        triangles(i, 3, 1:2) = current + dca;
        current = current + dba;
        i = i +1;
        if(i > n * n)
            break;
        end
        if(current == ending)
            ending = ending + dcb;
            current = currentLine + dca;
            currentLine = current;
        else
            triangles(i, 1, 1:2) = current;        
            triangles(i, 2, 1:2) = current - dba + dca; 
            triangles(i, 3, 1:2) = current + dca;
            i = i + 1;
        end
        
    end
    
    
end

