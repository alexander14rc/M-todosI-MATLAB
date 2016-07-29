function [x, y1, y2] = integrador2edo(x,y1,y2,h,xend,f1,f2)
while x < xend
    if xend - x < h
        h = xend - x;
    end
    [x, ynew1, ynew2] = euler2edo(x,y1,y2,h,f1,f2) ;
    y1 = ynew1;
    y2 = ynew2;
end
end
