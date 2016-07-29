function p= Resorte(x)
%f(x)=u*g+(k/m)*(u*b+x)*(1-b/sqrt(b^2+x^2))
%datos:
%u=0.3
%g=9.81m/s^2
%b=0.4
%k=80 N/m
p=2.943+100*(0.12+x)*(1-0.4/sqrt(0.16+x^2));
end
