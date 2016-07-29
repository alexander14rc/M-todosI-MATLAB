%Programa principal de Runge-Kutta 1 EDo almacenado vectorialmente
clear all
disp(' RK4 una EDO :');
f1=input('La EDO  Dy1Dx=','s'); %0*x-0.000548144*sqrt(y1)/(3*y1-y1^2)
y0=input('Valor incial de la variable dependientes y0='); %2.75
xi=input('Variable incial independiente xi='); %0
xf=input('Varible final varible independinte xf='); %40
dx=input('Tamaño de paso:'); %0.5
tic
%evitar una división entre cero.
%if xi==0
%   xi=xi+0.00001;
%    xf=xf+0.00001;
%end
n = 1 ;
A=zeros(1000);
xp=A(1,:);
yp=A(n,:);
x = xi;
m = 1;
xp(m) = x;
for i = 1:n
    yp(i,m) = y0(i);
    y(i) = y0(i);
end
while (x<xf)
    xend = x + dx;
    if xend > xf
        xend = xf;
    end
    h = dx;
    [x,y] = integradorRK4con1EDO(x,y,n,h,xend,f1);
    m = m +1;
    xp(m) = x;
    for i = 1:n
        yp(i,m) = y(i);
    end
end
%OdeFunction
tspan = 0:dx:xf;
x0=y0;
[tsol,xsol]=ode45(@odeRK41edo,tspan,x0);
%FindeOdeFunction
fprintf('\n X          Yverdadera    YRK4   ')
for j = 1:m
        fprintf('\n %3.5f %10.5f  %10.5f \n ',xp(j),xsol(j),yp(1,j))
end
toc