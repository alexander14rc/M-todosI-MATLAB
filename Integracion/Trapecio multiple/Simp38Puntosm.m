function [ I ] = Simp38Puntosm( x,y )
n=length(x);
A=zeros(n);
s=A(1,:);
if rem(n-1,3)==0
    for i=1:3:n-3
        s(i)= ((x(i+3)-x(i))/8)*(y(i)+3*y(i+1)+3*y(i+2)+y(i+3));
    end
    I=sum(s);
else
    I='';
end
end
