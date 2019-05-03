k = 0.06;
h = 0.5;

y0 = 3;

for i = 1:1000
    y1 = y0 + h*(-k*sqrt(y0));
    y0 = y1;
    if (y1 <= 0)
        break
    end
end

time = h*i;
fprintf('Time taken: %.3f minutes.\n', time);