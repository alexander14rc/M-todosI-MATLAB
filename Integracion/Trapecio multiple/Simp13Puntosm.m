function [ I ] = Simp13Puntosm( x,y )
n=length(x);
A=zeros(n);
s=A(1,:);
if rem(n,2)==0
    I='';
else
    for i=1:2:n-2
        s(i) = ((x(i+2)-x(i))/6)*(y(i)+4*y(i+1)+y(i+2));
    end
    
    I=sum(s);
end
end

