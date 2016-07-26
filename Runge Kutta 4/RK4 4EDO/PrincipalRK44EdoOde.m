%Programa principal de Runge-Kutta cuatro EDo almacenado vectorialmente
clear all
disp(' RK4 dos EDO :');
f1=input('La EDO Número 1 Dy1Dx=','s');%-0.5*y1+0*y2+y3*0+0*x+0*y4
f2=input('La EDO Número 2 Dy2Dx=','s');%4-0.3*y2-0.1*y1+y3*0+0*x+0*y4
f3=input('La EDO Número 3 Dy3Dx=','s');%10-0.5*y2+0.25*y1-0.15*y3+0*x+0*y4
f4=input('La EDO Número 4 Dy4Dx=','s');%0*x+0*y1+0*y2+0*y3+y4
y0=input('Valores inciales de las variables dependientes y0=');% [4 6 10 1]
xi=input('Variable incial independiente xi=');%0
xf=input('Varible final varible independinte xf=');%4
dx=input('Tamaño de paso:');%0.5
n = 4 ;
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
    [x,y] = integradorRK4con4EDO(x,y,n,h,xend,f1,f2,f3,f4);
    m = m +1;
    xp(m) = x;
    for i = 1:n
        
        yp(i,m) = y(i);
    end
end
%OdeFunction
tspan = 0:dx:xf;
x0=y0;
[tsol,xsol]=ode45(@odeRK44Edo,tspan,x0);
%FindeOdeFunction
a = length(tsol);
fprintf('\n X          Y1verdad   Y2verdad    Y3verdad   Y4verdad      Y1RK4      Y2RK4      Y3RK4     Y4RK4    \n')
for j = 1:m
    fprintf('\n %3.4f %10.4f  %10.4f  %10.4f  %10.4f  %10.4f  %10.4f  %10.4f  %10.4f   \n ',xp(j),xsol(j,1),xsol(j,2),xsol(j,3),xsol(j,3),yp(1,j),yp(2,j),yp(3,j),yp(4,j))
    if j == a
        break
    end
end