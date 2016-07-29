%Programa principal de Runge-Kutta dos EDo almacenado vectorialmente
clear all
disp(' RK4 dos EDO :');
f1=input('La EDO Número 1 Dy1Dx=','s');
f2=input('La EDO Número 2 Dy2Dx=','s');
y0=input('Valores inciales de las variables dependientes y0=');
xi=input('Variable incial independiente xi=');
xf=input('Varible final varible independinte xf=');
dx=input('Tamaño de paso:');
tic
n = 2 ;
x=xi;
m=1;
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
    [x,y] = integradorRK4con2EDO(x,y,n,h,xend,f1,f2);
    m = m +1;
    xp(m) = x;
    for i = 1:n
        yp(i,m) = y(i);
    end
end
%OdeFunction
tspan = 0:dx:xf;
x0=y0;
[tsol,xsol]=ode45(@odeFunction,tspan,x0);
%FindeOdeFunction
fprintf('\n X         Y1Verdad      Y2Verdad    Y1RK4      Y2RK4      Err1    Err2 \n')
for j = 1:m 
    err1 = abs((xsol(j,1)-yp(1,j))/xsol(j,1))*100;
    err2 = abs((xsol(j,2)-yp(2,j))/xsol(j,2))*100;
    fprintf('\n %3.5f %10.7f  %10.7f  %10.7f  %10.7f %10.7f  %10.7f   \n ',xp(j),xsol(j,1),xsol(j,2),yp(1,j),yp(2,j),err1,err2)
end
toc