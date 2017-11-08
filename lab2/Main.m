% initialize points
n = 5;
A = [0,1];
B = [1,1];
C = [1,0];
D = [0,0];
% get points
points = GenerateTestPoints(A, B, C, D, n);
[res, maxabs, maxaprox] = Interpolate(A,B,C,D, n, 'sin(x)*y', points);

