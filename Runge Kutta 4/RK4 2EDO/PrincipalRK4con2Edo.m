%Programa principal de Runge-Kutta dos EDo almacenado vectorialmente
clear all
disp(' RK4 dos EDO :');
f1=input('La EDO Número 1 Dy1Dx=','s');
f2=input('La EDO Número 2 Dy2Dx=','s');
y0=input('Valores inciales de las variables dependientes y0=');
xi=input('Variable incial independiente xi=');
xf=input('Varible final varible independinte xf=');
dx=input('Tamaño de paso:');
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
fprintf('\n X          Y1RK4       Y2RK4  \n')
for j = 1:m
    fprintf('\n %3.5f %10.5f  %10.5f    \n ',xp(j),yp(1,j),yp(2,j))
end