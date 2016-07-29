function [x,I,Ea,crit] = fsecante( f,x0,x1,Eps,Eps1,imax )
f=inline(f); %p=R*T/(v-b)-a/(v*(v+b)*sqrt(T))
I=1;
while I<imax
    x=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
    Ea=abs(x-x1);
    if abs(x-x1)<Eps
        crit=('Criterio por convergencia');
        break
    elseif abs(f(x))<Eps1
        crit=('Criterio por exactitud');
        break
    end
    x0=x1;
    x1=x;
    I=I+I;
end
if I>imax
    x='La raiz no converge ';
    I;
    Ea=' ';
    crit='';
    %break
end

end