figure; hold on
colorstring = 'cbgr';

x = [0.5773502692 -0.5773502692 0 0 0; 0.7745966692 0 -0.7745966692 0 0; 0.8611363116 0.3399810436 -0.3399810436 -0.8611363116 0; 0.9061798459 0.5384693101 0 -0.5384693101 -0.9061798459];
c = [ 1 1 0 0 0; 0.5555555556 0.8888888889 0.5555555556 0 0; 0.3478548451 0.6521451549 0.6521451549 0.3478548451 0; 0.2369268850 0.4786286705 0.5688888889 0.4786286705 0.2369268850];

for n = 2:5
    total = 0;
    for i = 1:n
        total = total + c(n-1,i)*polyval([25 -120 90 2 0.2],x(n-1,i));
    end
    t = x(n-1,:);
    f = polyval([25 -120 90 2 0.2], t(1:n));
    plot(t(1:n), f, 'Color', colorstring(n-1))

    approx(n-1) = total;
end
disp('Using Gaussian Quadrature Rule')
disp(' n       Approximation')
for j = 2:5
    disp(['n = ', num2str(j, '%d'), '    ', num2str(approx(j-1), '%1.10f')])
end