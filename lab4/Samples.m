% unprecise result
t = GenerateTable(@(x) x^2, 1, 4);
% precise result
t = GenerateTable(@(x) x^2, 4, 4);
% itegration error causes unexpected results
t = GenerateTable(@(x) x^2, 7, 4);