function  dx = odeRK41edo(t,x)
u = x(1);
%v = x(2);
%dx = [-2*u+5*exp(-t);-(u*v^2)/2];
dx = -0.000548144*sqrt(u)/(3*u-u^2);
end