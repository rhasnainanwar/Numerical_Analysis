function roots = newtonRapston2D(ftns, initials, tol)

syms x y;
ftn_ = jacobian(ftns, [x,y]);

roots = [2 3];
while 1
    J = subs(ftn_, [x y], initials);
    F = subs(ftns, [x y], initials);
    
    initials = double(initials - (inv(J)*F.').');
    
    F = subs(ftns, [x y], initials);
    
    if(abs(F(1))<tol && abs(F(2))<tol)
        break
    end
end
roots = initials;