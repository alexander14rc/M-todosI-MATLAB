function [x, ynew] = eulerv(x,y,h,f)
dydx = derivesv(x,y,f);
ynew = y + dydx*h;
x = x + h;
end
