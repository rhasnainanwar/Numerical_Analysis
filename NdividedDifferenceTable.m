function table = NdividedDifferenceTable(X,Y)
n = length(X);
table = zeros(n,n); % empty list to store divided difference
table(:,1) = Y';

% constructing table
for i=2:n,
  for j=i:n,
      table(j,i) = (table(j,i-1)-table(j-1,i-1))/(X(j)-X(j-i+1)); % applying algorithm
  end
end