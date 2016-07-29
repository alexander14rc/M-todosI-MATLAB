function [k] = derivesRK4con1EDO(x,y,f1)
f1 = inline(f1);
%f2 = inline(f2);
y1 = y(1);
%y2 = y(2);
dy1 = f1(x,y1) ;
%dy2 = f2(x,y1,y2);
k = [dy1];
end