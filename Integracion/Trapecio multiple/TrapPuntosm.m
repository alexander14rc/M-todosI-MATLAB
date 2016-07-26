function [ I ] =TrapPuntosm( x,y)
n=length(x)-1;
s=0;
for i=1:n
    s=(x(i+1)-x(i))*(y(i+1)+y(i))/2+s;
end
I=s;
end

