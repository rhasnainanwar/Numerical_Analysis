function [] = nthDegCentralPoly(differences, x0, h, n)
syms s(x) p(x) f(x);
s(x) = (x - x0)/h;
n = n + 1;
p(x) = differences(1,1);

counter = 0;
for i = 2:n,
    elements = nonzeros(differences(:,i));
    l = length(elements);
    if (mod(l,2) == 1),
        mid = elements(int32(l/2));
    else
        mid = (elements(int32(l/2)) + elements(int32(l/2) + 1))/2;
    end
    
    f(x) = s(x);
    if (mod(i,2) == 0),
        j = 1;
        while j <= counter,
            f(x) = f(x) * (s(x)^2 - j^2);
            j = j + 1;
        end
    else
        j = 1;
        while j <= counter,
            f(x) = f(x) * (s(x)^2 - j^2);
            j = j + 1;
        end
        f(x) = f(x) * s(x);
        counter = counter + 1;
    end
    p(x) = p(x) + f(x)*mid/factorial(i-1);
end

fprintf('Polynomial of degree %d: %s\n', n-1, p(x));
fprintf('Value is %.3f\n', p(0.213));