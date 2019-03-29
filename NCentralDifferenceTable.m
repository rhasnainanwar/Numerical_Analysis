function table = NCentralDifferenceTable(X,Y)
n = length(X);
table = zeros(n,n); % empty list to store divided difference
table(:,1) = Y';

% constructing table
for i=2:n,
  for j=1:n-i+1,
      table(j,i) = table(j+1,i-1) - table(j,i-1);
  end
end