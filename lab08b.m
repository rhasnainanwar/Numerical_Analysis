X = [0.1, 0.3, 0.5, 0.7, 0.9, 1.1, 1.3];
Y = [0.003, 0.067, 0.148, 0.248, 0.370, 0.518, 0.698];

diffTable = NforwardDifferenceTable(X,Y);
diffTable
nthDegFowardPoly(diffTable(1,:), X(1), X(2)-X(1), 6, 0.213);