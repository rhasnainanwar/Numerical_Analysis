x = input('Enter x guess: ');
y = input('Enter y guess: ');
tolerance = input('Enter tolerance(recommended 0.001): ');

ftns = @(x,y) [4*x^2 - 20*x + (1/4)*y^2 + 8, 0.5*x*y^2 + 2*x - 5*y + 8];
%ftns = @(x,y) [x^2 + y^2 - 50, x*y - 25];

roots = newtonRapston2D(ftns, [x y], tolerance);
fprintf('(x, y): ');
disp(roots);