function [ I ] = Simp38m( a,b,n,f )
f=inline(f);
h=(b-a)/n;
s=f(a);
if rem(n,3)==0
    for i=1:3:n-2
        s=s+3*f(a+i*h)+3*f(a+(i+1)*h)+2*f(a+(i+2)*h);
    end
    s=s-f(b);
    I=(3*s*h)/8;
else
    I='';
end
end