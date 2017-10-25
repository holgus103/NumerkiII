function res = Interpolate(A, B, C, D, n, f)
    [mashValues, dx, dy] = EvaluateMashes(A, B, C, D, n, f);
    res = zeros(n,n);
    res(:,:,2) = zeros(n,n);
    start = A + dy + dx;
    % foreach square
    for i = 1:n
        start(1,1) = A(1,1) + dx(1,1);
        for j = 1:n
            % calculate coords
            x = start(1,1);
            y = start(1,2);

            % calculate fi 
            res(i,j,1) = CalculateSquare(x, y, mashValues, A, dx(1,1), dy(1,2));
            res(i,j,2) = eval(f);
            start = start + 2*dx;
        end
        start = start + 2*dy;
    end
end

