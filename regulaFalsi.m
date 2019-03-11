function root = regulaFalsi(ftn, lo, hi, tol)
prev = 0;
while 1
    fl = ftn(lo);
    fh = ftn(hi);
    p = (hi*fl - lo*fh)/(fl - fh);
    fp = ftn(p);
    
    error = abs(p - prev)/p;
    
    if (fp == 0 || error < tol)
        break
    elseif (~isequal(sign(fl), sign(fp)))
        hi = p;
    elseif(~isequal(sign(fh), sign(fp)))
        lo = hi;
        hi = p;
    end
    prev = p;
end

root = p;