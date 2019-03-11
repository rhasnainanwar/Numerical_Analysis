function root = falsePos(ftn, g, x0, x1, tol)
% initial x0, x1 will be used to get the range

n = 1;
syms x
g_ = matlabFunction(diff(g(x))); % derivative

% Error calculation
fmax= @(f, lo, hi) fminbnd(@(x) f(x)*-1, lo, hi);
k = fmax(g_, x0, x1);
absoluteE = abs(x1 - x0);

while 1
    x1 = g(x0);
    fx = ftn(x1);
    
    error = absoluteE*(k^n)/(1-k);
    
    if (fx == 0 || error < tol)
        break
    end
    n = n + 1;
end

root = x1;