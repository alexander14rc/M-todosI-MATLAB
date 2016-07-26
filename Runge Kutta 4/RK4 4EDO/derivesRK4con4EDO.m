function [k] = derivesRK4con4EDO(x,y,f1,f2,f3,f4)
f1 = inline(f1);
f2 = inline(f2);
f3 = inline(f3);
f4 = inline(f4);
y1 = y(1);
y2 = y(2);
y3 = y(3);
y4 = y(4);
dy1 = f1(x,y1,y2,y3,y4) ;
dy2 = f2(x,y1,y2,y3,y4);
dy3 = f3(x,y1,y2,y3,y4);
dy4 = f4(x,y1,y2,y3,y4);
k = [dy1 dy2 dy3 dy4];
end