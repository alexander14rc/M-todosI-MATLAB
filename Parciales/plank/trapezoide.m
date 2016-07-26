function [ p ] = trapezoide(f,a,b,n)
%[P]=trapezoide('exp2',0,1,10)
h=(b-a)/n;
n=n+1;
y=zeros(n,1);
x=zeros(n,1);
suma=0;
for i=1:n
    x(i)=a+h*(i-1);
    y(i)=feval(f,x(i));
end
for i=2:n-1
    suma=suma+y(i);
end
p=0.5*h*(y(1)+2*suma+y(n));
end