h = 0.1;
t = 0:h:3;
y0 = 1;

for i = 2:length(t)
    y1 = y0 + h*(t(i)*sin(t(i))^3);
    y0 = y1;
end

fprintf('Value at %.3f is %.3f\n', t(i), y1);