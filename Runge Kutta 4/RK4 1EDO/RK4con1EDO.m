function [x,y] = RK4con1EDO(x,y,n,h,f1) % RK4con1EDO(x,y,n,h,f1)
[k1] = derivesRK4con1EDO(x,y,f1);
for i = 1:n
    ym(i) = y(i) +k1(i)*(h/2);
end
[k2] = derivesRK4con1EDO(x+h/2,ym,f1);
for i = 1:n
    ym(i) = y(i) +k2(i)*(h/2);
end
[k3] = derivesRK4con1EDO(x+h/2,ym,f1);
for i = 1:n
    ye(i) = y(i) +k3(i)*h;
end
[k4] = derivesRK4con1EDO(x+h,ye,f1);
for i = 1:n
    slope(i) = (k1(i)+2*(k2(i)+k3(i))+k4(i))/6;
    y(i)=y(i) + slope(i)*h;
end
x = x + h;
end
