function gram = GenerateGramMatrix(n)
% Creates a Gram Matrix for value n
% Parameters:
% n - Matrix size 
% Returns:
% gram - Gram matrix
gram = zeros(n+1);
for i=1:(n+1)
    gram(i,i) = 2/(2*(i-1) + 1);
end

