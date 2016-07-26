function [x, y] = integrador(x,y,h,xend,f)
while x < xend
    if xend - x < h
        h = xend - x;
    end
    [x, ynew] = eulerv(x,y,h,f) ;
    y = ynew;
end
end
