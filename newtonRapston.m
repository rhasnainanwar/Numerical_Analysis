function [root, error] = newtonRapston(ftn, initial, tol)
x_0 = 0; % previous
x_1 = initial; % current

syms x;
ftn_ = matlabFunction(diff(ftn(x))); % derivative

while 1
    x_0 = x_1;
    x_1 = x_0 - ftn(x_0)/ftn_(x_0); % find next x
    
    if(abs((x_0-x_1)/x_0)<tol) % get error
        break
    end
end
root = x_1;
error = abs((x_0-x_1)/x_0);