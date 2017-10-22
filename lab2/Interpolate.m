function res = Interpolate(A, B, C, D, n, f)
    [ul, ur, ll, lr] = DivideIntoSquares(A, B, C, D, n);
    res = zeros(n*n, 2);
    % foreach square
    for i = 1 : (n*n)
        % calculate coords
        x0 = ul(i, 1);
        x1 = ur(i, 1);

        y0 = ul(i, 2);
        y1 = ll(i, 2);
        
        % set variables
        x = (x0 + x1)/2;
        y = (y0 + y1)/2;
        
        % calculate fi 
        res(i, 1) = CalculateSquare(x0, x1, y0, y1, x, y, f);
        res(i, 2) = eval(f);
    end
end

