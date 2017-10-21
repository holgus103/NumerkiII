function res = GetGramMatrix(n)
% Generates the Gram matrix specified in exercise 5.2.2
% with a size (2n + 2) x (2n + 2)
% Parameters:
% n - N parameter 
% Returns:
% res - Generated matrix 
    m = zeros([2*n+2, 2*n+2]);
    m(1:2, 1:4) = [156 22 54 -13;
                    22  4 13  -3];
    m((2*n + 1):(2*n + 2), (2*n - 1):(2*n + 2)) = [54 13 156 -22;
                                                  -13 -3 -22   4]; 
    for i = 3:2:(2 * n - 1)
        m(i:(i + 1),(i - 2):(i + 3)) = [54 13 312 0 54 -13;
                                       -13 -3   0 8 13  -3];
    end
    res = m/420/n;
end

