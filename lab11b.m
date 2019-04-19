g = 9.8;
m = 68.1;
c = 0.25;

t = 0:0.01:10;
v = sqrt(g*m/c)*tanh(sqrt(g*c/m).*t);

distance = compute_integ(t, v, 'trapedoidal');
fprintf('Distance using Trapedoidal Rule is: %f\n', distance);