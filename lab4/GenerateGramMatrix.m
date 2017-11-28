function gram = GenerateGramMatrix(n)
gram = zeros(n+1);
for i=1:(n+1)
    gram(i,i) = 2/(2*(i-1) + 1);
end

