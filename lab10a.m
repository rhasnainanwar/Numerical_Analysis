T = [0 25 50 75 100 125];
X = [0 32 58 78 92 100];

h = T(2) - T(1);

% for t = 25, two point forward
t = 25;
index = find(T == t);
fprintf('Using two point foward difference formula:\n')
fprintf('Velocity at %.3f is %.3f\n\n', t, (X(index+1)-X(index))/h);

% for t = 50, three point central
t = 50;
index = find(T == t);
fprintf('Using three point central difference formula:\n')
fprintf('Velocity at %.3f is %.3f\n\n', t, (X(index+1)-X(index-1))/(2*h));

% for t = 125, three point backward
t = 125;
index = find(T == t);
fprintf('Using three point backward difference formula:\n')
fprintf('Velocity at %.3f is %.3f\n\n', t, (3*X(index) + X(index-2)- 4*X(index-1))/(2*h));