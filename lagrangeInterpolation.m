function coefficients = lagrangeInterpolation(x, y)
n = length(x);
sum = 0;
for i=1:n
    p=1;
    for j=1:n
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum = sum + term;
end
coefficients = sum;