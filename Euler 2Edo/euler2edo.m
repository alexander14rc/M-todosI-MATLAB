function [x, ynew1, ynew2] = euler2edo(x,y1,y2,h,f1,f2)
[dy1dx,dy2dx] = derives2edo(x,y1,y2,f1,f2);
ynew1 = y1 + dy1dx*h;
ynew2 = y2 + dy2dx*h;
x = x + h;
end
