%Programa principal de Euler almacenado vectorialmente 
clear all
disp(' Euler EDO una ecuaciòn ');
f=input('La EDO DyDx=','s');
y=input('Variable incial variable dependiente y=');
xi=input('Variable incial variable independiente xi=');
xf=input('Varible final varible independinte xf=');
dx=input('Tamaño de paso:');
x=xi;
m=1;
xp(m) = x;
yp(m) = y;
while (x<xf)
    xend = x + dx;
    if xend > xf 
        xend = xf;
    end
    h = dx;
    [x, y] = integrador(x,y,h,xend,f);
    m = m +1;
    xp(m) = x;
    yp(m) = y;
end
fprintf('\n   X        Yeuler  \n')
for i = 1:m
    fprintf('\n %3.5f %10.5f \n ',xp(i),yp(i))
end
    
    