%Programa principal de Euler dos EDo almacenado vectorialmente
disp(' Euler EDO una ecuaciòn ');
f1=input('La EDO Número 1 Dy1Dx=','s');
f2=input('La EDO Número 2 Dy2Dx=','s');
y1=input('Variable incial Número 1 dependiente y1=');
y2=input('Variable incial Número 1 dependiente y2=');
xi=input('Variable incial independiente xi=');
xf=input('Varible final varible independinte xf=');
dx=input('Tamaño de paso:');
x=xi;
m=1;
xp(m) = x;
yp1(m) = y1;
yp2(m) = y2;
while (x<xf)
    xend = x + dx;
    if xend > xf
        xend = xf;
    end
    h = dx;
    [x, y1, y2] = integrador2edo(x,y1,y2,h,xend,f1,f2);
    m = m +1;
    xp(m) = x;
    yp1(m) = y1;
    yp2(m) = y2;
end
n = length(yp1);
fprintf('\n X   Y1euler  Y2euler  \n')
for i = 1:n
    fprintf('\n %3.5f %10.5f  %10.5f    \n ',xp(i),yp1(i),yp2(i))
end