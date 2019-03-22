X = [-0.1, 0.0, 0.2, 0.3];
Y = [5.3, 2.0, 3.19, 1.0];

dTable = NdividedDifferenceTable(X,Y);
dTable
poly1 = nthDegPoly(dTable, X, 1);
poly2 = nthDegPoly(dTable, X, 2);
poly3 = nthDegPoly(dTable, X, 3);


syms x;
fprintf('Polynomial of degree 1: %s\n', poly2sym(poly1, x));
fprintf('Value at 0.1 is: %.3f\n', polyval(poly1, 0.1));
fprintf('\nPolynomial of degree 2: %s\n', poly2sym(poly2, x));
fprintf('Value at 0.1 is: %.3f\n', polyval(poly2, 0.1));
fprintf('\nPolynomial of degree 3: %s\n', poly2sym(poly3, x));
fprintf('Value at 0.1 is: %.3f\n', polyval(poly3, 0.1));