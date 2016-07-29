function [ p ] =simpson3(f,a,b,n)
f=inline(f);
h=(b-a)/n;
n=n+1;
A=zeros(n);
y=A(1,:);
x=A(1,:);
for i=1:n
    x(i)=a+h*(i-1);
    y(i)=f(x(i));
end
suma=y(1);
for i=2:n-1
    if rem(i,2)==1
        suma=suma+2*y(i);
    else
        suma=suma+4*y(i);
    end
end
p=h*(suma+y(n))/3;
end