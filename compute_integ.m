function work = compute_integ(x, f, method)
n = length(x);
total = 0;
h = (x(n) - x(1))/n;
total = f(1) + f(n);

if(strcmp(method,'trapedoidal'))
    for i = 2:n-1
        total = total + 2 * f(i);
    end
    work = total/2;
    
elseif(strcmp(method,'simpson1/3'))
    for i = 2:n-1
        if(mod(i,2) == 0)
            total = total + 4 * f(i);
        else
            total = total + 2 * f(i);
        end
    end
    work = total/3;

elseif(strcmp(method,'simpson3/8'))
    for i = 2:n-1
        if(mod(i-1,3) == 0)
            total = total + 2 * f(i);
        else
            total = total + 3 * f(i);
        end
    end
    work = total*3/8;
end

work = work * h;
end