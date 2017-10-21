function res = GetExtensionVector(m)
% Generates an appropriate vector for the Gram matrix, 
% in such a manner that all variables of the solution are equal to 1.
% Parameters:
% a - Gram matrix for which the extension vector will be calculated
% Returns:
% res - Extension vector
    s = size(m);
    b = zeros(1, s(1));
    for i = 1:s(1)
       b(i) = sum(m(i, 1:s(1)));
    end
    res = b;    
end