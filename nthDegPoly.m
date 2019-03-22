function coeff = nthDegPoly(dTable, X, n)
n = n + 1; % coefficients one more than degree

coeff = dTable(n,n);

for i=(n-1):-1:1,
  coeff = conv(coeff,poly(X(i)));
  m = length(coeff);
  coeff(m) = coeff(m) + dTable(i,i);
end