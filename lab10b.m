X = [0.5 0.6 0.7];
Y = [0.4794 0.5646 0.6442];

h = X(2) - X(1);

% for t = 0.6, three point central
x = 0.6;
index = find(X == x);
fprintf('Using three point central difference formula:\n')
fprintf('Second order derivative at %.3f is %.3f\n\n', x, (Y(index+1)+Y(index-1)-2*Y(index))/(h^2));

% error
syms f(x);
f(x) = sin(x);
f4 = diff(f, 4);

t = X(1):0.001:X(3);
upper = max( f4(t) ); % upper bound

error = (h^2)*upper/12;
fprintf('The error is %.5f\n', error);