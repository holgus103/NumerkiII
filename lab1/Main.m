% Final test using the Gram matrix from exercise 5.2.2
% Generate matrix from exercise 5.2.2
a = GetGramMatrix(10);
% Generate extension vector so that all x are 1
b = GetExtensionVector(a);
% Solve equations
val = GeppForBandMatrixes(a, b, 3, 3);
% MSE error
mse = MSE(val, ones(1, 22));
% Maximum Approximation Error
mae = max(val - ones(1, 22));
% Display results
disp('Solution:');
disp(val);
disp('Mean Squared Error');
disp(mse);
disp('Maximum Approximation Error');
disp(mae);

