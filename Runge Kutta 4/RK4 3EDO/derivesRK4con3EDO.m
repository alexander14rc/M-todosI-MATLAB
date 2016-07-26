function [k] = derivesRK4con3EDO(x,y,f1,f2,f3)
f1 = inline(f1);
f2 = inline(f2);
f3 = inline(f3);
y1 = y(1);
y2 = y(2);
y3 = y(3);
dy1 = f1(x,y1,y2,y3) ;
dy2 = f2(x,y1,y2,y3);
dy3 = f3(x,y1,y2,y3);
k = [dy1 dy2 dy3];
end