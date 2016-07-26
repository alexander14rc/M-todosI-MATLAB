function [ I ] = Trapm( a,b,n,f )
f=inline(f);
h=(b-a)/n;
s=f(a);
i=a;
for j=1:n-1
    i=i+h;
    s=s+f(i)*2;
end
s=s+f(b);
I=h*s/2;
end
%400*x^5-900*x^4+675*x^3-200*x^2+25*x+0.2
%(9.8*68.1)/12.5*(1-exp(-(12.5/68.1)*x))
%53.3904*(1-exp(-(12.5/68.1)*x))
%53.3904*(1-exp(-0.1836*x))