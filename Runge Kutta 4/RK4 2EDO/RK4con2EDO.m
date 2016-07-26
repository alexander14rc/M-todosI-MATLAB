function [x,y] = RK4con2EDO(x,y,n,h,f1,f2)
[k1] = derivesRK4con2EDO(x,y,f1,f2);
for i = 1:n
    ym(i) = y(i) +k1(i)*(h/2);
end
[k2] = derivesRK4con2EDO(x+h/2,ym,f1,f2);
for i = 1:n
    ym(i) = y(i) +k2(i)*(h/2);
end
[k3] = derivesRK4con2EDO(x+h/2,ym,f1,f2);
for i = 1:n
    ye(i) = y(i) +k3(i)*h;
end
[k4] = derivesRK4con2EDO(x+h,ye,f1,f2);
for i = 1:n
    slope(i) = (k1(i)+2*(k2(i)+k3(i))+k4(i))/6;
    y(i)=y(i) + slope(i)*h;
end
x = x + h;
end
