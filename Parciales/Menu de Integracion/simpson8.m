function [h, p] =simpson8( f,a,b,n)
%el nombre de la funcion como string
%n:numero de segmentos
%a:limite inferior
%b:limite superior
%p:integracion
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
    if rem(i-1,3)==0
        suma=suma+2*y(i);
    else
        suma=suma+3*y(i);
    end 
end
p=3*h*(y(1)+suma+y(n))/8;
end
