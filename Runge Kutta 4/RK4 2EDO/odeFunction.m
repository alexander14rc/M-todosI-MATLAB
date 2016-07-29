function  dx = odeFunction(t,x)
u = x(1);
v = x(2);
dx = [-2*u+5*exp(-t);-(u*v^2)/2];
end
