function [ I ] = Simp13m( a,b,n,f )
f=inline(f);
if rem(n,2)==0
    h=(b-a)/n;
    s=f(a);
    for i=1:n-1
        if rem(i,2)==0
            s=s+2*f(a+i*h);
        else
            s=s+4*f(a+i*h);
        end
    end
    s=s+f(b);
    I=(h*s)/3;
else
    I='';
end
end