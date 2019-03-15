% X = [1 3 4 6];
% Y = [-3 0 30 132];
X = [1 2 5];
Y = [1 4 10];
coff = lagrangeInterpolation(X, Y);
syms x;
fprintf('Polynomial is: %s\n', poly2sym(coff, x));
fprintf('Value at 3 is: %f\n', polyval(coff, 3));