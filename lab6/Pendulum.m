
% pendulum
% angle 30, speed 1
l = 1;
g = 9.81;
k = -g/l;
a = 0;
b = 8;
n = 100;
f = {@(x,y) y(2), @(x, y) k*sin(y(1))};
y0 = [pi/6, 1];
res = Heun(a, b, n, f, y0);
plot(res(:, 1), res(:, 2))

% speed and angle 0
l = 1;
g = 9.81;
k = -g/l;
a = 0;
b = 8;
n = 100;
f = {@(x,y) y(2), @(x, y) k*sin(y(1))};
y0 = [0, 0];
res = Heun(a, b, n, f, y0);
plot(res(:, 1), res(:, 2))


% escapes into infinity for longer calculation
l = 1;
g = 9.81;
k = -g/l;
a = 0;
b = 80;
n = 1000;
f = {@(x,y) y(2), @(x, y) k*sin(y(1))};
y0 = [pi/3, 1];
res = Heun(a, b, n, f, y0);
plot(res(:, 1), res(:, 2))

% escapes into infinity for longer calculation
l = 1;
g = 9.81;
k = -g/l;
a = 0;
b = 80;
n = 1000;
f = {@(x,y) y(2), @(x, y) k*sin(y(1))};
y0 = [pi/30, 1];
res = Heun(a, b, n, f, y0);
plot(res(:, 1), res(:, 2))