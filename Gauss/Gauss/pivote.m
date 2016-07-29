function [a,b,s] = pivote(a,b,s,n,k)
p = k;
big = abs(a(k,k)/s(k));
for v = k+1:n
    t = abs(a(v,k)/s(v));
    if t>big
        big = t;
        p = v;
    end
end
if p ~= k
    for l = k:n
        t = a(p,l);
        a(p,l) = a(k,l);
        a(k,l) = t;
    end
    t = b(p);
    b(p) = b(k);
    b(k) = t;
    t = s(p);
    s(p) = s(k);
    s(k) = t;
end
end


