function S = Integrate(a, b, f)
% Integrates function from a to b
% Parameters:
% a - X starting value
% b - X final value 
% f - Intergrated function handle
% Returns:
% a - Integral value from a to b
X(4) = 0.861136311594053;
X(3) = 0.339981043584856;
X(2) = -X(3);
X(1) = -X(4);

A(3) = 0.652145154862546;
A(2) = A(3);
A(1) = 0.347854845137454; 
A(4) = A(1);


A = (A.*(b-a))./2;
X = ((b-a).* X+(b+a))./2;


S = 0;
for j = 1:4
    x = X(j);
    S = S + A(j) * f(x);  
end
    
end
