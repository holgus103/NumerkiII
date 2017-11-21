% initialize points
n = 5;
A = [0,1];
B = [1,1];
C = [1,0];
D = [0,0];
% get points
points = GenerateTestPoints(A, B, C, D, n);
[res, maxabs, maxaprox] = Interpolate(A,B,C,D, n, 'sin(x)*y', points);

% initialize points
n = 5;
A = [0,2];
B = [1,2];
C = [1,0];
D = [0,0];
% get points
points = GenerateTestPoints(A, B, C, D, n);
[res, maxabs, maxaprox] = Interpolate(A,B,C,D, n, 'sin(x)*y', points);

% initialize points
n = 5;
A = [-1,1];
B = [1,1];
C = [1,-1];
D = [-1,-1];
% get points
points = GenerateTestPoints(A, B, C, D, n);
[res, maxabs, maxaprox] = Interpolate(A,B,C,D, n, 'x+y', points);

% initialize points
% more precision
n = 50;
A = [-1,1];
B = [1,1];
C = [1,-1];
D = [-1,-1];
% get points
points = GenerateTestPoints(A, B, C, D, n);
[res, maxabs, maxaprox] = Interpolate(A,B,C,D, n, 'x+y', points);


% initialize points
% invalid square
n = 50;
A = [-1,0];
B = [1,1];
C = [1,0];
D = [-1,-1];
% get points
points = GenerateTestPoints(A, B, C, D, n);
[res, maxabs, maxaprox] = Interpolate(A,B,C,D, n, 'x+y', points);

% initialize points
n = 5;
A = [0,1];
B = [1,1];
C = [1,0];
D = [0,0];
% get points
points = GenerateTestPoints(A, B, C, D, n);
[res, maxabs, maxaprox] = Interpolate(A,B,C,D, n, 'sin(x)/y', points);

