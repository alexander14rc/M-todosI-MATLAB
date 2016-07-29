function [x, y] = integradorRK4con1EDO(x,y,n,h,xend,f1) %[x, y] = integradorRK4con1EDO(x,y,n,h,xend,f1)
while x < xend
    if xend - x < h
        h = xend - x;
    end
    [x,y] = RK4con1EDO(x,y,n,h,f1) ; %[x,y] = RK4con1EDO(x,y,n,h,f1) ;
end
end
