n = 5;
res = Interpolate([0,1],[1,1],[1,0],[0,0], n, 'sin(x)/y');
res(:,:,3) = zeros(n,n);
res(:,:,4) = zeros(n,n);
for i = 1:n
    for j = 1:n
        % error
        res(i,j,3) = res(i,j,2) - res(i,j,1);
        res(i,j,4) = res(i,j,3) / res(i,j,2);
    end
end
