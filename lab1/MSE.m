function res = MSE(actual, expected)
% Calculates the Mean Squared Error for two vectors
% Parameters:
% actual - Vector values that the error will be calculated for
% expected - Vector with expected values
% Returns:
% res - Error value
    s = max(size(actual));
    sum = 0;
    for i = 1:s
        sum = sum + (actual(i) - expected(i))*(actual(i) - expected(i));
    end
    res = sum/s;
end

