function [ I ] = MesclaIntegral( x,y )
n=length(x);
A=zeros(n-1);
d=A(1,:);
for i=1:n-1
    d(i)=x(i+1)-x(i);
end



end

