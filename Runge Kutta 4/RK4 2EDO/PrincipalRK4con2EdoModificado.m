%Programa principal de Runge-Kutta dos EDo almacenado vectorialmente
disp(' RK4 dos EDO :');
f1=input('La EDO Número 1 Dy1Dx = ','s'); % -0.5*y1+0*y2+0*x
f2=input('La EDO Número 2 Dy2Dx = ','s'); % 4-0.3*y2-0.1*y1+0*x
y0=input('Valores inciales de las variables dependientes y0 = '); % [4 6]
xi=input('Variable incial independiente xi = '); % 0
xf=input('Varible final varible independinte xf = '); % 2
dx=input('Tamaño de paso:'); % 0.5
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
syms y3
syms y4
%[f3, f4]=dsolve('Dy3=','Dy4= ','y3(0)=','y4(0)=','x');
%[f3, f4]=dsolve('Dy3=y4+0*y3+0*x','Dy4= -0.5*y4-5*y3+0*x','y3(0)=4','y4(0)=0','x');
%[f3, f4]=dsolve('Dy3=-0.5*y3+0*y4+0*x','Dy4= 4-0.3*y4-0.1*y3+0*x','y3(0)=4','y4(0)=6','x');
[f3, f4]=dsolve('Dy3=-2*y3+5*exp(-x)+0*y4','Dy4=-(y3*y4^2)/2 ','y3(0)=2','y4(0)=4','x');
f3=inline(f3);
f4=inline(f4);
yv3=f3(xp);
yv4=f4(xp);
fprintf('\n X      y1verdadero   y2verdadero     Y1RK4       Y2RK4  \n')
for j = 1:m
    fprintf('\n %3.5f %10.5f  %10.5f  %10.5f  %10.5f    \n ',xp(j),yv3(j),yv4(j),yp(1,j),yp(2,j))
end
toc