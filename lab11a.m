v = [0.5, 2, 3, 4, 6, 8, 10, 11];
p = [336, 294.4, 266.4, 260.8, 260.5, 249.6, 193.6, 165.6];

work = compute_integ(v, p, 'trapedoidal');
fprintf('Work using Trapedoidal Rule is: %f\n', work);

work = compute_integ(v, p, 'simpson1/3');
fprintf('Work using Simpson 1/3 Rule is: %f\n', work);

work = compute_integ(v, p, 'simpson3/8');
fprintf('Work using Simpson 3/8 Rule is: %f\n', work);