function [x,I,Ea,crit] = NewtonRaphson( fx,x0,Eps,Eps1,imax )
%[x,I,Ea,crit] = NewtonRaphson( RedlichKwong,0.002,0.00001,0.00001,50 )
syms x
deriv=diff(fx,x);
f=inline(fx);
df=inline(deriv);
I=1;
while I<imax
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
    if abs(x-x0)<Eps
        crit='metodo por convergencia';
        break
    elseif abs(f(x))<Eps1
        crit='metodo por exactitud';
       
        break
    end
    I=I+1;
    x0=x;
end
if I>imax
    x='La raiz no converge ';
    I;
    Ea=' ';
    crit='';
end

   
