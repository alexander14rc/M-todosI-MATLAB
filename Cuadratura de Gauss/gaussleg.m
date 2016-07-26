function [I,et]= gaussleg( p,Iv,a,b,n )
syms x
syms dx
syms Xd
syms dXd
p=p*dx;
p=inline(p);
x=(b+a)/2 +(b-a)*Xd/2;
dx=((b-a)/2)*dXd;
F=p(dx,x);
F=inline(F);
if n==2
    c0=1;c1=1;x0=-0.577350269;x1=0.577350269;
    I=c0*F(x0,1)+c1*F(x1,1);
end
if n==3
c0=0.5555556;c1=0.8888889;c2=0.5555556;x0=-0.774596669;x1=0;x2=0.774596669;
I=c0*F(x0,1)+c1*F(x1,1)+c2*F(x2,1);
end
p=floor(I*10^6);
p=p*(10^-6);
et=abs((Iv-p)/Iv)*100;
end

