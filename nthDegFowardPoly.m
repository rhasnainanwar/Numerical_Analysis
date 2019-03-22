function [] = nthDegFowardPoly(differences, x0, h, n, val)
syms s(x) p(x) f(x);
s(x) = (x - x0)/h;
n = n + 1;
p(x) = differences(1);

for i = 2:n,
    f(x) = 1;
    for j = 0:i-2,
        f(x) = f(x)*(s(x) - j);
    end
    p(x) = p(x) + f(x)*differences(i)/factorial(i-1);
end

fprintf('Polynomial of degree %d: %s\n', n-1, p(x));
fprintf('Value at %0.3f is: %.5f\n',val, p(val));