val = 0;
f = @(x,y) abs(x) + abs(y);

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
val