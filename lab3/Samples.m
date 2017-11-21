% Working samples
f = @(x,y) abs(x) + abs(y);
fnc = 'abs(x) + abs(y)';
val = MatlabIntegration(f);
val2 = Integrate(fnc,100);

f = @(x,y) sin(x) + abs(y);
fnc = 'sin(x) + abs(y)';
val = MatlabIntegration(f);
val2 = Integrate(fnc,10);

% Sample with positive and negative integrals
f = @(x,y) sin(x) + sin(y);
fnc = 'sin(x) + sin(y)';
val = MatlabIntegration(f);
val2 = Integrate(fnc,1);

% For n = 10 - more precision
f = @(x,y) (x - 2) + (y -7).^2;
fnc = '(x - 2) + (x - 7)^2';
val = MatlabIntegration(f);
val2 = Integrate(fnc,1);


% For n = 10 - moregit c precision
f = @(x,y) abs(sin(x) + sin(y));
fnc = 'abs(sin(x) + sin(y))';
val = MatlabIntegration(f);
val2 = Integrate(fnc,1);

