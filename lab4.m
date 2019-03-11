initial = input('Enter initial guess: ');
tolerance = input('Enter tolerance(recommended 0.001): ');

ftn = @(x) x^2 + 3*x + 1;

root = newtonRapston(ftn, initial, tolerance);

fprintf('Root of function %s:\t %s\n', func2str(ftn), root);