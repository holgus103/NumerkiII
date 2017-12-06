% unprecise result
t = GenerateTable(@(x) x^2, 1, 4);
% precise result
t = GenerateTable(@(x) x^2, 4, 4);
% itegration error causes unexpected results
t = GenerateTable(@(x) x^2, 7, 4);

t = GenerateTable(@(x) sin(x)/x, 1, 4);
t = GenerateTable(@(x) sin(x)/x, 5, 4);
t = GenerateTable(@(x) sin(x)/x, 7, 4);

t = GenerateTable(@(x) x^7 + x^3, 14, 4);
t = GenerateTable(@(x) x^7 + x^3, 20, 4);