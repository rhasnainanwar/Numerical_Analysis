lower = input('Enter lower guess: ');
upper = input('Enter upper guess: ');
tolerance = input('Enter tolerance(recommended 0.001): ');

ftn = @(x) x - 2 * sin(x^2);
gtn = @(x) 2 * sin(x^2);

root_r = regulaFalsi(ftn, lower, upper, tolerance);
root_f = falsePos(ftn, gtn, lower, upper, tolerance);

fprintf('Root using Regula Falsi:\t%s\n', root_r);
fprintf('Root using False Position:\t%s\n', root_f);