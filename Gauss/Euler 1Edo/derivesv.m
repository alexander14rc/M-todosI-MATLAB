function [dydx] = derivesv(x,y,f)
f = inline(f);
dydx = f(x,y) ;
end