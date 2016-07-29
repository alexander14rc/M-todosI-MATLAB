function [x, y] = integradorRK4con2EDO(x,y,n,h,xend,f1,f2)
while x < xend
    if xend - x < h
        h = xend - x;
    end
    [x,y] = RK4con2EDO(x,y,n,h,f1,f2) ;
end
end
