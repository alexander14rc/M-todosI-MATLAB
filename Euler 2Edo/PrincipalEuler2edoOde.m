%Programa principal de Euler dos EDo almacenado vectorialmente
disp(' Euler EDO dos ecuaciòn ');
f1=input('La EDO Número 1 Dy1Dx=','s');
f2=input('La EDO Número 2 Dy2Dx=','s');
y1=input('Variable incial Número 1 dependiente y1=');
y2=input('Variable incial Número 1 dependiente y2=');
xi=input('Variable incial independiente xi=');
xf=input('Varible final varible independinte xf=');
dx=input('Tamaño de paso:');
tic
y0=[y1 y2];
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
%OdeFunction
tspan = 0:dx:xf;
x0=y0;
[tsol,xsol]=ode45(@odeEuler2edo,tspan,x0);
%FindeOdeFunction
fprintf('\n X        Y1Verdad      Y2Verdad    Y1euler     Y2euler  \n')
for j = 1:m
    fprintf('\n %3.5f %10.5f  %10.5f  %10.5f  %10.5f    \n ',xp(j),xsol(j,1),xsol(j,2),yp1(j),yp2(j))
end
toc
