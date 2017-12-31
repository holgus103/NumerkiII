f = @(x, y) x * sqrt(y(1));
g = @(x) (1+0.25*x.^2).^2;
res = Heun(2, 6.5, 10, {f}, [4]);

% 2nd order ode
a = 0;
b = 0.5;
n = 2;
f = {@(x,y) y(2), @(x, y) (11*exp(-x) - 3*y(2) -5*y(1))/2 };
y0 = [7, 13];
res = Heun(a, b, n, f, y0);

% pendulum
k = 0.5;
a = 0;
b = 10;
n = 10;
f = {@(x,y) y(2), @(x, y) k*sin(y(1))};
y0 = [pi/6, 1];
res = Heun(a, b, n, f, y0);

