% working example
A = [4 1 0; 0 2 1; 0 0 -1];
[l, k] = PowerMethod(A, 0.01);

% working - no dominant eigenvalue
A = [2 0 0; 0 2 0; 0 0 1];
[l, k] = PowerMethod(A, 0.01);

% not working - no dominant value
[l, k] = PowerMethod([1 0; 0 -1], 0.01);

% fast convergence lambda2 / lambda1 = 0.1
A = [4 5; 6 5];
[l, k] = PowerMethod(A, 0.01);

% slow convergence lambda2 / lambda1 = 0.1
A = [-4 10; 7 5];
[l, k] = PowerMethod(A, 0.01);

% not working example
A = [2 1 0; -6 1 -6; -3 1 -1]
[l, k] = PowerMethod(A, 0.01);
