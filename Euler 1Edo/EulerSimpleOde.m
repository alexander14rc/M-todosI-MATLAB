%Programa principal de Euler almacenado vectorialmente
clear all
disp(' Euler EDO una ecuaciòn ');
f=input('La EDO DyDx=','s');
y=input('Variable incial variable dependiente y=');
xi=input('Variable incial variable independiente xi=');
xf=input('Varible final varible independinte xf=');
dx=input('Tamaño de paso:');
y0=y;
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
%OdeFunction
tspan = 0:dx:xf;
x0=y0;
[tsol,xsol]=ode45(@odeEuler1edo,tspan,x0);
%FindeOdeFunction
fprintf('\n X          Yverdadera    YRK4   ')
a = length(xsol);
%big = xsol(1);
big = yp(1);
for j = 1:m
    fprintf('\n %3.5f %10.5f  %10.10f \n ',xp(j),xsol(j),yp(j))
    %t = xsol(j);
    t = yp(j);
    if t > big
        big = t;
        p=j;
    end
    
    if j==a
        break
    end
    
    if j >= 2
        if yp(j-1) == yp(j)
            break
        end
    end
end
fprintf('\n El tiempo al llegar su velocidad maxima es: %3.3f \n',xp(p))
fprintf('\n La velocidad maxima es:\n')
fprintf('\n Verdadera: %3.5f \n',xsol(p))
fprintf('\n por Euler: %3.5f \n',yp(p))
plot(xp,yp)
xlabel('Tiempo')
ylabel('Velocidad');
title('Caida del Cuerpo')
toc
