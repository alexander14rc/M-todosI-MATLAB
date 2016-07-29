function [dy1dx,dy2dx] = derives2edo(x,y1,y2,f1,f2)
f1 = inline(f1);
f2 = inline(f2);
dy1dx = f1(x,y1, y2) ;
dy2dx = f2(x,y1,y2);
end