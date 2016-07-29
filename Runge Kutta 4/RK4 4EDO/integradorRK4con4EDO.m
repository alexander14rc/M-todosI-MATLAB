function [x, y] = integradorRK4con4EDO(x,y,n,h,xend,f1,f2,f3,f4)
while x < xend
    if xend - x < h
        h = xend - x;
    end
    [x,y] = RK4con4EDO(x,y,n,h,f1,f2,f3,f4) ;
end
end