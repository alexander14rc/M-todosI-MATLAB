function r=trapeq(f,a,b,n)
f=inline(f);
h=(b-a)/n;
x=a;
s=f(x);
for i=1:n-1
    x=x+h;
    s=s+2*f(x);
end
s=s+f(b);
r=((b-a)*s)/(2*n);
end
