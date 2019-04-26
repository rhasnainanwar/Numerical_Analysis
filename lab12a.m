figure; hold on
colorstring = 'cbgrymk';

for j = 1:7
    n = 2^j;
    x = 0:1/n:2;
    f = polyval([25 -120 90 2 0.2], x);
    plot(x, f, 'Color', colorstring(j))
    
    approx(j) = compute_integ(x, f, 'trapedoidal');
end
disp('Using Trapezoidal Rule')
disp(' n       Approximation')
for j = 1:7
    disp(['n = ', num2str(2^j, '%d'), '    ', num2str(approx(j), '%1.10f')])
end