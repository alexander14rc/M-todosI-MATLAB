function [yint2, Rna]=IntNewton(x,y,x0)
% Interpolación temperatura:
%El calor especifico Cp del MN3O4 varia con la temperatura de acuerdo a la tabla:
%T(k)  : [280 650 1000 1200 1500 1700]
%Cp(T) :[32.7 45.4 52.15 53.7 52.9 50.3 ]
% x0= 1100
% Ingreso de datos: 
%T(k)  : [280 650 1700 1000 1200] --------[280 650 1700 1000]
%Cp(T) :[32.7 45.4 50.3 52.15 53.7]------- [32.7 45.4 50.3 52.15]

%Dados los datos
% x    : [1 2 3 5 7 8]
% f(x) : [3 6 19 99 291 444]
% x0 = 4
% Calcule f(4) con el uso de polinomios
...de interpolación de Newton
...de órdenes 1 a 4. Elija los puntos base 
...para obtener una buena
...exactitud. ¿Qué indican los resultados 
...en relación con el orden
...del polinomio que se emplea para generar 
...los datos de la tabla?
%Ingreso de datos:
% x    : [1 2 8 3 5]
% f(x) : [3 6 444 19 99]


%clear all
%close all
%clc
%format long
%x=input('vector x:');%[1 4 6 5 3 1.5 2.5 3.5 1.2]
%y=input('vector y:');%[0 1.3862944 1.7917595 1.6094379 1.0986123 0.4054641 0.9162907 1.2527630 0.1823216]
%x0=input('x0:');
n=length(x);
B=zeros(n);
A=zeros(n);
A(:,1)=y;
for j=2:n
    for i=1:(n+1)-j
        A(i,j)=((A(i+1,j-1)-A(i,j-1))/(x(j+i-1)-x(i)));
    end
end
yint=B(1,:);
Ea=B(1,:);
xt=1;
Ea(1)=0;
yint(1)=A(1,1);
for k=2:n
    xt=xt*(x0-x(k-1));
    yint2=yint(k-1)+A(1,k)*xt;
    Ea(k-1)=yint2-yint(k-1);
    yint(k)=yint2;
end

%fprintf('\n El valor interpolado es : %2.6f \n',yint2);
%fprintf('\n Orden    yint(%i)      Ea(k)       x          f(x) \n',x0)
%for p=1:n
%    if p~=n
%        fprintf('\n  %i       %2.7f    %2.7f   %2.7f   %2.7f \n',p-1,yint(p),Ea(p),x(p),y(p))
%    elseif p == n
%        fprintf('\n  %i       %2.7f                 %2.7f   %2.7f \n',p-1,yint(p),x(p),y(p))
%    end
%end
n=length(x)-1;
t=1;
for  k=1:n+1
     t=t*(x0-x(k));
     if k==n
    Rna=A(1,n+1)*t;
    end
end
end
%Rn=abs(Rna);
%fprintf('\n El error de truncamientto: %2.7f\n', Rn)
%fprintf('\n la cuarta primera diferencia dividida finita es: %2.7f \n',A(1,5))

%x: [1 2 3 5 7 8];
%y: [3 6 19 99 291 444]