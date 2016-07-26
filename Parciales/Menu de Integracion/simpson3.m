function [h, p] = simpson3( f,a,b,n)
%el nombre de la funcion como string
%n:numero de segmentos (multiplo de dos)
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
    if rem(i,2)==1
        suma=suma+2*y(i);
    else
        suma=suma+4*y(i);
    end 
end
p=h*(y(1)+suma+y(n))/3;
end