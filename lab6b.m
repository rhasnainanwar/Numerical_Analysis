t = [0:8];
y = [40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];

p = polyfit(t,y,1); 
plot(t, y,'k+');
hold on;
plot(t,polyval(p,t),'r-');
title = sprintf('Best fitted line y=%.2ft + %.2f',p(1),p(2));
legend('Data points',title);

fprintf('Slope:\t%f\n', p(1));
fprintf('Intercept:\t%f\n', p(2));
fprintf('At t = 4.5:\t%f\n', polyval(p,4.5));
fprintf('At t = 8.5:\t%f\n', polyval(p,8.5));