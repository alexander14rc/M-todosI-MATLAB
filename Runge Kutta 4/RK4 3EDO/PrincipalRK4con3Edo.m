%Programa principal de Runge-Kutta dos EDo almacenado vectorialmente
clear all
disp(' RK4 dos EDO :');
f1=input('La EDO Número 1 Dy1Dx=','s');
f2=input('La EDO Número 2 Dy2Dx=','s');
f3=input('La EDO Número 3 Dy3Dx=','s');
y0=input('Valores inciales de las variables dependientes y0=');
xi=input('Variable incial independiente xi=');
xf=input('Varible final varible independinte xf=');
dx=input('Tamaño de paso:');
n = 3 ;
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
    [x,y] = integradorRK4con3EDO(x,y,n,h,xend,f1,f2,f3);
    m = m +1;
    xp(m) = x;
    for i = 1:n
        yp(i,m) = y(i);
    end
end
syms y3
syms y4
syms y5
[f3,f4, f5]=dsolve('Dy3=-0.5*y3+0*y4+0*x','Dy4=4-0.3*y4-0.1*y3+0*x','Dy5=10-0.5*y4+0.25*y3-0.15*y5+0*x','y3(0)=4','y4(0)=6','y5(0)=10','x');
f3=inline(f3);
f4=inline(f4);
f5=inline(f5);
yv3=f3(xp);
yv4=f4(xp);
yv5=f5(xp);
fprintf('\n X          Y1RK4       Y2RK4   Y3RK4  Y3VER   et5 \n')
for j = 1:m
    et=abs((yv5(j)-yp(3,j))/yv5(j))*100;
    fprintf('\n %3.5f %10.5f  %10.5f  %10.5f  %10.5f  %10.5f  \n ',xp(j),yp(1,j),yp(2,j),yp(3,j), yv5(j),et)
end